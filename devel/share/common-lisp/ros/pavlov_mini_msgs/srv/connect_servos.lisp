; Auto-generated. Do not edit!


(cl:in-package pavlov_mini_msgs-srv)


;//! \htmlinclude connect_servos-request.msg.html

(cl:defclass <connect_servos-request> (roslisp-msg-protocol:ros-message)
  ((connect
    :reader connect
    :initarg :connect
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass connect_servos-request (<connect_servos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <connect_servos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'connect_servos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pavlov_mini_msgs-srv:<connect_servos-request> is deprecated: use pavlov_mini_msgs-srv:connect_servos-request instead.")))

(cl:ensure-generic-function 'connect-val :lambda-list '(m))
(cl:defmethod connect-val ((m <connect_servos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:connect-val is deprecated.  Use pavlov_mini_msgs-srv:connect instead.")
  (connect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <connect_servos-request>) ostream)
  "Serializes a message object of type '<connect_servos-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connect) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <connect_servos-request>) istream)
  "Deserializes a message object of type '<connect_servos-request>"
    (cl:setf (cl:slot-value msg 'connect) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<connect_servos-request>)))
  "Returns string type for a service object of type '<connect_servos-request>"
  "pavlov_mini_msgs/connect_servosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'connect_servos-request)))
  "Returns string type for a service object of type 'connect_servos-request"
  "pavlov_mini_msgs/connect_servosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<connect_servos-request>)))
  "Returns md5sum for a message object of type '<connect_servos-request>"
  "8060ec40ead700beb3403ba1e0f5ca76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'connect_servos-request)))
  "Returns md5sum for a message object of type 'connect_servos-request"
  "8060ec40ead700beb3403ba1e0f5ca76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<connect_servos-request>)))
  "Returns full string definition for message of type '<connect_servos-request>"
  (cl:format cl:nil "#request constants~%bool connect~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'connect_servos-request)))
  "Returns full string definition for message of type 'connect_servos-request"
  (cl:format cl:nil "#request constants~%bool connect~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <connect_servos-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <connect_servos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'connect_servos-request
    (cl:cons ':connect (connect msg))
))
;//! \htmlinclude connect_servos-response.msg.html

(cl:defclass <connect_servos-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass connect_servos-response (<connect_servos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <connect_servos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'connect_servos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pavlov_mini_msgs-srv:<connect_servos-response> is deprecated: use pavlov_mini_msgs-srv:connect_servos-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <connect_servos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:result-val is deprecated.  Use pavlov_mini_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <connect_servos-response>) ostream)
  "Serializes a message object of type '<connect_servos-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <connect_servos-response>) istream)
  "Deserializes a message object of type '<connect_servos-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<connect_servos-response>)))
  "Returns string type for a service object of type '<connect_servos-response>"
  "pavlov_mini_msgs/connect_servosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'connect_servos-response)))
  "Returns string type for a service object of type 'connect_servos-response"
  "pavlov_mini_msgs/connect_servosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<connect_servos-response>)))
  "Returns md5sum for a message object of type '<connect_servos-response>"
  "8060ec40ead700beb3403ba1e0f5ca76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'connect_servos-response)))
  "Returns md5sum for a message object of type 'connect_servos-response"
  "8060ec40ead700beb3403ba1e0f5ca76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<connect_servos-response>)))
  "Returns full string definition for message of type '<connect_servos-response>"
  (cl:format cl:nil "#response constants~%bool result~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'connect_servos-response)))
  "Returns full string definition for message of type 'connect_servos-response"
  (cl:format cl:nil "#response constants~%bool result~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <connect_servos-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <connect_servos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'connect_servos-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'connect_servos)))
  'connect_servos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'connect_servos)))
  'connect_servos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'connect_servos)))
  "Returns string type for a service object of type '<connect_servos>"
  "pavlov_mini_msgs/connect_servos")