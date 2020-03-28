; Auto-generated. Do not edit!


(cl:in-package rl_model-srv)


;//! \htmlinclude GetQuadcopterData-request.msg.html

(cl:defclass <GetQuadcopterData-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetQuadcopterData-request (<GetQuadcopterData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetQuadcopterData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetQuadcopterData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rl_model-srv:<GetQuadcopterData-request> is deprecated: use rl_model-srv:GetQuadcopterData-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetQuadcopterData-request>) ostream)
  "Serializes a message object of type '<GetQuadcopterData-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetQuadcopterData-request>) istream)
  "Deserializes a message object of type '<GetQuadcopterData-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetQuadcopterData-request>)))
  "Returns string type for a service object of type '<GetQuadcopterData-request>"
  "rl_model/GetQuadcopterDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetQuadcopterData-request)))
  "Returns string type for a service object of type 'GetQuadcopterData-request"
  "rl_model/GetQuadcopterDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetQuadcopterData-request>)))
  "Returns md5sum for a message object of type '<GetQuadcopterData-request>"
  "11c48fac5a9fde0bc6a969a66522b5e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetQuadcopterData-request)))
  "Returns md5sum for a message object of type 'GetQuadcopterData-request"
  "11c48fac5a9fde0bc6a969a66522b5e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetQuadcopterData-request>)))
  "Returns full string definition for message of type '<GetQuadcopterData-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetQuadcopterData-request)))
  "Returns full string definition for message of type 'GetQuadcopterData-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetQuadcopterData-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetQuadcopterData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetQuadcopterData-request
))
;//! \htmlinclude GetQuadcopterData-response.msg.html

(cl:defclass <GetQuadcopterData-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (imu
    :reader imu
    :initarg :imu
    :type sensor_msgs-msg:Imu
    :initform (cl:make-instance 'sensor_msgs-msg:Imu))
   (magnetic
    :reader magnetic
    :initarg :magnetic
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (sonar
    :reader sonar
    :initarg :sonar
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetQuadcopterData-response (<GetQuadcopterData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetQuadcopterData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetQuadcopterData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rl_model-srv:<GetQuadcopterData-response> is deprecated: use rl_model-srv:GetQuadcopterData-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetQuadcopterData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_model-srv:state-val is deprecated.  Use rl_model-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <GetQuadcopterData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_model-srv:imu-val is deprecated.  Use rl_model-srv:imu instead.")
  (imu m))

(cl:ensure-generic-function 'magnetic-val :lambda-list '(m))
(cl:defmethod magnetic-val ((m <GetQuadcopterData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_model-srv:magnetic-val is deprecated.  Use rl_model-srv:magnetic instead.")
  (magnetic m))

(cl:ensure-generic-function 'sonar-val :lambda-list '(m))
(cl:defmethod sonar-val ((m <GetQuadcopterData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_model-srv:sonar-val is deprecated.  Use rl_model-srv:sonar instead.")
  (sonar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetQuadcopterData-response>) ostream)
  "Serializes a message object of type '<GetQuadcopterData-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'magnetic) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sonar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetQuadcopterData-response>) istream)
  "Deserializes a message object of type '<GetQuadcopterData-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'magnetic) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sonar) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetQuadcopterData-response>)))
  "Returns string type for a service object of type '<GetQuadcopterData-response>"
  "rl_model/GetQuadcopterDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetQuadcopterData-response)))
  "Returns string type for a service object of type 'GetQuadcopterData-response"
  "rl_model/GetQuadcopterDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetQuadcopterData-response>)))
  "Returns md5sum for a message object of type '<GetQuadcopterData-response>"
  "11c48fac5a9fde0bc6a969a66522b5e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetQuadcopterData-response)))
  "Returns md5sum for a message object of type 'GetQuadcopterData-response"
  "11c48fac5a9fde0bc6a969a66522b5e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetQuadcopterData-response>)))
  "Returns full string definition for message of type '<GetQuadcopterData-response>"
  (cl:format cl:nil "geometry_msgs/Pose state~%sensor_msgs/Imu imu~%geometry_msgs/Vector3 magnetic~%float32 sonar~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetQuadcopterData-response)))
  "Returns full string definition for message of type 'GetQuadcopterData-response"
  (cl:format cl:nil "geometry_msgs/Pose state~%sensor_msgs/Imu imu~%geometry_msgs/Vector3 magnetic~%float32 sonar~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetQuadcopterData-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'magnetic))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetQuadcopterData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetQuadcopterData-response
    (cl:cons ':state (state msg))
    (cl:cons ':imu (imu msg))
    (cl:cons ':magnetic (magnetic msg))
    (cl:cons ':sonar (sonar msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetQuadcopterData)))
  'GetQuadcopterData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetQuadcopterData)))
  'GetQuadcopterData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetQuadcopterData)))
  "Returns string type for a service object of type '<GetQuadcopterData>"
  "rl_model/GetQuadcopterData")