# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rl_model: 0 messages, 1 services")

set(MSG_I_FLAGS "-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rl_model_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv" NAME_WE)
add_custom_target(_rl_model_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rl_model" "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv" "std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Pose:sensor_msgs/Imu"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(rl_model
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_model
)

### Generating Module File
_generate_module_cpp(rl_model
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_model
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rl_model_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rl_model_generate_messages rl_model_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv" NAME_WE)
add_dependencies(rl_model_generate_messages_cpp _rl_model_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_model_gencpp)
add_dependencies(rl_model_gencpp rl_model_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_model_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(rl_model
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_model
)

### Generating Module File
_generate_module_eus(rl_model
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_model
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rl_model_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rl_model_generate_messages rl_model_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv" NAME_WE)
add_dependencies(rl_model_generate_messages_eus _rl_model_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_model_geneus)
add_dependencies(rl_model_geneus rl_model_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_model_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(rl_model
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_model
)

### Generating Module File
_generate_module_lisp(rl_model
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_model
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rl_model_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rl_model_generate_messages rl_model_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv" NAME_WE)
add_dependencies(rl_model_generate_messages_lisp _rl_model_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_model_genlisp)
add_dependencies(rl_model_genlisp rl_model_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_model_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(rl_model
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_model
)

### Generating Module File
_generate_module_nodejs(rl_model
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_model
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rl_model_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rl_model_generate_messages rl_model_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv" NAME_WE)
add_dependencies(rl_model_generate_messages_nodejs _rl_model_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_model_gennodejs)
add_dependencies(rl_model_gennodejs rl_model_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_model_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(rl_model
  "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_model
)

### Generating Module File
_generate_module_py(rl_model
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_model
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rl_model_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rl_model_generate_messages rl_model_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/rl_model/srv/GetQuadcopterData.srv" NAME_WE)
add_dependencies(rl_model_generate_messages_py _rl_model_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_model_genpy)
add_dependencies(rl_model_genpy rl_model_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_model_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_model)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_model
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(rl_model_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rl_model_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(rl_model_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_model)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_model
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(rl_model_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rl_model_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(rl_model_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_model)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_model
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(rl_model_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rl_model_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(rl_model_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_model)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_model
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(rl_model_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rl_model_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(rl_model_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_model)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_model\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_model
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(rl_model_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rl_model_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(rl_model_generate_messages_py sensor_msgs_generate_messages_py)
endif()
