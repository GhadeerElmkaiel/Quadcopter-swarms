#!usr/bin/python
import os
import copy
import numpy as np

import gym
from gym import error, spaces
from gym.utils import seeding
from simulation_control.srv import *
from interactionsWithGazebo import *


DEFAULT_SIZE = 500


#TODO
"""

_set_action()   
_get_obs() -> All numpy array
self.sim.setp() -> self.step()
_sample_goal() -> Twist()


Done:
	_set_action()
	self.initial_state

"""


class RobotEnv(gym.GoalEnv):
		def __init__(self, n_actions, initial_qpos=None, name = 'quadrotor', goal_name = 'goal',
								agent_position_range = [-10, 10, -10, 10, 0.5, 4],
								goal_position_range = [-30, 30, -30, 30, 1, 5], debugging = False):

				self.viewer = None
				self._viewers = {}

				self.metadata = {
						'render.modes': ['human'],
						'video.frames_per_second': int(np.round(1.0 / 10))
				}

				self.name = name	#	The name of the agent
				self.goal_name = goal_name	#	The name of the goal spacified for this agent
				self.allowance = [0.1, 0.1, 0.1, 5]
				self.agent_position_range = agent_position_range
				self.goal_position_range = goal_position_range
				self.debugging = debugging

				self.seed()
				self.fail_reward = -100
				self.step_reward = -1
				self.goal_reward = 100
				self.max_dist = 25
				self.reach_dist = 0.15

				self._env_setup(initial_qpos=initial_qpos)
				#self.initial_state = copy.deepcopy(self.sim.get_state())

				self.goal = self._sample_goal()
				obs = self._get_obs()
				self.action_space = spaces.Box(-1., 1., shape=(n_actions,), dtype='float32')
				self.observation_space = spaces.Dict(dict(
						desired_goal=spaces.Box(-np.inf, np.inf, shape=obs['achieved_goal'].shape, dtype='float32'),
						achieved_goal=spaces.Box(-np.inf, np.inf, shape=obs['achieved_goal'].shape, dtype='float32'),
						observation=spaces.Box(-np.inf, np.inf, shape=obs['observation'].shape, dtype='float32'),
				))


    # Env methods
    # ----------------------------

		def seed(self, seed=None):
				self.np_random, seed = seeding.np_random(seed)
				return [seed]

		def step(self, action):
				action = np.clip(action, self.action_space.low, self.action_space.high)
				self._set_action(action)
				self.sim.step()
				self._step_callback()
				obs = self._get_obs()

				done = False
				info = {
						'is_success': self._is_success(obs['achieved_goal'], self.goal),
				}
				reward = self.compute_reward(obs['achieved_goal'], self.goal, info)
				return obs, reward, done, info

		def reset(self):
				# Attempt to reset the simulator. Since we randomize initial conditions, it
				# is possible to get into a state with numerical issues (e.g. due to penetration or
				# Gimbel lock) or we may not achieve an initial condition (e.g. an object is within the hand).
				# In this case, we just keep randomizing until we eventually achieve a valid initial
				# configuration.
				#super(RobotEnv, self).reset()
				did_reset_sim = False
				while not did_reset_sim:
				    did_reset_sim = self._reset_sim()
				obs = self._get_obs()
				return obs

		def close(self):
				if self.viewer is not None:
				    # self.viewer.finish()
				    self.viewer = None
				    self._viewers = {}

		def render(self, mode='human', width=DEFAULT_SIZE, height=DEFAULT_SIZE):
				pass

		def _get_viewer(self, mode):
				pass

		# Extension methods
		# ----------------------------

		def _reset_sim(self, pose_agent = None, pose_goal = None, rand=True):
				"""Resets a simulation and indicates whether or not it was successful.
				If a reset was unsuccessful (e.g. if a randomized state caused an error in the
				simulation), this method should indicate such a failure by returning False.
				In such a case, this method will be called again to attempt a the reset again.
				"""

				if self.debugging:
					print("Reseting the simulation")

				pose = []
				if pose_agent == None:
					pose = [self.agent_position_range[1], self.agent_position_range[3], 
									self.agent_position_range[5], 0, 0, 360]

				else:
					pose = pose_agent

				_ = reset_object_position(pose, rand, name = self.name)
		
				pose = []
				if pose_goal == None:
					pose = self._sample_goal()

				else:
					pose = pose_goal

				_ = reset_object_position(pose, rand, name=self.goal_name)

				return True

		def _get_obs(self):
				"""Returns the observation.
				"""
				obs = {'achieved_goal':[], 'observation':[]}
				#TODO
				#To implement 
				position = get_object_position(name = self.name)
				obs['achieved_goal'] = np.array(pose_to_arra(position.pose))

				goal_pose = self.goal
				obs['observation'] = np.array(relative_to_object(goal_pose))
		
				return obs
				

		def _set_action(self, action):
				"""Applies the given action to the simulation.
				"""
				publish_action(action)
				

		def _is_success(self, achieved_goal, desired_goal):
				"""Indicates whether or not the achieved goal successfully achieved the desired goal.
				"""
				reached = True
				for i, d_g in enumerate(desired_goal):
					if abs(d_g-achieved_goal[i]) > self.allowance[i]:
						reached = False
						break
				return reached
				

		def _sample_goal(self):
				"""Samples a new goal and returns it.
				"""
				if self.debugging:
					print("Sampling new goal")

				goal_arr = []
				top_limits = [self.goal_position_range[1], self.goal_position_range[3], 
									self.goal_position_range[5], 360]
				bottom_limits = [self.goal_position_range[0], self.goal_position_range[2], 
									self.goal_position_range[4], 0]
	
				#generate a new random position for the goal
				goal_arr = generate_random_range(top_limits, bottom_limits)
				goal_arr.insert(3, 0)
				goal_arr.insert(3, 0)
				reset_object_position(goal_arr, rand=False, name= self.goal_name)
				
				goal_arr = np.array(goal_arr)
				self.goal = np.array(goal_arr)
		
				return goal_arr


		def compute_reward(self, achieved_goal, desired_goal, info={}):	
			"""Computes the reward value
			"""
			achieved_goal_pose = array_to_pose(achieved_goal)
			desired_goal_pose = array_to_pose(desired_goal)
			if achieved_goal_pose.position.z < 0.3:
				return self.fail_reward

			if abs(achieved_goal_pose.position.z - desired_goal_pose.position.z) > self.max_dist or \
				 abs(achieved_goal_pose.position.x - desired_goal_pose.position.x) > self.max_dist or \
				 abs(achieved_goal_pose.position.y - desired_goal_pose.position.y) > self.max_dist:
				return self.fail_reward

			if abs(achieved_goal_pose.position.z - desired_goal_pose.position.z) < self.reach_dist and \
				 abs(achieved_goal_pose.position.x - desired_goal_pose.position.x) < self.reach_dist and \
				 abs(achieved_goal_pose.position.y - desired_goal_pose.position.y) < self.reach_dist:
				return self.goal_reward
	
			return self.step_reward
	
		def _env_setup(self, initial_qpos):
				"""Initial configuration of the environment. Can be used to configure initial state
				and extract information from the simulation.
				"""
				self._reset_sim(pose_agent = initial_qpos, rand=False)
				pass

		def _viewer_setup(self):
				"""Initial configuration of the viewer. Can be used to set the camera position,
				for example.
				"""
				pass

		def _render_callback(self):
				"""A custom callback that is called before rendering. Can be used
				to implement custom visualizations.
				"""
				pass

		def _step_callback(self):
				"""A custom callback that is called after stepping the simulation. Can be used
				to enforce additional constraints on the simulation state.
				"""
				pass

		def _check_if_fail(self, achieved_goal):
				"""

				"""
				pass


