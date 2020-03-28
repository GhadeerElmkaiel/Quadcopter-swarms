; Auto-generated. Do not edit!


(cl:in-package simulation_control-srv)


;//! \htmlinclude ResetObjectPosition-request.msg.html

(cl:defclass <ResetObjectPosition-request> (roslisp-msg-protocol:ros-message)
  ((model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (random_position
    :reader random_position
    :initarg :random_position
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ResetObjectPosition-request (<ResetObjectPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetObjectPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetObjectPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation_control-srv:<ResetObjectPosition-request> is deprecated: use simulation_control-srv:ResetObjectPosition-request instead.")))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <ResetObjectPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:model_name-val is deprecated.  Use simulation_control-srv:model_name instead.")
  (model_name m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ResetObjectPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:position-val is deprecated.  Use simulation_control-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <ResetObjectPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:orientation-val is deprecated.  Use simulation_control-srv:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'random_position-val :lambda-list '(m))
(cl:defmethod random_position-val ((m <ResetObjectPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:random_position-val is deprecated.  Use simulation_control-srv:random_position instead.")
  (random_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetObjectPosition-request>) ostream)
  "Serializes a message object of type '<ResetObjectPosition-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'random_position) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetObjectPosition-request>) istream)
  "Deserializes a message object of type '<ResetObjectPosition-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
    (cl:setf (cl:slot-value msg 'random_position) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetObjectPosition-request>)))
  "Returns string type for a service object of type '<ResetObjectPosition-request>"
  "simulation_control/ResetObjectPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetObjectPosition-request)))
  "Returns string type for a service object of type 'ResetObjectPosition-request"
  "simulation_control/ResetObjectPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetObjectPosition-request>)))
  "Returns md5sum for a message object of type '<ResetObjectPosition-request>"
  "b9c36716c61bd35f89c1c4d65dcd1b88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetObjectPosition-request)))
  "Returns md5sum for a message object of type 'ResetObjectPosition-request"
  "b9c36716c61bd35f89c1c4d65dcd1b88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetObjectPosition-request>)))
  "Returns full string definition for message of type '<ResetObjectPosition-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%string model_name~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 orientation~%bool random_position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetObjectPosition-request)))
  "Returns full string definition for message of type 'ResetObjectPosition-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%string model_name~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 orientation~%bool random_position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetObjectPosition-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetObjectPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetObjectPosition-request
    (cl:cons ':model_name (model_name msg))
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':random_position (random_position msg))
))
;//! \htmlinclude ResetObjectPosition-response.msg.html

(cl:defclass <ResetObjectPosition-response> (roslisp-msg-protocol:ros-message)
  ((new_state
    :reader new_state
    :initarg :new_state
    :type nav_msgs-msg:Odometry
    :initform (cl:make-instance 'nav_msgs-msg:Odometry)))
)

(cl:defclass ResetObjectPosition-response (<ResetObjectPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetObjectPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetObjectPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation_control-srv:<ResetObjectPosition-response> is deprecated: use simulation_control-srv:ResetObjectPosition-response instead.")))

(cl:ensure-generic-function 'new_state-val :lambda-list '(m))
(cl:defmethod new_state-val ((m <ResetObjectPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:new_state-val is deprecated.  Use simulation_control-srv:new_state instead.")
  (new_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetObjectPosition-response>) ostream)
  "Serializes a message object of type '<ResetObjectPosition-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'new_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetObjectPosition-response>) istream)
  "Deserializes a message object of type '<ResetObjectPosition-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'new_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetObjectPosition-response>)))
  "Returns string type for a service object of type '<ResetObjectPosition-response>"
  "simulation_control/ResetObjectPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetObjectPosition-response)))
  "Returns string type for a service object of type 'ResetObjectPosition-response"
  "simulation_control/ResetObjectPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetObjectPosition-response>)))
  "Returns md5sum for a message object of type '<ResetObjectPosition-response>"
  "b9c36716c61bd35f89c1c4d65dcd1b88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetObjectPosition-response)))
  "Returns md5sum for a message object of type 'ResetObjectPosition-response"
  "b9c36716c61bd35f89c1c4d65dcd1b88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetObjectPosition-response>)))
  "Returns full string definition for message of type '<ResetObjectPosition-response>"
  (cl:format cl:nil "nav_msgs/Odometry new_state~%~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetObjectPosition-response)))
  "Returns full string definition for message of type 'ResetObjectPosition-response"
  (cl:format cl:nil "nav_msgs/Odometry new_state~%~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetObjectPosition-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'new_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetObjectPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetObjectPosition-response
    (cl:cons ':new_state (new_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetObjectPosition)))
  'ResetObjectPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetObjectPosition)))
  'ResetObjectPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetObjectPosition)))
  "Returns string type for a service object of type '<ResetObjectPosition>"
  "simulation_control/ResetObjectPosition")