# Install script for directory: /home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hector_uav_msgs/msg" TYPE FILE FILES
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/Altimeter.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/AttitudeCommand.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/Compass.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/ControllerState.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/HeadingCommand.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/HeightCommand.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/MotorCommand.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/MotorPWM.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/MotorStatus.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/PositionXYCommand.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/RawImu.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/RawMagnetic.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/RawRC.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/RC.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/RuddersCommand.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/ServoCommand.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/Supply.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/ThrustCommand.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/VelocityXYCommand.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/VelocityZCommand.msg"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/msg/YawrateCommand.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hector_uav_msgs/cmake" TYPE FILE FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/build/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/catkin_generated/installspace/hector_uav_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/include/hector_uav_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/share/roseus/ros/hector_uav_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/share/common-lisp/ros/hector_uav_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/share/gennodejs/ros/hector_uav_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/lib/python2.7/dist-packages/hector_uav_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/lib/python2.7/dist-packages/hector_uav_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/build/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/catkin_generated/installspace/hector_uav_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hector_uav_msgs/cmake" TYPE FILE FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/build/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/catkin_generated/installspace/hector_uav_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hector_uav_msgs/cmake" TYPE FILE FILES
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/build/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/catkin_generated/installspace/hector_uav_msgsConfig.cmake"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/build/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/catkin_generated/installspace/hector_uav_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hector_uav_msgs" TYPE FILE FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hector_uav_msgs" TYPE DIRECTORY FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/hector_uav_msgs/include/hector_uav_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

