; Auto-generated. Do not edit!


(cl:in-package simulation_control-srv)


;//! \htmlinclude GetOpjectData-request.msg.html

(cl:defclass <GetOpjectData-request> (roslisp-msg-protocol:ros-message)
  ((model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetOpjectData-request (<GetOpjectData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetOpjectData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetOpjectData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation_control-srv:<GetOpjectData-request> is deprecated: use simulation_control-srv:GetOpjectData-request instead.")))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <GetOpjectData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:model_name-val is deprecated.  Use simulation_control-srv:model_name instead.")
  (model_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetOpjectData-request>) ostream)
  "Serializes a message object of type '<GetOpjectData-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetOpjectData-request>) istream)
  "Deserializes a message object of type '<GetOpjectData-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetOpjectData-request>)))
  "Returns string type for a service object of type '<GetOpjectData-request>"
  "simulation_control/GetOpjectDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetOpjectData-request)))
  "Returns string type for a service object of type 'GetOpjectData-request"
  "simulation_control/GetOpjectDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetOpjectData-request>)))
  "Returns md5sum for a message object of type '<GetOpjectData-request>"
  "9dc8a94b294d83779a3e911e4c2ef7fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetOpjectData-request)))
  "Returns md5sum for a message object of type 'GetOpjectData-request"
  "9dc8a94b294d83779a3e911e4c2ef7fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetOpjectData-request>)))
  "Returns full string definition for message of type '<GetOpjectData-request>"
  (cl:format cl:nil "string model_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetOpjectData-request)))
  "Returns full string definition for message of type 'GetOpjectData-request"
  (cl:format cl:nil "string model_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetOpjectData-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetOpjectData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetOpjectData-request
    (cl:cons ':model_name (model_name msg))
))
;//! \htmlinclude GetOpjectData-response.msg.html

(cl:defclass <GetOpjectData-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass GetOpjectData-response (<GetOpjectData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetOpjectData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetOpjectData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation_control-srv:<GetOpjectData-response> is deprecated: use simulation_control-srv:GetOpjectData-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetOpjectData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:pose-val is deprecated.  Use simulation_control-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetOpjectData-response>) ostream)
  "Serializes a message object of type '<GetOpjectData-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetOpjectData-response>) istream)
  "Deserializes a message object of type '<GetOpjectData-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetOpjectData-response>)))
  "Returns string type for a service object of type '<GetOpjectData-response>"
  "simulation_control/GetOpjectDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetOpjectData-response)))
  "Returns string type for a service object of type 'GetOpjectData-response"
  "simulation_control/GetOpjectDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetOpjectData-response>)))
  "Returns md5sum for a message object of type '<GetOpjectData-response>"
  "9dc8a94b294d83779a3e911e4c2ef7fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetOpjectData-response)))
  "Returns md5sum for a message object of type 'GetOpjectData-response"
  "9dc8a94b294d83779a3e911e4c2ef7fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetOpjectData-response>)))
  "Returns full string definition for message of type '<GetOpjectData-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetOpjectData-response)))
  "Returns full string definition for message of type 'GetOpjectData-response"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetOpjectData-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetOpjectData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetOpjectData-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetOpjectData)))
  'GetOpjectData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetOpjectData)))
  'GetOpjectData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetOpjectData)))
  "Returns string type for a service object of type '<GetOpjectData>"
  "simulation_control/GetOpjectData")