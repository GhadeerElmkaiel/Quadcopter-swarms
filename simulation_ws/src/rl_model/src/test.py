#!/usr/bin/python3

import pathlib
import torch
import rospy
import random as rn
import numpy as np
import time

from neuralNetworkModels import StateToActionNetwork, ActionToStateNetwork
from gazebo_msgs.srv import SetModelState
from nav_msgs.msg import Odometry
from std_srvs.srv import *
from rosgraph_msgs.msg import Clock
from sensor_msgs.msg import Range, Imu
from geometry_msgs.msg import Twist, Vector3Stamped, Vector3, Pose
from simulation_control.srv import ResetObjectPosition, ResetObjectPositionRequest
from rl_model.srv import GetQuadcopterData, GetQuadcopterDataRequest
from interactionsWithGazebo import *
from env import *

srv_client_get_data = None
cmd_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
nsecs = 0
count = 0
calc_action_each_ms = 1000
state = None
goal = Pose()
goal.position.x = -1.0
goal.position.y = -1.0
goal.position.z = 3.0
goal.orientation.x = 0
goal.orientation.y = 0
goal.orientation.z = 0

imu = None

state_path = "/neural_network_models/action_to_state_training_model_cpu.pth"
action_path = "/neural_network_models/state_to_action_training_model_cpu.pth"

path = str(pathlib.Path(__file__).parent.absolute()) # the absolute path to rl_model/src file

state_net_path = "".join([path,state_path])
action_net_path ="".join([path,action_path])

action_net = StateToActionNetwork()
state_net = ActionToStateNetwork()

device = torch.device('cpu')

state_net.load_state_dict(torch.load(state_net_path))
action_net.load_state_dict(torch.load(action_net_path))

action_net = action_net.to(device)
state_net = state_net.to(device)
action_net = action_net.float()
state_net = state_net.float()

robot = RobotEnv(n_actions=6)


########################
# Function that calls the get_quadrotor_data service and returns the data
########################
def get_quadrotor_data():
	req = GetQuadcopterDataRequest()
	resp = srv_client_get_data(req)
	return resp


'''
########################
# publishing the action 
########################
def publish_action(action):
	global cmd_pub
	cmd_pub.publish(action)
'''


########################
# Function that returns state and imu data from the quadrotor data
########################
def get_state_imu(data):
	global state, imu
	state = data.state
	imu = data.imu
	return state, imu	


########################
# Function that transfer an arry to ['linear', 'angular']
########################
def transfer_action(action_arr):
	action = Twist()
	action.linear.x = action_arr[0]
	action.linear.y = action_arr[1]
	action.linear.z = action_arr[2]
	action.angular.x = action_arr[3]
	action.angular.y = action_arr[4]
	action.angular.z = action_arr[5]
	return action


########################
# Function that returns state and imu data from the quadrotor data
########################
def go_to_pos(state_new):
	global state, imu
	global action_net
	state_imu_input = []
	state_imu_input.append(state_new.position.x - state.position.x)
	state_imu_input.append(state_new.position.y - state.position.y)
	state_imu_input.append(state_new.position.z - state.position.z)
	state_imu_input.append(state_new.orientation.x - state.orientation.x) #
	state_imu_input.append(state_new.orientation.y - state.orientation.y) #=> wrong  (x, y, z, w)??
	state_imu_input.append(state_new.orientation.z - state.orientation.z) #
	state_imu_input.append(imu.angular_velocity.x)
	state_imu_input.append(imu.angular_velocity.y)
	state_imu_input.append(imu.angular_velocity.z)
	state_imu_input.append(imu.linear_acceleration.x)
	state_imu_input.append(imu.linear_acceleration.y)
	state_imu_input.append(imu.linear_acceleration.z)
	# pass through the neural network
	action_arr = action_net(torch.tensor(state_imu_input))
	# change the array into a Twist()
	action = transfer_action(action_arr)
	#rospy.loginfo(action)
	#rospy.loginfo(state)
	# publish the action
	action.linear.x = 0
	action.linear.y = 0
	action.linear.z = 0
	action.angular.x = 0
	action.angular.y = 0
	action.angular.z = 0
	publish_action(action)

	
########################
# The clock call back function which pauses the phyiscs to read information and also it is 
#	used to publish the action message
########################
def clbk_clock(msg):
	global nsecs, count
	count += 1
	nsecs = (nsecs+1)%calc_action_each_ms
	if count == 100:
			srv_client_engage_motors = rospy.ServiceProxy('/engage', Empty)
			resp_eng = srv_client_engage_motors(EmptyRequest())
	if nsecs%100 ==0:
		pause_physics_client=rospy.ServiceProxy('/gazebo/pause_physics',Empty)
		resp_p = pause_physics_client(EmptyRequest())
		#TODO
		# Do some action each second 
		# Remember to get the data and activate the gettingData python file
		data = get_quadrotor_data()
		get_state_imu(data)
		
		unpause_physics_client=rospy.ServiceProxy('/gazebo/unpause_physics',Empty)
		resp_up = unpause_physics_client(EmptyRequest())
		# Do another thing after the action
	#if nsecs%100 ==0 and state!= None:
		#go_to_pos(goal)
	
	if count %2000 ==0 and count >0:
		reset_object_position([0,0,1.5,0,0,90*count/4000], name='quadrotor')
		#obs = robot.reset()


		
		

########################
# The main function
########################
def main():
	global srv_client_get_data
	global cmd_pub
	rospy.init_node('test')

	# Turn on the motors of the quadrotor
	rospy.wait_for_service('/engage')
	srv_client_engage_motors = rospy.ServiceProxy('/engage', Empty)
	resp_eng = srv_client_engage_motors(EmptyRequest())

	rospy.wait_for_service('/get_quadrotor_data')
	srv_client_get_data = rospy.ServiceProxy('/get_quadrotor_data', GetQuadcopterData)

	rospy.wait_for_service('/reset_object_position')
	srv_client_reset_position = rospy.ServiceProxy('/reset_object_position', ResetObjectPosition)

	sub_clock = rospy.Subscriber('/clock', Clock, clbk_clock)
	
	rospy.spin()


if __name__ == '__main__':
	main()


