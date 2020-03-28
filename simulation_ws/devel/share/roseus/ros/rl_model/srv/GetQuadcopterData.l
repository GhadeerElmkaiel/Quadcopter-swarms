;; Auto-generated. Do not edit!


(when (boundp 'rl_model::GetQuadcopterData)
  (if (not (find-package "RL_MODEL"))
    (make-package "RL_MODEL"))
  (shadow 'GetQuadcopterData (find-package "RL_MODEL")))
(unless (find-package "RL_MODEL::GETQUADCOPTERDATA")
  (make-package "RL_MODEL::GETQUADCOPTERDATA"))
(unless (find-package "RL_MODEL::GETQUADCOPTERDATAREQUEST")
  (make-package "RL_MODEL::GETQUADCOPTERDATAREQUEST"))
(unless (find-package "RL_MODEL::GETQUADCOPTERDATARESPONSE")
  (make-package "RL_MODEL::GETQUADCOPTERDATARESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass rl_model::GetQuadcopterDataRequest
  :super ros::object
  :slots ())

(defmethod rl_model::GetQuadcopterDataRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rl_model::GetQuadcopterDataResponse
  :super ros::object
  :slots (_state _imu _magnetic _sonar ))

(defmethod rl_model::GetQuadcopterDataResponse
  (:init
   (&key
    ((:state __state) (instance geometry_msgs::Pose :init))
    ((:imu __imu) (instance sensor_msgs::Imu :init))
    ((:magnetic __magnetic) (instance geometry_msgs::Vector3 :init))
    ((:sonar __sonar) 0.0)
    )
   (send-super :init)
   (setq _state __state)
   (setq _imu __imu)
   (setq _magnetic __magnetic)
   (setq _sonar (float __sonar))
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:magnetic
   (&rest __magnetic)
   (if (keywordp (car __magnetic))
       (send* _magnetic __magnetic)
     (progn
       (if __magnetic (setq _magnetic (car __magnetic)))
       _magnetic)))
  (:sonar
   (&optional __sonar)
   (if __sonar (setq _sonar __sonar)) _sonar)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _state
    (send _state :serialization-length)
    ;; sensor_msgs/Imu _imu
    (send _imu :serialization-length)
    ;; geometry_msgs/Vector3 _magnetic
    (send _magnetic :serialization-length)
    ;; float32 _sonar
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _state
       (send _state :serialize s)
     ;; sensor_msgs/Imu _imu
       (send _imu :serialize s)
     ;; geometry_msgs/Vector3 _magnetic
       (send _magnetic :serialize s)
     ;; float32 _sonar
       (sys::poke _sonar (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; sensor_msgs/Imu _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; geometry_msgs/Vector3 _magnetic
     (send _magnetic :deserialize buf ptr-) (incf ptr- (send _magnetic :serialization-length))
   ;; float32 _sonar
     (setq _sonar (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rl_model::GetQuadcopterData
  :super ros::object
  :slots ())

(setf (get rl_model::GetQuadcopterData :md5sum-) "11c48fac5a9fde0bc6a969a66522b5e4")
(setf (get rl_model::GetQuadcopterData :datatype-) "rl_model/GetQuadcopterData")
(setf (get rl_model::GetQuadcopterData :request) rl_model::GetQuadcopterDataRequest)
(setf (get rl_model::GetQuadcopterData :response) rl_model::GetQuadcopterDataResponse)

(defmethod rl_model::GetQuadcopterDataRequest
  (:response () (instance rl_model::GetQuadcopterDataResponse :init)))

(setf (get rl_model::GetQuadcopterDataRequest :md5sum-) "11c48fac5a9fde0bc6a969a66522b5e4")
(setf (get rl_model::GetQuadcopterDataRequest :datatype-) "rl_model/GetQuadcopterDataRequest")
(setf (get rl_model::GetQuadcopterDataRequest :definition-)
      "
---
geometry_msgs/Pose state
sensor_msgs/Imu imu
geometry_msgs/Vector3 magnetic
float32 sonar


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
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

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

(setf (get rl_model::GetQuadcopterDataResponse :md5sum-) "11c48fac5a9fde0bc6a969a66522b5e4")
(setf (get rl_model::GetQuadcopterDataResponse :datatype-) "rl_model/GetQuadcopterDataResponse")
(setf (get rl_model::GetQuadcopterDataResponse :definition-)
      "
---
geometry_msgs/Pose state
sensor_msgs/Imu imu
geometry_msgs/Vector3 magnetic
float32 sonar


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
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

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



(provide :rl_model/GetQuadcopterData "11c48fac5a9fde0bc6a969a66522b5e4")


