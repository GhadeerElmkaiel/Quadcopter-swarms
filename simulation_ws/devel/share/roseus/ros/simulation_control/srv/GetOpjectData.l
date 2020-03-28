;; Auto-generated. Do not edit!


(when (boundp 'simulation_control::GetOpjectData)
  (if (not (find-package "SIMULATION_CONTROL"))
    (make-package "SIMULATION_CONTROL"))
  (shadow 'GetOpjectData (find-package "SIMULATION_CONTROL")))
(unless (find-package "SIMULATION_CONTROL::GETOPJECTDATA")
  (make-package "SIMULATION_CONTROL::GETOPJECTDATA"))
(unless (find-package "SIMULATION_CONTROL::GETOPJECTDATAREQUEST")
  (make-package "SIMULATION_CONTROL::GETOPJECTDATAREQUEST"))
(unless (find-package "SIMULATION_CONTROL::GETOPJECTDATARESPONSE")
  (make-package "SIMULATION_CONTROL::GETOPJECTDATARESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass simulation_control::GetOpjectDataRequest
  :super ros::object
  :slots (_model_name ))

(defmethod simulation_control::GetOpjectDataRequest
  (:init
   (&key
    ((:model_name __model_name) "")
    )
   (send-super :init)
   (setq _model_name (string __model_name))
   self)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:serialization-length
   ()
   (+
    ;; string _model_name
    4 (length _model_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass simulation_control::GetOpjectDataResponse
  :super ros::object
  :slots (_pose ))

(defmethod simulation_control::GetOpjectDataResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass simulation_control::GetOpjectData
  :super ros::object
  :slots ())

(setf (get simulation_control::GetOpjectData :md5sum-) "9dc8a94b294d83779a3e911e4c2ef7fb")
(setf (get simulation_control::GetOpjectData :datatype-) "simulation_control/GetOpjectData")
(setf (get simulation_control::GetOpjectData :request) simulation_control::GetOpjectDataRequest)
(setf (get simulation_control::GetOpjectData :response) simulation_control::GetOpjectDataResponse)

(defmethod simulation_control::GetOpjectDataRequest
  (:response () (instance simulation_control::GetOpjectDataResponse :init)))

(setf (get simulation_control::GetOpjectDataRequest :md5sum-) "9dc8a94b294d83779a3e911e4c2ef7fb")
(setf (get simulation_control::GetOpjectDataRequest :datatype-) "simulation_control/GetOpjectDataRequest")
(setf (get simulation_control::GetOpjectDataRequest :definition-)
      "string model_name
---
geometry_msgs/Pose pose



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

(setf (get simulation_control::GetOpjectDataResponse :md5sum-) "9dc8a94b294d83779a3e911e4c2ef7fb")
(setf (get simulation_control::GetOpjectDataResponse :datatype-) "simulation_control/GetOpjectDataResponse")
(setf (get simulation_control::GetOpjectDataResponse :definition-)
      "string model_name
---
geometry_msgs/Pose pose



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



(provide :simulation_control/GetOpjectData "9dc8a94b294d83779a3e911e4c2ef7fb")


