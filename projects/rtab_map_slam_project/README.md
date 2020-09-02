# Navigate to catkin workspace
cd catkinws/

# Source directory
source devel/setup.bash

# Run Gazebo Environment with RViz
roslaunch my_robot world.launch

# Run teleops node
rosrun teleop_twist_keyboard teleop_twist_keyboard.py

# Run RTAB mapping node (Note: rtabmap.db will be saved in ~/.ros directory)
roslaunch my_robot mapping.launch

# NOTE: To run RTAB Localization node (instead of mapping node)
roslaunch my_robot localization.launch

# To view rtab-map viewer
rtabmap-databaseViewer `PATH TO rtabmap.db`

