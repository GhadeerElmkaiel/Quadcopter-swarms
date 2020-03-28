#! /usr/bin/env python
import rospy
from gazebo_msgs.srv import SetModelState
from gazebo_msgs.msg import ModelState

rospy.wait_for_service('/gazebo/set_model_state')
srv_client_set_model_state = rospy.ServiceProxy('/gazebo/set_model_state', SetModelState)
model_state = ModelState()
model_state.model_name = 'quadrotor'
model_state.pose.position.x = -3
model_state.pose.position.y = 8

resp = srv_client_set_model_state(model_state)

