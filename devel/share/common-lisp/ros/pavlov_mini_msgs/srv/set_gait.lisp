; Auto-generated. Do not edit!


(cl:in-package pavlov_mini_msgs-srv)


;//! \htmlinclude set_gait-request.msg.html

(cl:defclass <set_gait-request> (roslisp-msg-protocol:ros-message)
  ((gait_filename
    :reader gait_filename
    :initarg :gait_filename
    :type cl:string
    :initform ""))
)

(cl:defclass set_gait-request (<set_gait-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_gait-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_gait-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pavlov_mini_msgs-srv:<set_gait-request> is deprecated: use pavlov_mini_msgs-srv:set_gait-request instead.")))

(cl:ensure-generic-function 'gait_filename-val :lambda-list '(m))
(cl:defmethod gait_filename-val ((m <set_gait-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:gait_filename-val is deprecated.  Use pavlov_mini_msgs-srv:gait_filename instead.")
  (gait_filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_gait-request>) ostream)
  "Serializes a message object of type '<set_gait-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gait_filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gait_filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_gait-request>) istream)
  "Deserializes a message object of type '<set_gait-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gait_filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gait_filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_gait-request>)))
  "Returns string type for a service object of type '<set_gait-request>"
  "pavlov_mini_msgs/set_gaitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_gait-request)))
  "Returns string type for a service object of type 'set_gait-request"
  "pavlov_mini_msgs/set_gaitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_gait-request>)))
  "Returns md5sum for a message object of type '<set_gait-request>"
  "4fcd3db9d0e7c7728fccbf1980f97de1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_gait-request)))
  "Returns md5sum for a message object of type 'set_gait-request"
  "4fcd3db9d0e7c7728fccbf1980f97de1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_gait-request>)))
  "Returns full string definition for message of type '<set_gait-request>"
  (cl:format cl:nil "#request constants~%string gait_filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_gait-request)))
  "Returns full string definition for message of type 'set_gait-request"
  (cl:format cl:nil "#request constants~%string gait_filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_gait-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'gait_filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_gait-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_gait-request
    (cl:cons ':gait_filename (gait_filename msg))
))
;//! \htmlinclude set_gait-response.msg.html

(cl:defclass <set_gait-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass set_gait-response (<set_gait-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_gait-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_gait-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pavlov_mini_msgs-srv:<set_gait-response> is deprecated: use pavlov_mini_msgs-srv:set_gait-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <set_gait-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:result-val is deprecated.  Use pavlov_mini_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <set_gait-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:info-val is deprecated.  Use pavlov_mini_msgs-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_gait-response>) ostream)
  "Serializes a message object of type '<set_gait-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_gait-response>) istream)
  "Deserializes a message object of type '<set_gait-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_gait-response>)))
  "Returns string type for a service object of type '<set_gait-response>"
  "pavlov_mini_msgs/set_gaitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_gait-response)))
  "Returns string type for a service object of type 'set_gait-response"
  "pavlov_mini_msgs/set_gaitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_gait-response>)))
  "Returns md5sum for a message object of type '<set_gait-response>"
  "4fcd3db9d0e7c7728fccbf1980f97de1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_gait-response)))
  "Returns md5sum for a message object of type 'set_gait-response"
  "4fcd3db9d0e7c7728fccbf1980f97de1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_gait-response>)))
  "Returns full string definition for message of type '<set_gait-response>"
  (cl:format cl:nil "#response constants~%bool result~%string info~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_gait-response)))
  "Returns full string definition for message of type 'set_gait-response"
  (cl:format cl:nil "#response constants~%bool result~%string info~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_gait-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_gait-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_gait-response
    (cl:cons ':result (result msg))
    (cl:cons ':info (info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_gait)))
  'set_gait-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_gait)))
  'set_gait-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_gait)))
  "Returns string type for a service object of type '<set_gait>"
  "pavlov_mini_msgs/set_gait")