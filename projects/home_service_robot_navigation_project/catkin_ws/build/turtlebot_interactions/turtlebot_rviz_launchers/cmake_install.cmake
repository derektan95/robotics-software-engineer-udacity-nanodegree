# Install script for directory: /home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot_interactions/turtlebot_rviz_launchers

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/build/turtlebot_interactions/turtlebot_rviz_launchers/catkin_generated/installspace/turtlebot_rviz_launchers.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_rviz_launchers/cmake" TYPE FILE FILES
    "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/build/turtlebot_interactions/turtlebot_rviz_launchers/catkin_generated/installspace/turtlebot_rviz_launchersConfig.cmake"
    "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/build/turtlebot_interactions/turtlebot_rviz_launchers/catkin_generated/installspace/turtlebot_rviz_launchersConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_rviz_launchers" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot_interactions/turtlebot_rviz_launchers/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_rviz_launchers" TYPE DIRECTORY FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot_interactions/turtlebot_rviz_launchers/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_rviz_launchers" TYPE DIRECTORY FILES "/home/derektan/Desktop/robotics_software_engineer_udacity_projects/projects/home_service_robot_navigation_project/catkin_ws/src/turtlebot_interactions/turtlebot_rviz_launchers/rviz")
endif()

