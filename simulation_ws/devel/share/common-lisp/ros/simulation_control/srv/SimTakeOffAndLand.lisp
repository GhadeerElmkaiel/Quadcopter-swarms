; Auto-generated. Do not edit!


(cl:in-package simulation_control-srv)


;//! \htmlinclude SimTakeOffAndLand-request.msg.html

(cl:defclass <SimTakeOffAndLand-request> (roslisp-msg-protocol:ros-message)
  ((models_prefixs
    :reader models_prefixs
    :initarg :models_prefixs
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SimTakeOffAndLand-request (<SimTakeOffAndLand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimTakeOffAndLand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimTakeOffAndLand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation_control-srv:<SimTakeOffAndLand-request> is deprecated: use simulation_control-srv:SimTakeOffAndLand-request instead.")))

(cl:ensure-generic-function 'models_prefixs-val :lambda-list '(m))
(cl:defmethod models_prefixs-val ((m <SimTakeOffAndLand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_control-srv:models_prefixs-val is deprecated.  Use simulation_control-srv:models_prefixs instead.")
  (models_prefixs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimTakeOffAndLand-request>) ostream)
  "Serializes a message object of type '<SimTakeOffAndLand-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'models_prefixs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'models_prefixs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimTakeOffAndLand-request>) istream)
  "Deserializes a message object of type '<SimTakeOffAndLand-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'models_prefixs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'models_prefixs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimTakeOffAndLand-request>)))
  "Returns string type for a service object of type '<SimTakeOffAndLand-request>"
  "simulation_control/SimTakeOffAndLandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimTakeOffAndLand-request)))
  "Returns string type for a service object of type 'SimTakeOffAndLand-request"
  "simulation_control/SimTakeOffAndLandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimTakeOffAndLand-request>)))
  "Returns md5sum for a message object of type '<SimTakeOffAndLand-request>"
  "05a98b9b216be82ed5a9ff071217958d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimTakeOffAndLand-request)))
  "Returns md5sum for a message object of type 'SimTakeOffAndLand-request"
  "05a98b9b216be82ed5a9ff071217958d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimTakeOffAndLand-request>)))
  "Returns full string definition for message of type '<SimTakeOffAndLand-request>"
  (cl:format cl:nil "string[] models_prefixs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimTakeOffAndLand-request)))
  "Returns full string definition for message of type 'SimTakeOffAndLand-request"
  (cl:format cl:nil "string[] models_prefixs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimTakeOffAndLand-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'models_prefixs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimTakeOffAndLand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SimTakeOffAndLand-request
    (cl:cons ':models_prefixs (models_prefixs msg))
))
;//! \htmlinclude SimTakeOffAndLand-response.msg.html

(cl:defclass <SimTakeOffAndLand-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SimTakeOffAndLand-response (<SimTakeOffAndLand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimTakeOffAndLand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimTakeOffAndLand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation_control-srv:<SimTakeOffAndLand-response> is deprecated: use simulation_control-srv:SimTakeOffAndLand-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimTakeOffAndLand-response>) ostream)
  "Serializes a message object of type '<SimTakeOffAndLand-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimTakeOffAndLand-response>) istream)
  "Deserializes a message object of type '<SimTakeOffAndLand-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimTakeOffAndLand-response>)))
  "Returns string type for a service object of type '<SimTakeOffAndLand-response>"
  "simulation_control/SimTakeOffAndLandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimTakeOffAndLand-response)))
  "Returns string type for a service object of type 'SimTakeOffAndLand-response"
  "simulation_control/SimTakeOffAndLandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimTakeOffAndLand-response>)))
  "Returns md5sum for a message object of type '<SimTakeOffAndLand-response>"
  "05a98b9b216be82ed5a9ff071217958d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimTakeOffAndLand-response)))
  "Returns md5sum for a message object of type 'SimTakeOffAndLand-response"
  "05a98b9b216be82ed5a9ff071217958d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimTakeOffAndLand-response>)))
  "Returns full string definition for message of type '<SimTakeOffAndLand-response>"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimTakeOffAndLand-response)))
  "Returns full string definition for message of type 'SimTakeOffAndLand-response"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimTakeOffAndLand-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimTakeOffAndLand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SimTakeOffAndLand-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SimTakeOffAndLand)))
  'SimTakeOffAndLand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SimTakeOffAndLand)))
  'SimTakeOffAndLand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimTakeOffAndLand)))
  "Returns string type for a service object of type '<SimTakeOffAndLand>"
  "simulation_control/SimTakeOffAndLand")