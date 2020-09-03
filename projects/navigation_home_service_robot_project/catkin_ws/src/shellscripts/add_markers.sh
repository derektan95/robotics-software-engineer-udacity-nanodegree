#!/bin/sh
# xterm  -e  " source /opt/ros/kinetic/setup.bash; " & 
# sleep 1

# Launch Gazebo World & Robot
xterm  -e  " roslaunch my_robot world.launch " &
sleep 5

# Launch acml node for localization
xterm  -e  " roslaunch my_robot amcl.launch " &
sleep 5

# Launch Pick_objects Node (Go to pickup point, wait for 5s, then go to dropoff point)
xterm  -e  "roslaunch my_robot simulate_add_markers.launch" 