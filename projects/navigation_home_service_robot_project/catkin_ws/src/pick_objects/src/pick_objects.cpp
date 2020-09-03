#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <unistd.h>


// Define a client for to send goal requests to the move_base server through a SimpleActionClient
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char** argv){
    // Initialize the simple_navigation_goals node
    ros::init(argc, argv, "simple_navigation_goals");

    //tell the action client that we want to spin a thread by default
    MoveBaseClient ac("move_base", true);

    // Wait 5 sec for move_base action server to come up

    ROS_INFO("Waiting for the move_base action server to come up");
    sleep(5);
    // while(!ac.waitForServer(ros::Duration(5.0))){
    //     // ROS_INFO("Waiting for the move_base action server to come up");
    // }

    // ==== FIRST GOAL - PICK UP! ====== /
    move_base_msgs::MoveBaseGoal pickUpGoal;

    // set up the frame parameters
    pickUpGoal.target_pose.header.frame_id = "map";
    pickUpGoal.target_pose.header.stamp = ros::Time::now();

    // Define a position and orientation for the robot to reach
    // pickUpGoal.target_pose.pose.position.x = -6.3;
    // pickUpGoal.target_pose.pose.position.y = 0.9;
    // pickUpGoal.target_pose.pose.orientation.w = 0.823;

    pickUpGoal.target_pose.pose.position.x = -3.85;
    pickUpGoal.target_pose.pose.position.y = -0.206;
    pickUpGoal.target_pose.pose.orientation.z = 0;
    pickUpGoal.target_pose.pose.orientation.w = 1.0;

    // Send the goal position and orientation for the robot to reach
    ROS_INFO("Travelling to Pickup Point...");
    ac.sendGoal(pickUpGoal);

    // Wait an infinite time for the results
    ac.waitForResult();

    // Check if the robot reached its goal
    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED) {
        ROS_INFO("Reached Pickup Point!");
    }
    else {
        ROS_INFO("Failed to reach Pickup Point...");
    }


    // == Simulating Pick up  (5 seconds) === //

    // ROS_INFO("Picking Up... (5s)");
    // while(!ac.waitForServer(ros::Duration(5.0))){
    //     // ROS_INFO("Picking Up... (5s)");
    // }
    ROS_INFO("Picking up.. Waiting... (5s)");
    sleep(5);


    // ==== SECOND GOAL - DROP OFF! ==== /

    move_base_msgs::MoveBaseGoal dropOffGoal;

    // set up the frame parameters
    dropOffGoal.target_pose.header.frame_id = "map";
    dropOffGoal.target_pose.header.stamp = ros::Time::now();

    // Define a position and orientation for the robot to reach
    dropOffGoal.target_pose.pose.position.x = -2.06375;
    dropOffGoal.target_pose.pose.position.y = -0.83982;
    dropOffGoal.target_pose.pose.orientation.z = -0.26766;
    dropOffGoal.target_pose.pose.orientation.w = 0.963511;

    // dropOffGoal.target_pose.pose.position.x = -2.21487;
    // dropOffGoal.target_pose.pose.position.y = -0.13710;
    // dropOffGoal.target_pose.pose.orientation.z = 0.0303766;
    // dropOffGoal.target_pose.pose.orientation.w = 0.99953;

    // Send the goal position and orientation for the robot to reach
    ROS_INFO("Travelling to drop off point goal");
    ac.sendGoal(dropOffGoal);

    // Wait an infinite time for the results
    ac.waitForResult();

    // Check if the robot reached its goal
    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED) {
        ROS_INFO("Reach Dropoff Point!");
    }
    else {
        ROS_INFO("Failed to reach Dropoff Point...");
    }

    return 0;
}