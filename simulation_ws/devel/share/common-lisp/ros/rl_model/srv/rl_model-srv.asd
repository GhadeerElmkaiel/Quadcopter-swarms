
(cl:in-package :asdf)

(defsystem "rl_model-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "GetQuadcopterData" :depends-on ("_package_GetQuadcopterData"))
    (:file "_package_GetQuadcopterData" :depends-on ("_package"))
  ))