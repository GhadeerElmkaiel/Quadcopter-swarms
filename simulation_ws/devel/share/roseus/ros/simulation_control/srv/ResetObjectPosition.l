;; Auto-generated. Do not edit!


(when (boundp 'simulation_control::ResetObjectPosition)
  (if (not (find-package "SIMULATION_CONTROL"))
    (make-package "SIMULATION_CONTROL"))
  (shadow 'ResetObjectPosition (find-package "SIMULATION_CONTROL")))
(unless (find-package "SIMULATION_CONTROL::RESETOBJECTPOSITION")
  (make-package "SIMULATION_CONTROL::RESETOBJECTPOSITION"))
(unless (find-package "SIMULATION_CONTROL::RESETOBJECTPOSITIONREQUEST")
  (make-package "SIMULATION_CONTROL::RESETOBJECTPOSITIONREQUEST"))
(unless (find-package "SIMULATION_CONTROL::RESETOBJECTPOSITIONRESPONSE")
  (make-package "SIMULATION_CONTROL::RESETOBJECTPOSITIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass simulation_control::ResetObjectPositionRequest
  :super ros::object
  :slots (_model_name _position _orientation _random_position ))

(defmethod simulation_control::ResetObjectPositionRequest
  (:init
   (&key
    ((:model_name __model_name) "")
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:orientation __orientation) (instance geometry_msgs::Vector3 :init))
    ((:random_position __random_position) nil)
    )
   (send-super :init)
   (setq _model_name (string __model_name))
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _random_position __random_position)
   self)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:random_position
   (&optional __random_position)
   (if __random_position (setq _random_position __random_position)) _random_position)
  (:serialization-length
   ()
   (+
    ;; string _model_name
    4 (length _model_name)
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _orientation
    (send _orientation :serialization-length)
    ;; bool _random_position
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _orientation
       (send _orientation :serialize s)
     ;; bool _random_position
       (if _random_position (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; bool _random_position
     (setq _random_position (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass simulation_control::ResetObjectPositionResponse
  :super ros::object
  :slots (_new_state ))

(defmethod simulation_control::ResetObjectPositionResponse
  (:init
   (&key
    ((:new_state __new_state) (instance nav_msgs::Odometry :init))
    )
   (send-super :init)
   (setq _new_state __new_state)
   self)
  (:new_state
   (&rest __new_state)
   (if (keywordp (car __new_state))
       (send* _new_state __new_state)
     (progn
       (if __new_state (setq _new_state (car __new_state)))
       _new_state)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Odometry _new_state
    (send _new_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Odometry _new_state
       (send _new_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Odometry _new_state
     (send _new_state :deserialize buf ptr-) (incf ptr- (send _new_state :serialization-length))
   ;;
   self)
  )

(defclass simulation_control::ResetObjectPosition
  :super ros::object
  :slots ())

(setf (get simulation_control::ResetObjectPosition :md5sum-) "b9c36716c61bd35f89c1c4d65dcd1b88")
(setf (get simulation_control::ResetObjectPosition :datatype-) "simulation_control/ResetObjectPosition")
(setf (get simulation_control::ResetObjectPosition :request) simulation_control::ResetObjectPositionRequest)
(setf (get simulation_control::ResetObjectPosition :response) simulation_control::ResetObjectPositionResponse)

(defmethod simulation_control::ResetObjectPositionRequest
  (:response () (instance simulation_control::ResetObjectPositionResponse :init)))

(setf (get simulation_control::ResetObjectPositionRequest :md5sum-) "b9c36716c61bd35f89c1c4d65dcd1b88")
(setf (get simulation_control::ResetObjectPositionRequest :datatype-) "simulation_control/ResetObjectPositionRequest")
(setf (get simulation_control::ResetObjectPositionRequest :definition-)
      "






string model_name
geometry_msgs/Vector3 position
geometry_msgs/Vector3 orientation
bool random_position

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
nav_msgs/Odometry new_state


================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get simulation_control::ResetObjectPositionResponse :md5sum-) "b9c36716c61bd35f89c1c4d65dcd1b88")
(setf (get simulation_control::ResetObjectPositionResponse :datatype-) "simulation_control/ResetObjectPositionResponse")
(setf (get simulation_control::ResetObjectPositionResponse :definition-)
      "






string model_name
geometry_msgs/Vector3 position
geometry_msgs/Vector3 orientation
bool random_position

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
nav_msgs/Odometry new_state


================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :simulation_control/ResetObjectPosition "b9c36716c61bd35f89c1c4d65dcd1b88")


