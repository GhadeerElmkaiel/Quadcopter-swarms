;; Auto-generated. Do not edit!


(when (boundp 'simulation_control::SimTakeOffAndLand)
  (if (not (find-package "SIMULATION_CONTROL"))
    (make-package "SIMULATION_CONTROL"))
  (shadow 'SimTakeOffAndLand (find-package "SIMULATION_CONTROL")))
(unless (find-package "SIMULATION_CONTROL::SIMTAKEOFFANDLAND")
  (make-package "SIMULATION_CONTROL::SIMTAKEOFFANDLAND"))
(unless (find-package "SIMULATION_CONTROL::SIMTAKEOFFANDLANDREQUEST")
  (make-package "SIMULATION_CONTROL::SIMTAKEOFFANDLANDREQUEST"))
(unless (find-package "SIMULATION_CONTROL::SIMTAKEOFFANDLANDRESPONSE")
  (make-package "SIMULATION_CONTROL::SIMTAKEOFFANDLANDRESPONSE"))

(in-package "ROS")





(defclass simulation_control::SimTakeOffAndLandRequest
  :super ros::object
  :slots (_models_prefixs ))

(defmethod simulation_control::SimTakeOffAndLandRequest
  (:init
   (&key
    ((:models_prefixs __models_prefixs) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _models_prefixs __models_prefixs)
   self)
  (:models_prefixs
   (&optional __models_prefixs)
   (if __models_prefixs (setq _models_prefixs __models_prefixs)) _models_prefixs)
  (:serialization-length
   ()
   (+
    ;; string[] _models_prefixs
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _models_prefixs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _models_prefixs
     (write-long (length _models_prefixs) s)
     (dolist (elem _models_prefixs)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _models_prefixs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _models_prefixs (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _models_prefixs i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass simulation_control::SimTakeOffAndLandResponse
  :super ros::object
  :slots ())

(defmethod simulation_control::SimTakeOffAndLandResponse
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

(defclass simulation_control::SimTakeOffAndLand
  :super ros::object
  :slots ())

(setf (get simulation_control::SimTakeOffAndLand :md5sum-) "05a98b9b216be82ed5a9ff071217958d")
(setf (get simulation_control::SimTakeOffAndLand :datatype-) "simulation_control/SimTakeOffAndLand")
(setf (get simulation_control::SimTakeOffAndLand :request) simulation_control::SimTakeOffAndLandRequest)
(setf (get simulation_control::SimTakeOffAndLand :response) simulation_control::SimTakeOffAndLandResponse)

(defmethod simulation_control::SimTakeOffAndLandRequest
  (:response () (instance simulation_control::SimTakeOffAndLandResponse :init)))

(setf (get simulation_control::SimTakeOffAndLandRequest :md5sum-) "05a98b9b216be82ed5a9ff071217958d")
(setf (get simulation_control::SimTakeOffAndLandRequest :datatype-) "simulation_control/SimTakeOffAndLandRequest")
(setf (get simulation_control::SimTakeOffAndLandRequest :definition-)
      "string[] models_prefixs
---



")

(setf (get simulation_control::SimTakeOffAndLandResponse :md5sum-) "05a98b9b216be82ed5a9ff071217958d")
(setf (get simulation_control::SimTakeOffAndLandResponse :datatype-) "simulation_control/SimTakeOffAndLandResponse")
(setf (get simulation_control::SimTakeOffAndLandResponse :definition-)
      "string[] models_prefixs
---



")



(provide :simulation_control/SimTakeOffAndLand "05a98b9b216be82ed5a9ff071217958d")


