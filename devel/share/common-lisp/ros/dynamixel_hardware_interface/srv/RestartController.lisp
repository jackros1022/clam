; Auto-generated. Do not edit!


(cl:in-package dynamixel_hardware_interface-srv)


;//! \htmlinclude RestartController-request.msg.html

(cl:defclass <RestartController-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass RestartController-request (<RestartController-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RestartController-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RestartController-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_hardware_interface-srv:<RestartController-request> is deprecated: use dynamixel_hardware_interface-srv:RestartController-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RestartController-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_hardware_interface-srv:name-val is deprecated.  Use dynamixel_hardware_interface-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RestartController-request>) ostream)
  "Serializes a message object of type '<RestartController-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RestartController-request>) istream)
  "Deserializes a message object of type '<RestartController-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RestartController-request>)))
  "Returns string type for a service object of type '<RestartController-request>"
  "dynamixel_hardware_interface/RestartControllerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RestartController-request)))
  "Returns string type for a service object of type 'RestartController-request"
  "dynamixel_hardware_interface/RestartControllerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RestartController-request>)))
  "Returns md5sum for a message object of type '<RestartController-request>"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RestartController-request)))
  "Returns md5sum for a message object of type 'RestartController-request"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RestartController-request>)))
  "Returns full string definition for message of type '<RestartController-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RestartController-request)))
  "Returns full string definition for message of type 'RestartController-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RestartController-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RestartController-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RestartController-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude RestartController-response.msg.html

(cl:defclass <RestartController-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RestartController-response (<RestartController-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RestartController-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RestartController-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_hardware_interface-srv:<RestartController-response> is deprecated: use dynamixel_hardware_interface-srv:RestartController-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RestartController-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_hardware_interface-srv:success-val is deprecated.  Use dynamixel_hardware_interface-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RestartController-response>) ostream)
  "Serializes a message object of type '<RestartController-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RestartController-response>) istream)
  "Deserializes a message object of type '<RestartController-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RestartController-response>)))
  "Returns string type for a service object of type '<RestartController-response>"
  "dynamixel_hardware_interface/RestartControllerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RestartController-response)))
  "Returns string type for a service object of type 'RestartController-response"
  "dynamixel_hardware_interface/RestartControllerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RestartController-response>)))
  "Returns md5sum for a message object of type '<RestartController-response>"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RestartController-response)))
  "Returns md5sum for a message object of type 'RestartController-response"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RestartController-response>)))
  "Returns full string definition for message of type '<RestartController-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RestartController-response)))
  "Returns full string definition for message of type 'RestartController-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RestartController-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RestartController-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RestartController-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RestartController)))
  'RestartController-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RestartController)))
  'RestartController-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RestartController)))
  "Returns string type for a service object of type '<RestartController>"
  "dynamixel_hardware_interface/RestartController")