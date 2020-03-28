#!/usr/bin/python3

import rospy
from scipy.spatial.transform import Rotation as R
import numpy as np
import random as rn

from gazebo_msgs.srv import SetModelState
from nav_msgs.msg import Odometry
from std_srvs.srv import *
from rosgraph_msgs.msg import Clock
from sensor_msgs.msg import Range, Imu
from geometry_msgs.msg import Twist, Vector3Stamped, Vector3, Pose
from simulation_control.srv import ResetPositionStateRequest, ResetPositionState, GetOpjectData, GetOpjectDataRequest, ResetObjectPosition, ResetObjectPositionRequest
from rl_model.srv import GetQuadcopterData, GetQuadcopterDataRequest



# getting quadrotor data service
srv_client_get_quadrotor_data = rospy.ServiceProxy('/get_quadrotor_data', GetQuadcopterData)

# getting object position service
srv_client_get_object_position = rospy.ServiceProxy('/get_object_position', GetOpjectData)

# reseting the object position
srv_client_reset_object_state = rospy.ServiceProxy('/reset_object_position', ResetObjectPosition)

# reseting the object position
srv_client_reset_model_state = rospy.ServiceProxy('/reset_quadrotor_position', ResetObjectPosition)

# publishing the actions
cmd_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)


########################
# euler to quaternion 
########################
def euler_to_quaternion(roll, pitch, yaw):
	yaw = yaw*np.pi/360
	pitch = pitch*np.pi/360
	roll = roll*np.pi/360

	qx = np.sin(roll/2) * np.cos(pitch/2) * np.cos(yaw/2) - np.cos(roll/2) * np.sin(pitch/2) * np.sin(yaw/2)
	qy = np.cos(roll/2) * np.sin(pitch/2) * np.cos(yaw/2) + np.sin(roll/2) * np.cos(pitch/2) * np.sin(yaw/2)
	qz = np.cos(roll/2) * np.cos(pitch/2) * np.sin(yaw/2) - np.sin(roll/2) * np.sin(pitch/2) * np.cos(yaw/2)
	qw = np.cos(roll/2) * np.cos(pitch/2) * np.cos(yaw/2) + np.sin(roll/2) * np.sin(pitch/2) * np.sin(yaw/2)

	return [qx, qy, qz, qw]


########################
# quaternion to euler 
########################
def quaternion_to_euler(x, y, z, w):
	roll = np.arctan2(2.*y*z + 2.*w*x, z*z - y*y - x*x + w*w)
	pitch = -np.arcsin(2.*x*z - 2.*w*y)
	yaw = np.arctan2(2.*x*y + 2.*w*z, x*x + w*w - z*z - y*y)
	
	return [roll, pitch, yaw]


########################
# publishing the action 
########################
def publish_action(action, topic = '/cmd_vel'):
	pub = rospy.Publisher(topic, Twist, queue_size=10)
	pub.publish(action)
	return


########################
# Function returns the object's position
########################
def get_object_position(name='quadrotor'):
	rospy.wait_for_service('/get_object_position')
	req = GetOpjectDataRequest()
	req.model_name = name
	resp = srv_client_get_object_position(req)
	return resp


########################
# Function that calls the get_quadrotor_data service and returns the data
########################
def get_quadrotor_data():
	rospy.wait_for_service('/get_quadrotor_data')
	req = GetQuadcopterDataRequest()
	resp = srv_client_get_data(req)
	return resp


########################
# Function that returns the state as a float array
########################
def get_state():
	data = get_quadrotor_data()
	state = []
	state.append(data.position.x)
	state.append(data.position.y)
	state.append(data.position.z)
	euler = quaternion_to_euler(data.orientation.x, data.orientation.y, data.orientation.z, data.orientation.w)
	state.append(euler[0])
	state.append(euler[1])
	state.append(euler[2])

	state.append(data.angular_velocity.x)
	state.append(data.angular_velocity.y)
	state.append(data.angular_velocity.z)
	state.append(data.linear_acceleration.x)
	state.append(data.linear_acceleration.y)
	state.append(data.linear_acceleration.z)
	return state


########################
# Function that resets the quadrotor position in the environment
########################
def reset_quadrotor_position(pos_orien_arr, rand = False):
	rospy.wait_for_service('/reset_quadrotor_position')
	req = ResetPositionStateRequest()
	req.position.x = pos_orien_arr[0]
	req.position.y = pos_orien_arr[1]
	req.position.z = pos_orien_arr[2]
	req.orientation.x = pos_orien_arr[3]
	req.orientation.y = pos_orien_arr[4]
	req.orientation.z = pos_orien_arr[5]
	req.random_position = rand

	resp = srv_client_reset_model_state(req)
	state = resp.new_state
	return state


########################
# Function that resets an object position in the environment
########################
def reset_object_position(pos_orien_arr, rand = False, name='quadrotor'):
	rospy.wait_for_service('/reset_object_position')
	req = ResetObjectPositionRequest()
	req.model_name = name
	req.position.x = pos_orien_arr[0]
	req.position.y = pos_orien_arr[1]
	req.position.z = pos_orien_arr[2]
	req.orientation.x = pos_orien_arr[3]		#
	req.orientation.y = pos_orien_arr[4]		# Euler angles 'They get transfered to q vector'
	req.orientation.z = pos_orien_arr[5]		#
	req.random_position = rand

	resp = srv_client_reset_object_state(req)
	return resp



########################
# Returns the distance to an object in the object's coordinates system
########################
def relative_to_object(position, name='quadrotor'):
	obj_s = get_object_position(name)

	x = obj_s.pose.position.x
	y = obj_s.pose.position.y
	z = obj_s.pose.position.z
	r_x = position[0] - x
	r_y = position[1] - y
	r_z = position[2] - z
	
	r_dist = np.array([r_x, r_y, r_z])
	q = [obj_s.pose.orientation.x, obj_s.pose.orientation.y,
				obj_s.pose.orientation.z, obj_s.pose.orientation.w]
	mat = quat_to_matrix(q)
	
	r_dist = mat.dot(r_dist)
	
	return r_dist


########################
# Returns the distance to another position in the object's coordinates system
########################
def relative_to_position(position, second_postion=[0, 0, 0]):

	x = position.pose.position.x
	y = position.pose.position.y
	z = position.pose.position.z
	r_x = second_postion[0] - x
	r_y = second_postion[1] - y
	r_z = second_postion[2] - z
	
	r_dist = np.array([r_x, r_y, r_z])
	q = [position.pose.orientation.x, position.pose.orientation.y,
				position.pose.orientation.z, position.pose.orientation.w]
	
	if(sum(q)==0):
		q = [0, 0, 0, 1]
	mat = quat_to_matrix(q)
	
	r_dist = mat.dot(r_dist)
	
	return r_dist



########################
# Creates a Pose variable from the data in the array 
########################
def array_to_pose(arr):
	pose = Pose()
	pose.position.x = arr[0]
	pose.position.y = arr[1]
	pose.position.z = arr[2]
	q = euler_to_quaternion(arr[3], arr[4], arr[5])
	pose.orientation.x = q[0]
	pose.orientation.y = q[1]
	pose.orientation.z = q[2]
	pose.orientation.w = q[3]

	return pose


########################
# Gets data from Pose and reshapes it into an array
########################
def pose_to_arra(pose):
	arr = []
	arr.append(pose.position.x)
	arr.append(pose.position.y)
	arr.append(pose.position.z)
	euler = quaternion_to_euler(pose.orientation.x, pose.orientation.y, pose.orientation.z, pose.orientation.w)
	arr.append(euler[0])
	arr.append(euler[1])
	arr.append(euler[2])

	return arr


########################
# Returns the transformation matrix from Quaternion
########################
def quat_to_matrix(quat):
	r = R.from_quat(quat)
	r = r.inv()
	mat = r.as_matrix()
	mat = np.array(mat)
	return mat


########################
# Returns a vector of random valuse in a range
########################
def generate_random_range(top_limit, bottom_limit=None):
	# if the bottom limit is None it generates a random numbers in the range [-top_limit, top_limit]
	arr = []	
	if bottom_limit == None:
		for i in range(len(top_limit)):
			x = rn.random()*top_limit[i]*2 - top_limit[i]
			arr.append(x)
	
	else:
		if len(top_limit) != len(bottom_limit):
			raise Exception("top limit and bottom limit vectors' length should be equal")
			return arr
		for i in range(len(top_limit)):
			x = rn.random()*(top_limit[i]-bottom_limit[i]) + bottom_limit[i]
			arr.append(x)

	return arr


