;; Auto-generated. Do not edit!


(when (boundp 'simulation_control::TakeOffAndLand)
  (if (not (find-package "SIMULATION_CONTROL"))
    (make-package "SIMULATION_CONTROL"))
  (shadow 'TakeOffAndLand (find-package "SIMULATION_CONTROL")))
(unless (find-package "SIMULATION_CONTROL::TAKEOFFANDLAND")
  (make-package "SIMULATION_CONTROL::TAKEOFFANDLAND"))
(unless (find-package "SIMULATION_CONTROL::TAKEOFFANDLANDREQUEST")
  (make-package "SIMULATION_CONTROL::TAKEOFFANDLANDREQUEST"))
(unless (find-package "SIMULATION_CONTROL::TAKEOFFANDLANDRESPONSE")
  (make-package "SIMULATION_CONTROL::TAKEOFFANDLANDRESPONSE"))

(in-package "ROS")





(defclass simulation_control::TakeOffAndLandRequest
  :super ros::object
  :slots (_model_prefix ))

(defmethod simulation_control::TakeOffAndLandRequest
  (:init
   (&key
    ((:model_prefix __model_prefix) "")
    )
   (send-super :init)
   (setq _model_prefix (string __model_prefix))
   self)
  (:model_prefix
   (&optional __model_prefix)
   (if __model_prefix (setq _model_prefix __model_prefix)) _model_prefix)
  (:serialization-length
   ()
   (+
    ;; string _model_prefix
    4 (length _model_prefix)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_prefix
       (write-long (length _model_prefix) s) (princ _model_prefix s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_prefix
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_prefix (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass simulation_control::TakeOffAndLandResponse
  :super ros::object
  :slots ())

(defmethod simulation_control::TakeOffAndLandResponse
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

(defclass simulation_control::TakeOffAndLand
  :super ros::object
  :slots ())

(setf (get simulation_control::TakeOffAndLand :md5sum-) "318f069335e84d20f7af479a87c22959")
(setf (get simulation_control::TakeOffAndLand :datatype-) "simulation_control/TakeOffAndLand")
(setf (get simulation_control::TakeOffAndLand :request) simulation_control::TakeOffAndLandRequest)
(setf (get simulation_control::TakeOffAndLand :response) simulation_control::TakeOffAndLandResponse)

(defmethod simulation_control::TakeOffAndLandRequest
  (:response () (instance simulation_control::TakeOffAndLandResponse :init)))

(setf (get simulation_control::TakeOffAndLandRequest :md5sum-) "318f069335e84d20f7af479a87c22959")
(setf (get simulation_control::TakeOffAndLandRequest :datatype-) "simulation_control/TakeOffAndLandRequest")
(setf (get simulation_control::TakeOffAndLandRequest :definition-)
      "string model_prefix
---



")

(setf (get simulation_control::TakeOffAndLandResponse :md5sum-) "318f069335e84d20f7af479a87c22959")
(setf (get simulation_control::TakeOffAndLandResponse :datatype-) "simulation_control/TakeOffAndLandResponse")
(setf (get simulation_control::TakeOffAndLandResponse :definition-)
      "string model_prefix
---



")



(provide :simulation_control/TakeOffAndLand "318f069335e84d20f7af479a87c22959")


