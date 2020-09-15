# Gazebo World Segment

**Gazebo** is a useful simulation tool that can be used with ROS to render robots in a simulated environment. It comes with a model and world editor, along with presets models, that can allow for quick prototyping of a physical environment.

The main principles taught in this segment are: 
1) Using model editor tool to render a robot with specified links & joints
2) Using World editor tool to render an environment (e.g. a house)
3) Running plugins on launch of Gazebo platform

## Setup 
Use the following commands to build the project: 

1. Create new build directory: `mkdir build && cd build`
2. Compile: `cmake .. && make`
3. Export Gazebo Plugin Path: `export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:~/Desktop/robotics_software_engineer_udacity/gazebo/gazebo_project_derektan/build`
4. Run Gazebo Simulation: `cd ../world && gazebo robot_world`
