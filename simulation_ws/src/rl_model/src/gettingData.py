#!/usr/bin/python
import rospy
from std_srvs.srv import *
from nav_msgs.msg import Odometry
from rosgraph_msgs.msg import Clock
from sensor_msgs.msg import Range, Imu
from geometry_msgs.msg import Twist, Vector3Stamped, Vector3, Pose
from rl_model.srv import *

#TODO
# from rl_model.srv import *
import numpy as np
import time

#TODO
# Create the service message
#	Edit the package file to activate the message
#	Edit the CmakeLists file too


sonar = 0.0
imu= Imu()
magnetic = Vector3()
state = Pose()


########################
# The state call back function which reads the state
########################
def clbk_state(msg):
	global state
	state.position = msg.pose.pose.position
	state.orientation = msg.pose.pose.orientation
	return
		
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
	global magnetic
	magnetic.x = msg.vector.x
	magnetic.y = msg.vector.y
	magnetic.z = msg.vector.z

########################
# The imu call back function which reads the imu values [orientation, angular_velocity, linear_acceleration]
########################
def clbk_imu(msg):
	global imu
	imu.orientation = msg.orientation 
	imu.angular_velocity = msg.angular_velocity
	imu.linear_acceleration = msg.linear_acceleration

########################
# The server call back function which gather the data and send it back
########################
def get_quadcopter_data(req):
	global imu, sonar, magnetic, state
	resp = GetQuadcopterDataResponse()
	resp.state = state
	resp.imu = imu
	resp.magnetic = magnetic
	resp.sonar = sonar

	return resp

########################
# The main function
########################
def main():
	rospy.init_node('get_quadrotor_data')	
	srv = rospy.Service('/get_quadrotor_data', GetQuadcopterData, get_quadcopter_data)

	# The subscribers to the quadrotor state information
	sub_state = rospy.Subscriber('/ground_truth/state', Odometry, clbk_state)
	sub_imu = rospy.Subscriber('/raw_imu', Imu, clbk_imu)
	sub_magnetic = rospy.Subscriber('/magnetic', Vector3Stamped, clbk_magnetic)	
	sub_sonar_hieght = rospy.Subscriber('/sonar_height', Range, clbk_sonar_height)	


	rospy.spin()
	
	while not rospy.is_shutdown():
		pass


if __name__ == '__main__':
	main()
