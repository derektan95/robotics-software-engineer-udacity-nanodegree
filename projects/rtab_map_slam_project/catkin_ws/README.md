# Mapping & SLAM Segment

A common mapping algorithm is the **Occupancy Grid Mapping**. Using sensor measurements and the Binary Bayes Filter, it computes the likelihood of an obstacle (i.e. map) given a particular grid on the map. Mapping requires the knowledge of the robot's start position, motor controls and sensor readings.

**Simulataneous Localization and Mapping (SLAM)** combines principles from both localization and mapping. Using sensor readings and motor control, the robot can continuously map the surroundings, and use the map data to localize itself relative to it. The **Online SLAM approach** gives the map and robot's pose at a given point of time, while the **Full SLAM approach** gives the map and all past robot poses. The main techniques taught in this class is the **Grid-Based FastSLAM** and **GraphSLAM**, which are Online Slam and Full Slam approaches respectively. In this project, the **Real Time Appearance Based Mapping** is used as part of the Online SLAM approach, where a depth camera is used. It provides **3D localization and mapping**, with the ability to perform **loop closure** (i.e. identify previously visited locations to allow for smoother map generation). This is available as a ROS package (http://wiki.ros.org/rtabmap_ros).

The main principles taught in this segment are: 
1) Occupancy Grid Mapping (Binary Bayes Filter)
2) Grid-Based FastSLAM
3) GraphSLAM
4) RTAB-map SLAM (Variant of GraphSLAM)

<img src="../../../media/RTAB_map_SLAM_simulation.gif" width="900" height="400" />


## Setup 
Use the following commands to build the project: 

1. Navigate to catkin workspace root directory: `cd catkin/`
2. Compile Catkin Workspace: `catkin_make`
3. Launch Robot in world: `source devel/setup.bash && roslaunch my_robot world.launch`
4. Launch Teleops package **(new tab)**: `source devel/setup.bash && rosrun teleop_twist_keyboard teleop_twist_keyboard.py`
5. Launch RTAB mapping node **(new tab)**: `roslaunch my_robot mapping.launch`
6. To view rtab-map viewer **(new tab)**: `rtabmap-databaseViewer <PATH TO rtabmap.db>`<br/>

**Note:** rtabmap.db map database will be saved in ~/.ros directory. Run `roslaunch my_robot localization.launch` to instead in Step 5 for localization.

