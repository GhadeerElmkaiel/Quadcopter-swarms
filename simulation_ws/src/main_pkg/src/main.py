#!/usr/bin/python3

import rospy
import sys
import time

from interactionsWithGazebo import *
from env import *
from simulation_control.srv import ResetObjectPosition, ResetObjectPositionRequest

num_of_agents = 2

def main():
	global num_of_agents
	rospy.init_node('main')
	args = rospy.myargv(argv=sys.argv)
	num_of_agents = int(args[1])
	rospy.loginfo(num_of_agents)


if __name__ == '__main__':
	main()


