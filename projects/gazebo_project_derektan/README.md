Use the following export command: 

mkdir build && cd build

cmake ..

make

export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:~/Desktop/robotics_software_engineer_udacity/gazebo/gazebo_project_derektan/build

cd ../world

gazebo robot_world
