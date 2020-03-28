#!usr/bin/python

import torch
import torch.nn as nn
import torch.nn.functional as F


#######################################
#	Neural Network for perdicting the action from the new state and old state 
#######################################
class StateToActionNetwork(nn.Module):
  def __init__(self, state_space_size = 12, action_space_size = 6): 
		# input 12: 6 Change in state, 6 imu data
		# output 6: 6 actions
    super(StateToActionNetwork, self).__init__()
    self.fc1 = nn.Linear(state_space_size, 32)
    self.fc2 = nn.Linear(32, 32)
    self.fc3 = nn.Linear(32, action_space_size)

  def forward(self, x):
    x = F.tanh(self.fc1(x))
    x = F.tanh(self.fc2(x))
    x = self.fc3(x)
    return x


#######################################
#	Neural Network for perdicting the new state from old state and action
#######################################
class ActionToStateNetwork(nn.Module):
  def __init__(self, old_state_and_action_space_size = 18, new_state_space_size = 12):
    super(ActionToStateNetwork, self).__init__()
    self.fc1 = nn.Linear(old_state_and_action_space_size, 32)
    self.fc2 = nn.Linear(32, 32)
    self.fc3 = nn.Linear(32, new_state_space_size)

  def forward(self, x):
    x = F.tanh(self.fc1(x))
    x = F.tanh(self.fc2(x))
    x = self.fc3(x)
    return x
