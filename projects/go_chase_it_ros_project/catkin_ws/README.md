# ROS Essentials Segment

**Robot Operating System** is a middleware designed for communication between different robotic parts, as well as common useful packages that can be used for robotic applications. In this project, different communication models were employed for different nodes of the robot to allow the robot to drive towards a white ball whenever the robot observes it. From a high level, the 2D camera node continuously checks whether the white ball in sight, and the angle of the ball relative to the robot's heading. If white ball is in sight, a service is called to the drive node to drive towards the ball with specified linear and rotational velocity. The drive node receives this service call and publishes motion information robot's wheel actuation node for movement. 

The main principles taught in this segment are: 
1) Packages & Catkin Workspaces
2) Writing ROS nodes & communication models (Publisher-Subscriber, Service-Client)

<img src="../../../media/go_chase_it_project_simulation.gif" width="900" height="400" />

## Setup 
Use the following commands to build the project: 

1. Navigate to catkin workspace root directory: `cd catkin/`
2. Compile Catkin Workspace: `catkin_make`
3. Launch Robot in world: `source devel/setup.bash && roslaunch my_robot world.launch`
4. Run ball-chaser node **(new tab)**: `source devel/setup.bash && ball_chaser.launch`
