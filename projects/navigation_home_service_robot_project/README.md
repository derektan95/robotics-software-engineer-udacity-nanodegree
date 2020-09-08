# Note

- I did not use the turtlebot packages as I encountered issues with connecting teleops feature to the robot. 
- All shellscript files can be located within the shellscript folder in src/ of the catkin workspace (named as specified)
- All relevent packages / modules used can be found within src folder
- Map from gmapping module duplicated into my_robot/maps ('old' folder contains old map from 'Where am I' project, which is not used)

# Process
1. I reused the world map along with my robot from the previous projects
2. I performed SLAM mapping using gmapping module
3. I performed AMCL localization using the map generated previously. 
4. I wrote code in pick_objects node to allow robot to perform pickup and dropoff (simulate)
5. I wrote code in add_marker node to simualate appearing and disappearing of green cube
6. I modified add_marker node to subscribe to AMCL pose to check if robot is close enough to pickup/dropoff point. If so (usin euclidean distance), then trigger green cube disappearing / appearing. 

# Shellscripts for execution
1) test_slam.sh
2) test_navigation.sh
3) pickup_objects.sh
4) add_markers.sh
5) home_service.sh

