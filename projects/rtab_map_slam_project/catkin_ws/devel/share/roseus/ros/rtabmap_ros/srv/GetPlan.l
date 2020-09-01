;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_ros::GetPlan)
  (if (not (find-package "RTABMAP_ROS"))
    (make-package "RTABMAP_ROS"))
  (shadow 'GetPlan (find-package "RTABMAP_ROS")))
(unless (find-package "RTABMAP_ROS::GETPLAN")
  (make-package "RTABMAP_ROS::GETPLAN"))
(unless (find-package "RTABMAP_ROS::GETPLANREQUEST")
  (make-package "RTABMAP_ROS::GETPLANREQUEST"))
(unless (find-package "RTABMAP_ROS::GETPLANRESPONSE")
  (make-package "RTABMAP_ROS::GETPLANRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass rtabmap_ros::GetPlanRequest
  :super ros::object
  :slots (_goal_node _goal _tolerance ))

(defmethod rtabmap_ros::GetPlanRequest
  (:init
   (&key
    ((:goal_node __goal_node) 0)
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    ((:tolerance __tolerance) 0.0)
    )
   (send-super :init)
   (setq _goal_node (round __goal_node))
   (setq _goal __goal)
   (setq _tolerance (float __tolerance))
   self)
  (:goal_node
   (&optional __goal_node)
   (if __goal_node (setq _goal_node __goal_node)) _goal_node)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:serialization-length
   ()
   (+
    ;; int32 _goal_node
    4
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ;; float32 _tolerance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _goal_node
       (write-long _goal_node s)
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;; float32 _tolerance
       (sys::poke _tolerance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _goal_node
     (setq _goal_node (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; float32 _tolerance
     (setq _tolerance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rtabmap_ros::GetPlanResponse
  :super ros::object
  :slots (_plan ))

(defmethod rtabmap_ros::GetPlanResponse
  (:init
   (&key
    ((:plan __plan) (instance rtabmap_ros::Path :init))
    )
   (send-super :init)
   (setq _plan __plan)
   self)
  (:plan
   (&rest __plan)
   (if (keywordp (car __plan))
       (send* _plan __plan)
     (progn
       (if __plan (setq _plan (car __plan)))
       _plan)))
  (:serialization-length
   ()
   (+
    ;; rtabmap_ros/Path _plan
    (send _plan :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rtabmap_ros/Path _plan
       (send _plan :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rtabmap_ros/Path _plan
     (send _plan :deserialize buf ptr-) (incf ptr- (send _plan :serialization-length))
   ;;
   self)
  )

(defclass rtabmap_ros::GetPlan
  :super ros::object
  :slots ())

(setf (get rtabmap_ros::GetPlan :md5sum-) "11e7a6b05e2b36bab483bec069bf36b9")
(setf (get rtabmap_ros::GetPlan :datatype-) "rtabmap_ros/GetPlan")
(setf (get rtabmap_ros::GetPlan :request) rtabmap_ros::GetPlanRequest)
(setf (get rtabmap_ros::GetPlan :response) rtabmap_ros::GetPlanResponse)

(defmethod rtabmap_ros::GetPlanRequest
  (:response () (instance rtabmap_ros::GetPlanResponse :init)))

(setf (get rtabmap_ros::GetPlanRequest :md5sum-) "11e7a6b05e2b36bab483bec069bf36b9")
(setf (get rtabmap_ros::GetPlanRequest :datatype-) "rtabmap_ros/GetPlanRequest")
(setf (get rtabmap_ros::GetPlanRequest :definition-)
      "# Get a plan from the current position to the goal node or pose 

# The final node of the goal (set 0 to use pose instead)
int32 goal_node
# The final pose of the goal position (used only if goalNodeId=0)
geometry_msgs/PoseStamped goal

# How many meters from the map's graph we can plan (0=infinite)
float32 tolerance

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
rtabmap_ros/Path plan

================================================================================
MSG: rtabmap_ros/Path

Header header

int32[] nodeIds
geometry_msgs/Pose[] poses


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get rtabmap_ros::GetPlanResponse :md5sum-) "11e7a6b05e2b36bab483bec069bf36b9")
(setf (get rtabmap_ros::GetPlanResponse :datatype-) "rtabmap_ros/GetPlanResponse")
(setf (get rtabmap_ros::GetPlanResponse :definition-)
      "# Get a plan from the current position to the goal node or pose 

# The final node of the goal (set 0 to use pose instead)
int32 goal_node
# The final pose of the goal position (used only if goalNodeId=0)
geometry_msgs/PoseStamped goal

# How many meters from the map's graph we can plan (0=infinite)
float32 tolerance

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
rtabmap_ros/Path plan

================================================================================
MSG: rtabmap_ros/Path

Header header

int32[] nodeIds
geometry_msgs/Pose[] poses


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :rtabmap_ros/GetPlan "11e7a6b05e2b36bab483bec069bf36b9")


