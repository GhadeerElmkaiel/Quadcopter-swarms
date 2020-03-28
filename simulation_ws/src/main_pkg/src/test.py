#!/usr/bin/python3

import rospy
import time
import sys
from env import *

from std_srvs.srv import *
from geometry_msgs.msg import Vector3
from simulation_control.srv import ResetObjectPosition, ResetObjectPositionRequest, TakeOffAndLand, TakeOffAndLandRequest


r = None


def takeoff(names = 'uav1'):
	rospy.wait_for_service('/takeoff')
	srv_client_takeoff = rospy.ServiceProxy('/takeoff', TakeOffAndLand)
	
	req = TakeOffAndLandRequest()
	req.model_prefix = names
	
	resp = srv_client_takeoff(req)
	#r.sleep()

def land(names = 'uav1'):
	rospy.wait_for_service('/land')
	srv_client_land = rospy.ServiceProxy('/land', TakeOffAndLand)
	
	req = TakeOffAndLandRequest()
	req.model_prefix = names
	
	resp = srv_client_land(req)
	#r.sleep()
	

def main():
	global r	

	rospy.init_node('test')
	args = rospy.myargv(argv=sys.argv)
	r = rospy.Rate(5)	
	num = int(args[1])

	# set the initial positions for the agents
	p = [0, 0, 0.5, 0, 0, 0]
	positions = [p]*num
	for i in range(num):
		positions[i][1]=3*(i+1)
	
	env = RobotEnv(n_agents=num, agents_initial_positions=positions)
	robot = env.agents[0]

	#init_env(num)
	
	names_list= []
	for i in range(num):
		names_list.append('uav'+str(i+1))
	names = ','.join(names_list)
	
	takeoff(names=names)
	rospy.sleep(2)
	rospy.loginfo("takingoff complete")
	env.land(names=names)
	rospy.loginfo("landing complete")

	rospy.spin()


if __name__ == '__main__':
	main()

