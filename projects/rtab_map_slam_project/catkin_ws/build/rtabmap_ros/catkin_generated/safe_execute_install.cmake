execute_process(COMMAND "/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/build/rtabmap_ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/derektan/Desktop/robotics_software_engineer_udacity/projects/rtab_map_slam_project/catkin_ws/build/rtabmap_ros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
