; Auto-generated. Do not edit!


(cl:in-package simulation_control-srv)


;//! \htmlinclude TakeOffAndLand-request.msg.html

(cl:defclass <TakeOffAndLand-request> (roslisp-msg-protocol:ros-message)
  ((model_prefix
    :reader model_prefix
    :initarg :model_prefix
    :type cl:string
    :initform ""))
)

(cl:defclass TakeOffAndLand-request (<TakeOffAndLand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeOffAndLand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeOffAndLand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation_control-srv:<TakeOffAndLand-request> is deprecated: use simulation_control-srv:TakeOffAndLand-request instead.")))

(cl:ensure-generic-function 'model_prefix-val :lambda-list '(m))
(cl:defmethod model_prefix-val ((m <TakeOffAndLand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:model_prefix-val is deprecated.  Use simulation_control-srv:model_prefix instead.")
  (model_prefix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeOffAndLand-request>) ostream)
  "Serializes a message object of type '<TakeOffAndLand-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_prefix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_prefix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeOffAndLand-request>) istream)
  "Deserializes a message object of type '<TakeOffAndLand-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_prefix) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_prefix) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeOffAndLand-request>)))
  "Returns string type for a service object of type '<TakeOffAndLand-request>"
  "simulation_control/TakeOffAndLandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeOffAndLand-request)))
  "Returns string type for a service object of type 'TakeOffAndLand-request"
  "simulation_control/TakeOffAndLandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeOffAndLand-request>)))
  "Returns md5sum for a message object of type '<TakeOffAndLand-request>"
  "318f069335e84d20f7af479a87c22959")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeOffAndLand-request)))
  "Returns md5sum for a message object of type 'TakeOffAndLand-request"
  "318f069335e84d20f7af479a87c22959")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeOffAndLand-request>)))
  "Returns full string definition for message of type '<TakeOffAndLand-request>"
  (cl:format cl:nil "string model_prefix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeOffAndLand-request)))
  "Returns full string definition for message of type 'TakeOffAndLand-request"
  (cl:format cl:nil "string model_prefix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeOffAndLand-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_prefix))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeOffAndLand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeOffAndLand-request
    (cl:cons ':model_prefix (model_prefix msg))
))
;//! \htmlinclude TakeOffAndLand-response.msg.html

(cl:defclass <TakeOffAndLand-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TakeOffAndLand-response (<TakeOffAndLand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeOffAndLand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeOffAndLand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation_control-srv:<TakeOffAndLand-response> is deprecated: use simulation_control-srv:TakeOffAndLand-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeOffAndLand-response>) ostream)
  "Serializes a message object of type '<TakeOffAndLand-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeOffAndLand-response>) istream)
  "Deserializes a message object of type '<TakeOffAndLand-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeOffAndLand-response>)))
  "Returns string type for a service object of type '<TakeOffAndLand-response>"
  "simulation_control/TakeOffAndLandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeOffAndLand-response)))
  "Returns string type for a service object of type 'TakeOffAndLand-response"
  "simulation_control/TakeOffAndLandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeOffAndLand-response>)))
  "Returns md5sum for a message object of type '<TakeOffAndLand-response>"
  "318f069335e84d20f7af479a87c22959")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeOffAndLand-response)))
  "Returns md5sum for a message object of type 'TakeOffAndLand-response"
  "318f069335e84d20f7af479a87c22959")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeOffAndLand-response>)))
  "Returns full string definition for message of type '<TakeOffAndLand-response>"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeOffAndLand-response)))
  "Returns full string definition for message of type 'TakeOffAndLand-response"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeOffAndLand-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeOffAndLand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeOffAndLand-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TakeOffAndLand)))
  'TakeOffAndLand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TakeOffAndLand)))
  'TakeOffAndLand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeOffAndLand)))
  "Returns string type for a service object of type '<TakeOffAndLand>"
  "simulation_control/TakeOffAndLand")