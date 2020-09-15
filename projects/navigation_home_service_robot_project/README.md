# Path Planning & Navigation Segment

There are 3 main approaches of path planning algorithms, namely **discrete, sample-based and probabilistic approaches**. These approaches differes in how the configuration space is broken down into maps and how paths are planned. In this project, the environment is pre-mapped using a ROS package called **gmapping** (http://wiki.ros.org/gmapping), which is based off of **2D Grid-Based FastSLAM** without loop closure capabilities. The **Adaptive Monte Carlo Localization package** from ROS (http://wiki.ros.org/amcl) is used to localize the robot at any point of time. The **ROS navigation stack** (http://wiki.ros.org/navigation), which leverages on the Dijkstra algorithm is used for the home service robot to simulate pickup and dropoff at preset points. Please run `home_service.sh` in src/shellscripts/ for quick launch of simulation.

The main principles taught in this segment are: 
1) Path Planning Algorithms
2) Simulating pickup and dropoff by combining all techniques learnt thus far

<img src="../../../media/home_service_robot_simulation.gif" width="900" height="400" />


## Setup (condensed within shellscripts in catkin_ws/src/shellscripts)
To run Home Service Robot Project: `./home_service.sh`

Other shellscripts were written during the testing phase:
1. Testing gmapping module: `./test_slam.sh`
2. Testing AMCL Localization & ROS Navigation Stack: `./test_navigation.sh`
3. Testing pickup functionality: `./pickup_objects.sh`
4. Testing markers in ROS RViz: `./add_markers.sh`

