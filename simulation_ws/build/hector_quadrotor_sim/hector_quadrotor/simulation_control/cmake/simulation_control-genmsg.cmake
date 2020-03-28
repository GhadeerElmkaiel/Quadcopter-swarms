# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "simulation_control: 0 messages, 5 services")

set(MSG_I_FLAGS "-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(simulation_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv" NAME_WE)
add_custom_target(_simulation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulation_control" "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/TwistWithCovariance:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:nav_msgs/Odometry"
)

get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv" NAME_WE)
add_custom_target(_simulation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulation_control" "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv" NAME_WE)
add_custom_target(_simulation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulation_control" "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/TwistWithCovariance:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:nav_msgs/Odometry"
)

get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv" NAME_WE)
add_custom_target(_simulation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulation_control" "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv" "std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Pose:sensor_msgs/Imu"
)

get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv" NAME_WE)
add_custom_target(_simulation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulation_control" "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_control
)
_generate_srv_cpp(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_control
)
_generate_srv_cpp(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_control
)
_generate_srv_cpp(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_control
)
_generate_srv_cpp(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_control
)

### Generating Module File
_generate_module_cpp(simulation_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(simulation_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(simulation_control_generate_messages simulation_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_cpp _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_cpp _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_cpp _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_cpp _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_cpp _simulation_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_control_gencpp)
add_dependencies(simulation_control_gencpp simulation_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_control
)
_generate_srv_eus(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_control
)
_generate_srv_eus(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_control
)
_generate_srv_eus(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_control
)
_generate_srv_eus(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_control
)

### Generating Module File
_generate_module_eus(simulation_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(simulation_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(simulation_control_generate_messages simulation_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_eus _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_eus _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_eus _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_eus _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_eus _simulation_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_control_geneus)
add_dependencies(simulation_control_geneus simulation_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_control
)
_generate_srv_lisp(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_control
)
_generate_srv_lisp(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_control
)
_generate_srv_lisp(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_control
)
_generate_srv_lisp(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_control
)

### Generating Module File
_generate_module_lisp(simulation_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(simulation_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(simulation_control_generate_messages simulation_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_lisp _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_lisp _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_lisp _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_lisp _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_lisp _simulation_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_control_genlisp)
add_dependencies(simulation_control_genlisp simulation_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_control
)
_generate_srv_nodejs(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_control
)
_generate_srv_nodejs(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_control
)
_generate_srv_nodejs(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_control
)
_generate_srv_nodejs(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_control
)

### Generating Module File
_generate_module_nodejs(simulation_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(simulation_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(simulation_control_generate_messages simulation_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_nodejs _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_nodejs _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_nodejs _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_nodejs _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_nodejs _simulation_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_control_gennodejs)
add_dependencies(simulation_control_gennodejs simulation_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_control
)
_generate_srv_py(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_control
)
_generate_srv_py(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_control
)
_generate_srv_py(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_control
)
_generate_srv_py(simulation_control
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_control
)

### Generating Module File
_generate_module_py(simulation_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(simulation_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(simulation_control_generate_messages simulation_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_py _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_py _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_py _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_py _simulation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv" NAME_WE)
add_dependencies(simulation_control_generate_messages_py _simulation_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_control_genpy)
add_dependencies(simulation_control_genpy simulation_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(simulation_control_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(simulation_control_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(simulation_control_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(simulation_control_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(simulation_control_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(simulation_control_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(simulation_control_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(simulation_control_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(simulation_control_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(simulation_control_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(simulation_control_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(simulation_control_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(simulation_control_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(simulation_control_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(simulation_control_generate_messages_py sensor_msgs_generate_messages_py)
endif()
