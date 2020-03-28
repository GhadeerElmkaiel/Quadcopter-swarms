
(cl:in-package :asdf)

(defsystem "simulation_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "GetOpjectData" :depends-on ("_package_GetOpjectData"))
    (:file "_package_GetOpjectData" :depends-on ("_package"))
    (:file "GetQuadcopterData" :depends-on ("_package_GetQuadcopterData"))
    (:file "_package_GetQuadcopterData" :depends-on ("_package"))
    (:file "ResetObjectPosition" :depends-on ("_package_ResetObjectPosition"))
    (:file "_package_ResetObjectPosition" :depends-on ("_package"))
    (:file "ResetPositionState" :depends-on ("_package_ResetPositionState"))
    (:file "_package_ResetPositionState" :depends-on ("_package"))
    (:file "SimTakeOffAndLand" :depends-on ("_package_SimTakeOffAndLand"))
    (:file "_package_SimTakeOffAndLand" :depends-on ("_package"))
    (:file "TakeOffAndLand" :depends-on ("_package_TakeOffAndLand"))
    (:file "_package_TakeOffAndLand" :depends-on ("_package"))
  ))