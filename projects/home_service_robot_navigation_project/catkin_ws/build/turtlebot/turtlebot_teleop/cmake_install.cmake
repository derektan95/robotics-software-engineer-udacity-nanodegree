# Install script for directory: /home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot/turtlebot_teleop

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/build/turtlebot/turtlebot_teleop/catkin_generated/installspace/turtlebot_teleop.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_teleop/cmake" TYPE FILE FILES
    "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/build/turtlebot/turtlebot_teleop/catkin_generated/installspace/turtlebot_teleopConfig.cmake"
    "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/build/turtlebot/turtlebot_teleop/catkin_generated/installspace/turtlebot_teleopConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_teleop" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot/turtlebot_teleop/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot_teleop" TYPE PROGRAM FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot/turtlebot_teleop/scripts/turtlebot_teleop_key")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_teleop/turtlebot_teleop_joy" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_teleop/turtlebot_teleop_joy")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_teleop/turtlebot_teleop_joy"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot_teleop" TYPE EXECUTABLE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/devel/lib/turtlebot_teleop/turtlebot_teleop_joy")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_teleop/turtlebot_teleop_joy" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_teleop/turtlebot_teleop_joy")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_teleop/turtlebot_teleop_joy"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_teleop/turtlebot_teleop_joy")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_teleop" TYPE DIRECTORY FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot/turtlebot_teleop/launch")
endif()

