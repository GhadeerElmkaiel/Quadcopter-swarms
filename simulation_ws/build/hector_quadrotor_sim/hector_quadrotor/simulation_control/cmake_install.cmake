# Install script for directory: /home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulation_control/srv" TYPE FILE FILES
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetPositionState.srv"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/ResetObjectPosition.srv"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetOpjectData.srv"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/TakeOffAndLand.srv"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/srv/GetQuadcopterData.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulation_control/cmake" TYPE FILE FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/build/hector_quadrotor_sim/hector_quadrotor/simulation_control/catkin_generated/installspace/simulation_control-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/include/simulation_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/share/roseus/ros/simulation_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/share/common-lisp/ros/simulation_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/share/gennodejs/ros/simulation_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/lib/python2.7/dist-packages/simulation_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/devel/lib/python2.7/dist-packages/simulation_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/build/hector_quadrotor_sim/hector_quadrotor/simulation_control/catkin_generated/installspace/simulation_control.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulation_control/cmake" TYPE FILE FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/build/hector_quadrotor_sim/hector_quadrotor/simulation_control/catkin_generated/installspace/simulation_control-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulation_control/cmake" TYPE FILE FILES
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/build/hector_quadrotor_sim/hector_quadrotor/simulation_control/catkin_generated/installspace/simulation_controlConfig.cmake"
    "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/build/hector_quadrotor_sim/hector_quadrotor/simulation_control/catkin_generated/installspace/simulation_controlConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulation_control" TYPE FILE FILES "/home/ghadeer/My_Files/Master/Project/ROS/simulation_ws/src/hector_quadrotor_sim/hector_quadrotor/simulation_control/package.xml")
endif()

