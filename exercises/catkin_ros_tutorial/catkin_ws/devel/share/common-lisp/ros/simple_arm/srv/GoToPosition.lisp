; Auto-generated. Do not edit!


(cl:in-package simple_arm-srv)


;//! \htmlinclude GoToPosition-request.msg.html

(cl:defclass <GoToPosition-request> (roslisp-msg-protocol:ros-message)
  ((joint_1
    :reader joint_1
    :initarg :joint_1
    :type cl:float
    :initform 0.0)
   (joint_2
    :reader joint_2
    :initarg :joint_2
    :type cl:float
    :initform 0.0))
)

(cl:defclass GoToPosition-request (<GoToPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_arm-srv:<GoToPosition-request> is deprecated: use simple_arm-srv:GoToPosition-request instead.")))

(cl:ensure-generic-function 'joint_1-val :lambda-list '(m))
(cl:defmethod joint_1-val ((m <GoToPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_arm-srv:joint_1-val is deprecated.  Use simple_arm-srv:joint_1 instead.")
  (joint_1 m))

(cl:ensure-generic-function 'joint_2-val :lambda-list '(m))
(cl:defmethod joint_2-val ((m <GoToPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_arm-srv:joint_2-val is deprecated.  Use simple_arm-srv:joint_2 instead.")
  (joint_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToPosition-request>) ostream)
  "Serializes a message object of type '<GoToPosition-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToPosition-request>) istream)
  "Deserializes a message object of type '<GoToPosition-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToPosition-request>)))
  "Returns string type for a service object of type '<GoToPosition-request>"
  "simple_arm/GoToPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPosition-request)))
  "Returns string type for a service object of type 'GoToPosition-request"
  "simple_arm/GoToPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToPosition-request>)))
  "Returns md5sum for a message object of type '<GoToPosition-request>"
  "eb45b449ee9f05b300349d9c9af72154")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToPosition-request)))
  "Returns md5sum for a message object of type 'GoToPosition-request"
  "eb45b449ee9f05b300349d9c9af72154")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToPosition-request>)))
  "Returns full string definition for message of type '<GoToPosition-request>"
  (cl:format cl:nil "float64 joint_1~%float64 joint_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToPosition-request)))
  "Returns full string definition for message of type 'GoToPosition-request"
  (cl:format cl:nil "float64 joint_1~%float64 joint_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToPosition-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToPosition-request
    (cl:cons ':joint_1 (joint_1 msg))
    (cl:cons ':joint_2 (joint_2 msg))
))
;//! \htmlinclude GoToPosition-response.msg.html

(cl:defclass <GoToPosition-response> (roslisp-msg-protocol:ros-message)
  ((msg_feedback
    :reader msg_feedback
    :initarg :msg_feedback
    :type cl:string
    :initform ""))
)

(cl:defclass GoToPosition-response (<GoToPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_arm-srv:<GoToPosition-response> is deprecated: use simple_arm-srv:GoToPosition-response instead.")))

(cl:ensure-generic-function 'msg_feedback-val :lambda-list '(m))
(cl:defmethod msg_feedback-val ((m <GoToPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_arm-srv:msg_feedback-val is deprecated.  Use simple_arm-srv:msg_feedback instead.")
  (msg_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToPosition-response>) ostream)
  "Serializes a message object of type '<GoToPosition-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg_feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg_feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToPosition-response>) istream)
  "Deserializes a message object of type '<GoToPosition-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg_feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg_feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToPosition-response>)))
  "Returns string type for a service object of type '<GoToPosition-response>"
  "simple_arm/GoToPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPosition-response)))
  "Returns string type for a service object of type 'GoToPosition-response"
  "simple_arm/GoToPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToPosition-response>)))
  "Returns md5sum for a message object of type '<GoToPosition-response>"
  "eb45b449ee9f05b300349d9c9af72154")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToPosition-response)))
  "Returns md5sum for a message object of type 'GoToPosition-response"
  "eb45b449ee9f05b300349d9c9af72154")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToPosition-response>)))
  "Returns full string definition for message of type '<GoToPosition-response>"
  (cl:format cl:nil "string msg_feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToPosition-response)))
  "Returns full string definition for message of type 'GoToPosition-response"
  (cl:format cl:nil "string msg_feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToPosition-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToPosition-response
    (cl:cons ':msg_feedback (msg_feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToPosition)))
  'GoToPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToPosition)))
  'GoToPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPosition)))
  "Returns string type for a service object of type '<GoToPosition>"
  "simple_arm/GoToPosition")