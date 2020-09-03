# Install script for directory: /home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot_simulator/turtlebot_gazebo

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/build/turtlebot_simulator/turtlebot_gazebo/catkin_generated/installspace/turtlebot_gazebo.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_gazebo/cmake" TYPE FILE FILES
    "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/build/turtlebot_simulator/turtlebot_gazebo/catkin_generated/installspace/turtlebot_gazeboConfig.cmake"
    "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/build/turtlebot_simulator/turtlebot_gazebo/catkin_generated/installspace/turtlebot_gazeboConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_gazebo" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot_simulator/turtlebot_gazebo/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/build/turtlebot_simulator/turtlebot_gazebo/catkin_generated/installspace/25.turtlebot-gazebo.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_gazebo/catkin_env_hook" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/build/turtlebot_simulator/turtlebot_gazebo/catkin_generated/installspace/25.turtlebot-gazebo.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_gazebo" TYPE DIRECTORY FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot_simulator/turtlebot_gazebo/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_gazebo" TYPE DIRECTORY FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot_simulator/turtlebot_gazebo/maps")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_gazebo" TYPE DIRECTORY FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot_simulator/turtlebot_gazebo/worlds")
endif()

