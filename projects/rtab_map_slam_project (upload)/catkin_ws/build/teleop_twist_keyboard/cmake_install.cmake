# Install script for directory: /home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/src/teleop_twist_keyboard

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/build/teleop_twist_keyboard/catkin_generated/installspace/teleop_twist_keyboard.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teleop_twist_keyboard/cmake" TYPE FILE FILES
    "/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/build/teleop_twist_keyboard/catkin_generated/installspace/teleop_twist_keyboardConfig.cmake"
    "/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/build/teleop_twist_keyboard/catkin_generated/installspace/teleop_twist_keyboardConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teleop_twist_keyboard" TYPE FILE FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/src/teleop_twist_keyboard/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teleop_twist_keyboard" TYPE PROGRAM FILES "/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/build/teleop_twist_keyboard/catkin_generated/installspace/teleop_twist_keyboard.py")
endif()

