# Install script for directory: /home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/src/ball_chaser

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ball_chaser/srv" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/src/ball_chaser/srv/DriveToTarget.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ball_chaser/cmake" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/build/ball_chaser/catkin_generated/installspace/ball_chaser-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/devel/include/ball_chaser")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/devel/share/roseus/ros/ball_chaser")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/devel/share/common-lisp/ros/ball_chaser")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/devel/share/gennodejs/ros/ball_chaser")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/devel/lib/python2.7/dist-packages/ball_chaser")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/devel/lib/python2.7/dist-packages/ball_chaser")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/build/ball_chaser/catkin_generated/installspace/ball_chaser.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ball_chaser/cmake" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/build/ball_chaser/catkin_generated/installspace/ball_chaser-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ball_chaser/cmake" TYPE FILE FILES
    "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/build/ball_chaser/catkin_generated/installspace/ball_chaserConfig.cmake"
    "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/build/ball_chaser/catkin_generated/installspace/ball_chaserConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ball_chaser" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/ros_intro/go_chase_it_project/catkin_ws/src/ball_chaser/package.xml")
endif()

