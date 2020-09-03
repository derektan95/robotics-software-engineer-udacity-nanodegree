#!/bin/sh
# xterm  -e  " source /opt/ros/kinetic/setup.bash; " & 
# sleep 1

# Launch Gazebo World & Robot
xterm  -e  " roslaunch my_robot world.launch " &
sleep 5

# Launch acml node for localization
xterm  -e  " roslaunch my_robot amcl.launch " &
sleep 5

# Launch acml node for localization
xterm  -e  " roslaunch my_robot add_markers.launch " &
sleep 5

# Launch teleops node
xterm  -e  " roslaunch my_robot pick_objects.launch " 