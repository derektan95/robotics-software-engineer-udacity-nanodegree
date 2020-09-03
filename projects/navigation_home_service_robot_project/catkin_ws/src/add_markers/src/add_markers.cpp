#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include "geometry_msgs/PoseWithCovarianceStamped.h"


// Global Variables with info on pickup / dropoff points

// Pickup Pt
double pose_x1 = -3.85;
double pose_y1 = -0.206;
double pose_z1 = 0;
double orient_x1 = 0;
double orient_y1 = 0;
double orient_z1 = 0.0;
double orient_w1 = 1.0;

// DropOff Pt
double pose_x2 = -2.06375;
double pose_y2 = -0.83982;
double pose_z2 = 0;
double orient_x2 = 0;
double orient_y2 = 0;
double orient_z2 = -0.26766;
double orient_w2 = 0.963511;

// double pose_x2 = -2.21487;
// double pose_y2 = -0.13710;
// double pose_z2 = 0.0303766;
// double orient_x2 = 0;
// double orient_y2 = 0;
// double orient_z2 = 0.0;
// double orient_w2 = 0.99953;

double threshold = 0.5;
bool is_at_pickup_pt = false;
bool is_at_dropoff_pt = false;

ros::Publisher marker_pub;
ros::Subscriber sub_amcl_pose;

// Update state of whether robot is currently at pickup or dropoff point
void check_pose_state(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& pose_with_cov_ptr)
{

    if (ros::ok())
    {
    
      // Update robot's state...
      geometry_msgs::Point robot_pose = pose_with_cov_ptr->pose.pose.position;
      
      double dist_from_pickup_pt = sqrt( pow(robot_pose.x - pose_x1, 2) + pow(robot_pose.y - pose_y1, 2));
      double dist_from_dropoff_pt = sqrt( pow(robot_pose.x - pose_x2, 2) + pow(robot_pose.y - pose_y2, 2) );

      std::cout << dist_from_pickup_pt << std::endl;

      if (dist_from_pickup_pt < threshold) {
        is_at_pickup_pt = true;
      }
      if (dist_from_dropoff_pt < threshold) {
        is_at_dropoff_pt = true;
      }


      // --- REACT TO DIFFERENT ROBOT STATE --- //

      // Set our initial shape type to be a cube
      uint32_t shape = visualization_msgs::Marker::CUBE;

      visualization_msgs::Marker marker;
      // Set the frame ID and timestamp.  See the TF tutorials for information on these.
      marker.header.frame_id = "map";
      marker.header.stamp = ros::Time::now();

      // Set the namespace and id for this marker.  This serves to create a unique ID
      // Any marker sent with the same namespace and id will overwrite the old one
      marker.ns = "basic_shapes";
      marker.id = 0;

      // Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
      marker.type = shape;

      // Set the marker action.  Options are ADD, DELETE, and new in ROS Indigo: 3 (DELETEALL)
      marker.action = visualization_msgs::Marker::ADD;

      // Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
      marker.pose.position.x = pose_x1;
      marker.pose.position.y = pose_y1;
      marker.pose.position.z = pose_z1;
      marker.pose.orientation.x = orient_x1;
      marker.pose.orientation.y = orient_y1;
      marker.pose.orientation.z = orient_z1;
      marker.pose.orientation.w = orient_w1;

      // Set the scale of the marker -- 1x1x1 here means 1m on a side
      marker.scale.x = 0.2;
      marker.scale.y = 0.2;
      marker.scale.z = 0.2;

      // Set the color -- be sure to set alpha to something non-zero!
      marker.color.r = 0.0f;
      marker.color.g = 1.0f;
      marker.color.b = 0.0f;
      marker.color.a = 1.0;

      marker.lifetime = ros::Duration();

      // Publish the marker only when we have subscriver (i.e. RViz)
      while (marker_pub.getNumSubscribers() < 1)
      {
        if (!ros::ok())
        {
          return;
        }
        // ROS_WARN_ONCE("Please create a subscriber to the marker");
        sleep(1);
      }

      // Initially display marker at starting location when Robot yet to reach pickup point
      if (!is_at_pickup_pt) {
        marker_pub.publish(marker);
        ROS_INFO("Marker Published at Pickup Point...");
      }

      // Pause for 5s
      // sleep(5);

      // Hide the Marker - when Robot is at pickup point
      if (is_at_pickup_pt) {
        
        // Set the scale of the marker -- 1x1x1 here means 1m on a side
        ROS_INFO("Robot at Pickup Pt: Hide the Marker..");
        marker.scale.x = 0.0;
        marker.scale.y = 0.0;
        marker.scale.z = 0.0;
        marker_pub.publish(marker);
        // sleep(5);
      }
        

      // Spawn Marker at dropoff pt - when Robot is at dropoff point
      if (is_at_dropoff_pt) {
        // publish marker at dropoff zone
        ROS_INFO("Robot at ropoff Pt: Marker Published at DropOff Point...");

        // Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
        marker.pose.position.x = pose_x2;
        marker.pose.position.y = pose_y2;
        marker.pose.position.z = pose_z2;
        marker.pose.orientation.x = orient_x2;
        marker.pose.orientation.y = orient_y2;
        marker.pose.orientation.z = orient_z2;
        marker.pose.orientation.w = orient_w2;

        // Set the scale of the marker -- 1x1x1 here means 1m on a side
        marker.scale.x = 0.2;
        marker.scale.y = 0.2;
        marker.scale.z = 0.2;
        marker_pub.publish(marker);
        // sleep(5);
      }


      
    }
}


int main( int argc, char** argv )
{
  ros::init(argc, argv, "basic_shapes");
  ros::NodeHandle n;
  ros::Rate r(1);

  // Subscribe to /amcl_pose to keep traack of robot pose + prepare to publish green cube marker
  marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);
  sub_amcl_pose = n.subscribe<geometry_msgs::PoseWithCovarianceStamped>("/amcl_pose", 10, check_pose_state);

  // Keeps cycling
  r.sleep();

  ros::spin();

  return 0;
}