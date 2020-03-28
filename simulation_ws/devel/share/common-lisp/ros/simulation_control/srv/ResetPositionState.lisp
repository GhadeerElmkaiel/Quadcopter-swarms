; Auto-generated. Do not edit!


(cl:in-package simulation_control-srv)


;//! \htmlinclude ResetPositionState-request.msg.html

(cl:defclass <ResetPositionState-request> (roslisp-msg-protocol:ros-message)
  ((position
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

(cl:defclass ResetPositionState-request (<ResetPositionState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetPositionState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetPositionState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation_control-srv:<ResetPositionState-request> is deprecated: use simulation_control-srv:ResetPositionState-request instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ResetPositionState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:position-val is deprecated.  Use simulation_control-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <ResetPositionState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:orientation-val is deprecated.  Use simulation_control-srv:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'random_position-val :lambda-list '(m))
(cl:defmethod random_position-val ((m <ResetPositionState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:random_position-val is deprecated.  Use simulation_control-srv:random_position instead.")
  (random_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetPositionState-request>) ostream)
  "Serializes a message object of type '<ResetPositionState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'random_position) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetPositionState-request>) istream)
  "Deserializes a message object of type '<ResetPositionState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
    (cl:setf (cl:slot-value msg 'random_position) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetPositionState-request>)))
  "Returns string type for a service object of type '<ResetPositionState-request>"
  "simulation_control/ResetPositionStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetPositionState-request)))
  "Returns string type for a service object of type 'ResetPositionState-request"
  "simulation_control/ResetPositionStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetPositionState-request>)))
  "Returns md5sum for a message object of type '<ResetPositionState-request>"
  "b34df3ca8ca98e0220d79d2c697c2943")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetPositionState-request)))
  "Returns md5sum for a message object of type 'ResetPositionState-request"
  "b34df3ca8ca98e0220d79d2c697c2943")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetPositionState-request>)))
  "Returns full string definition for message of type '<ResetPositionState-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 orientation~%bool random_position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetPositionState-request)))
  "Returns full string definition for message of type 'ResetPositionState-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 orientation~%bool random_position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetPositionState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetPositionState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetPositionState-request
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':random_position (random_position msg))
))
;//! \htmlinclude ResetPositionState-response.msg.html

(cl:defclass <ResetPositionState-response> (roslisp-msg-protocol:ros-message)
  ((new_state
    :reader new_state
    :initarg :new_state
    :type nav_msgs-msg:Odometry
    :initform (cl:make-instance 'nav_msgs-msg:Odometry)))
)

(cl:defclass ResetPositionState-response (<ResetPositionState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetPositionState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetPositionState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation_control-srv:<ResetPositionState-response> is deprecated: use simulation_control-srv:ResetPositionState-response instead.")))

(cl:ensure-generic-function 'new_state-val :lambda-list '(m))
(cl:defmethod new_state-val ((m <ResetPositionState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:new_state-val is deprecated.  Use simulation_control-srv:new_state instead.")
  (new_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetPositionState-response>) ostream)
  "Serializes a message object of type '<ResetPositionState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'new_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetPositionState-response>) istream)
  "Deserializes a message object of type '<ResetPositionState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'new_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetPositionState-response>)))
  "Returns string type for a service object of type '<ResetPositionState-response>"
  "simulation_control/ResetPositionStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetPositionState-response)))
  "Returns string type for a service object of type 'ResetPositionState-response"
  "simulation_control/ResetPositionStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetPositionState-response>)))
  "Returns md5sum for a message object of type '<ResetPositionState-response>"
  "b34df3ca8ca98e0220d79d2c697c2943")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetPositionState-response)))
  "Returns md5sum for a message object of type 'ResetPositionState-response"
  "b34df3ca8ca98e0220d79d2c697c2943")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetPositionState-response>)))
  "Returns full string definition for message of type '<ResetPositionState-response>"
  (cl:format cl:nil "nav_msgs/Odometry new_state~%~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetPositionState-response)))
  "Returns full string definition for message of type 'ResetPositionState-response"
  (cl:format cl:nil "nav_msgs/Odometry new_state~%~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetPositionState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'new_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetPositionState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetPositionState-response
    (cl:cons ':new_state (new_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetPositionState)))
  'ResetPositionState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetPositionState)))
  'ResetPositionState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetPositionState)))
  "Returns string type for a service object of type '<ResetPositionState>"
  "simulation_control/ResetPositionState")