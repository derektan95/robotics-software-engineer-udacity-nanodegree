# Tutorial for Robotics Software Engineering Nanodegree - Udacity Course

**Disclaimer** Udacity provided some starter code, but the implementation for these concepts are done by myself. Please contact derektan95@hotmail.com for any questions. 

### Summary<br/>
...Insert Text here...



## Gazebo World Segment<br/>
Gazebo is a useful simulation tool that can be used with ROS to render robots in a simulated environment. It comes with a model and world editor, along with presets, that can allow for quick prototyping of an environment. 

The main principles taught in this segment are: 
1) Using model editor tool to render a robot with specified links & joints
2) Using World editor tool to render an environment (e.g. a house)
3) Running plugins on launch of Gazebo platform


## ROS Essentials Segment<br/>
Robot Operating System is a middleware designed for communication between different robotic parts, as well as common useful packages that can be used for robotic applications. In this project, different communication models were employed for different nodes of the robot to allow the robot to drive towards a white ball whenever the robot observes it. From a high level, the 2D camera node continuously checks whether the white ball in sight, and it's angle relative to the robot's heading. If white ball is in sight, a service is called to the drive node to drive towards the ball with specified linear and rotational velocity. The drive node receives this service call and publishes motion information to the wheels of the robot for movement. 

The main principles taught in this segment are: 
1) Packages & Catkin Workspaces
2) Writing ROS nodes & communication models (Publisher-Subscriber, Service-Client)

...Insert image here...


## Localization Segment<br/>
2 common localization principles are the Extended Kalman Filter (EKF) and the Monte Carlos Localization (Particle Filter). Given a map of the surrounding and motor controls, the robot can use either of these principles to estimate its state position.

The main principles taught in this segment are: 
1) Extended Kalman Filter
2) Monte Carlos Localization (Particle Filter)

...Insert image here...


## Mapping & SLAM Segment<br/>
...Insert summary text here...

The main principles taught in this segment are: 

...Insert image here...


## Path Planning & Navigation Segment<br/>
...Insert summary text here...

The main principles taught in this segment are: 

...Insert image here...

