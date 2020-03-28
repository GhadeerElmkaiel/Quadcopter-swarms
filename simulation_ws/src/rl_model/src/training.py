#!/usr/bin/python
import rospy
from gazebo_msgs.srv import SetModelState
from gazebo_msgs.msg import ModelState, ModelStates
from nav_msgs.msg import Odometry
from std_srvs.srv import *
from rosgraph_msgs.msg import Clock
from sensor_msgs.msg import Range, Imu
from geometry_msgs.msg import Twist, Vector3Stamped, Vector3
from simulation_control.srv import *
from rl_model.srv import *
import random as rn
import numpy as np
import time
from math import *
import pandas as pd 

Z_MIN = 0.3
Z_MAX = 30
X_MIN = -30
X_MAX = 30
Y_MIN = -30
Y_MAX = 30

MAX_ANG = 0.45

x = y = z = o_x = o_y = o_z = o_w = 0
roll = pitch = yaw = 0

srv_client_reset_model_state = None
srv_client_get_data = None

# The /cmd_vel publisher
cmd_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
gt_pub = rospy.Publisher('/ground_truth/state', Odometry, queue_size=10)

magnatic = np.array([])
imu = np.array([])
old_imu = np.array([])
sonar = 0
state = np.array([])
old_state = np.array([])

x_data = np.array([])
y_data = np.array([])

action = Twist()

# This variable is true when the quad position is reseted, because in this case 
# there is no old state, and this case should be handled differently
first_state = True
iter_step = 0
calc_action_each_ms = 1000
num_of_iter_to_save = 300
nsecs = 0

x_data_columns = ["old_gt_x", "old_gt_y", "old_gt_z", "old_gt_roll", "old_gt_pitch", "old_gt_yaw","gt_x", "gt_y", "gt_z", "gt_roll", "gt_pitch", "gt_yaw", "d_x", "d_y", "d_z", "d_roll", "d_pitch", "d_yaw", "old_ori_x", "old_ori_y", "old_ori_z", "old_ori_w", "old_ang_v_x", "old_ang_v_y", "old_ang_v_z", "old_lin_a_x", "old_lin_a_y", "old_lin_a_z", "ori_x", "ori_y", "ori_z", "ori_w", "ang_v_x", "ang_v_y", "ang_v_z", "lin_a_x", "lin_a_y", "lin_a_z", "mag_x", "mag_y", "mag_z", "sonar"]

y_data_columns = ["lin_x", "lin_y", "lin_z", "ang_x", "ang_y", "ang_z"]

#path = "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/"

########################
# function to generate random action
########################
def generate_random_action():
	global action
	r = rn.random()
	# doing a random selection between 3 situations
	# 1- doing a sellection on the all range
	# 2- doing a small changes to the previous action
	# 3- adding roll and pitch speeds
	if r <0.5:
		action.linear.x = (rn.random()-0.5)*2
		action.linear.y = (rn.random()-0.5)*2
		action.linear.z = (rn.random()-0.5)*2
		action.angular.x = (rn.random()-0.5)*0
		action.angular.y = (rn.random()-0.5)*0
		action.angular.z = (rn.random()-0.5)*2
	elif r<8:
		action.linear.x += (rn.random()-0.5)*0.2
		action.linear.y += (rn.random()-0.5)*0.2
		action.linear.z += (rn.random()-0.5)*0.2
		action.angular.x += (rn.random()-0.5)*0
		action.angular.y += (rn.random()-0.5)*0
		action.angular.z += (rn.random()-0.5)*0.2
	else:
		action.linear.x = (rn.random()-0.5)*2
		action.linear.y = (rn.random()-0.5)*2
		action.linear.z = (rn.random()-0.5)*2
		action.angular.x = (rn.random()-0.5)*1
		action.angular.y = (rn.random()-0.5)*1
		action.angular.z = (rn.random()-0.5)*2
	
	r = rn.random()
	# in 1/4 of the cases a yaw speed will be very small
	if r<0.25:
		action.angular.z = (rn.random()-0.5)*0.2
	
########################
# publishing the action 
########################
def publish_action():
	global cmd_pub
	cmd_pub.publish(action)
	
########################
# calulate the euler values
########################
def getEulerRPY(orientation):
	w = orientation[3]
	x = orientation[0]
	y = orientation[1]
	z = orientation[2]
	roll  = atan2(2.*y*z + 2.*w*x, z*z - y*y - x*x + w*w)
	pitch = asin(2.*x*z - 2.*w*y)
	yaw   = atan2(2.*x*y + 2.*w*z, x*x + w*w - z*z - y*y)
	return roll, pitch, yaw

########################
# function to reset the position of the quadcopter and reinitialize the parameters
########################
def reset_func():
	global nsecs, first_state, state
	
	req = ResetPositionStateRequest()
	req.position.x = X_MAX
	req.position.y = Y_MAX
	req.position.z = Z_MAX
	req.orientation.x = MAX_ANG
	req.orientation.y = MAX_ANG
	req.orientation.z = 360
	req.random_position = True

	resp = srv_client_reset_model_state(req)
	state = resp.new_state
	#gt_pub.publish(resp)
				
	# Turn on the motors of the quadrotor
	rospy.wait_for_service('/engage')
	srv_client_engage_motors = rospy.ServiceProxy('/engage', Empty)
	resp_eng = srv_client_engage_motors(EmptyRequest())
	nsecs = 0
	first_state = True
	#gt_pub.publish()

########################
# function to check if the state needs to be reseted
########################
def check_if_need_to_reset():
	#global x, y, z, o_x, o_y, o_z, o_w
	if z < Z_MIN or z > Z_MAX or abs(roll)>MAX_ANG or abs(pitch) > MAX_ANG or abs(x) > X_MAX or abs(y)> Y_MAX:
		#rospy.loginfo(state)		
		reset_func()
		return

########################
# Function that collect data each time step
########################
def step():
	global action, first_state, old_state, state, old_imu
	global x_data, y_data
	global iter_step
	#rospy.loginfo(x_data)
	iter_step = iter_step+1

	# Checking if this is the first time to do the step after the reseting
	#	if so it needs to be handled in a different way
	if first_state:
		generate_random_action()
		publish_action()
		first_state = False
		return	
	change_in_state = np.subtract(old_state, state)
	
	x_0 = np.append(old_state, state)
	x_1 = np.append(old_imu, imu)
	x_2 = np.append(magnatic, sonar)
	x = np.append(x_0, change_in_state)
	x = np.append(x, x_1)
	x = np.append(x, x_2)
	x = np.array(x)

	old_imu = imu
	old_state = state
	
	if x.shape[0] != len(x_data_columns):
		return
	if len(x_data)==0:
		x_data = np.array([x])
		y = np.array([action.linear.x, action.linear.y, action.linear.z, action.angular.x, action.angular.y, action.angular.z])
		y_data = np.array([y])

	else:
		x_data = np.concatenate((x_data, [x]),axis=0)
		y = np.array([action.linear.x, action.linear.y, action.linear.z, action.angular.x, action.angular.y, action.angular.z])
		y_data = np.concatenate((y_data, [y]),axis=0)
	generate_random_action()
	publish_action()
	rospy.loginfo(iter_step)
	
	#	Test collecting the data
	#req = GetQuadcopterDataRequest()
	#resp = srv_client_get_data(req)
	#rospy.loginfo(resp)

	if iter_step%num_of_iter_to_save == 0:
		
		x_pd = pd.DataFrame(data=x_data, columns=x_data_columns)
		y_pd = pd.DataFrame(data=y_data, columns=y_data_columns)

		x_data_file_path = r'/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/datasets/x_data_new.csv'
		y_data_file_path = r'/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/datasets/y_data_new.csv'
		
		x_pd.to_csv (x_data_file_path, index = None, header=True)
		y_pd.to_csv (y_data_file_path, index = None, header=True)

#TODO
#	use the GetQuadcopterData server to get the data
#	and delete the old function which collected data

########################
# The state call back function which reads the state
########################
def clbk_state(msg):
	global srv_client_reset_model_state
	global Z_MAX, X_MAX, Y_MAX, Z_MIN, X_MIN, Y_MIN
	global MAX_ANG
	global x, y, z, o_x, o_y, o_z, o_w
	global roll, pitch, yaw 
	global first_state
	global state, old_state
	
	x = msg.pose.pose.position.x
	y = msg.pose.pose.position.y
	z = msg.pose.pose.position.z
	
	o_x = msg.pose.pose.orientation.x
	o_y = msg.pose.pose.orientation.y
	o_z = msg.pose.pose.orientation.z
	o_w = msg.pose.pose.orientation.w
	orientation = [o_x, o_y, o_z, o_w]
	roll, pitch, yaw = getEulerRPY(orientation)
	
	state = np.array([x,y,z,roll,pitch,yaw])
	if first_state:
		old_state = np.array([x,y,z,roll,pitch,yaw])
	check_if_need_to_reset()
	
	
########################
# The clock call back function which pauses the phyiscs to read information and also it is 
#	used to publish the action message
########################
def clbk_clock(msg):
	global nsecs, step_counter
	nsecs = (nsecs+1)%calc_action_each_ms
	if nsecs==100:
		pause_physics_client=rospy.ServiceProxy('/gazebo/pause_physics',Empty)
		resp_p = pause_physics_client(EmptyRequest())
		step()
		unpause_physics_client=rospy.ServiceProxy('/gazebo/unpause_physics',Empty)
		resp_up = unpause_physics_client(EmptyRequest())
		publish_action()
		
	

########################
# The sonar call back function which reads the sonar value
########################
def clbk_sonar_height(msg):
	global sonar
	sonar = msg.range

########################
# The magnatic call back function which reads the magnatic value
########################
def clbk_magnetic(msg):
	global magnatic
	magnatic = np.array([msg.vector.x, msg.vector.y, msg.vector.z])

########################
# The imu call back function which reads the imu values [orientation, angular_velocity, linear_acceleration]
########################
def clbk_imu(msg):
	global imu, old_imu
	orientation = np.array([msg.orientation.x, msg.orientation.y, msg.orientation.z, msg.orientation.w])
	angular_velocity = np.array([msg.angular_velocity.x, msg.angular_velocity.y, msg.angular_velocity.z])
	linear_acceleration= np.array([msg.linear_acceleration.x, msg.linear_acceleration.y, msg.linear_acceleration.z])
	imu = np.append(orientation, angular_velocity)
	imu = np.append(imu, linear_acceleration)
	
	if len(old_imu)==0:
		old_imu = np.append(orientation, angular_velocity)
		old_imu = np.append(old_imu, linear_acceleration)	
	

def main():
	global srv_client_reset_model_state, srv_client_get_data
	global cmd_pub
	rospy.init_node('training')
	
		
	# Turn on the motors of the quadrotor
	rospy.wait_for_service('/engage')
	srv_client_engage_motors = rospy.ServiceProxy('/engage', Empty)
	resp_eng = srv_client_engage_motors(EmptyRequest())

	# connect to the reseting server
	rospy.wait_for_service('/reset_quadeotor_position')
	srv_client_reset_model_state = rospy.ServiceProxy('/reset_quadeotor_position', ResetPositionState)
	
	# connect to the collecting data server
	rospy.wait_for_service('/get_quadrotor_data')
	srv_client_get_data = rospy.ServiceProxy('/get_quadrotor_data', GetQuadcopterData)
	
	# The subscribers to the quadrotor state information
	sub_state = rospy.Subscriber('/ground_truth/state', Odometry, clbk_state)
	sub_clock = rospy.Subscriber('/clock', Clock, clbk_clock)
	sub_imu = rospy.Subscriber('/raw_imu', Imu, clbk_imu)
	sub_magnetic = rospy.Subscriber('/magnetic', Vector3Stamped, clbk_magnetic)	
	sub_sonar_hieght = rospy.Subscriber('/sonar_height', Range, clbk_sonar_height)	


	rospy.spin()

if __name__ == '__main__':
	main()
