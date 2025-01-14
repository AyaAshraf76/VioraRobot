; Auto-generated. Do not edit!


(cl:in-package pavlov_mini_msgs-srv)


;//! \htmlinclude set_face-request.msg.html

(cl:defclass <set_face-request> (roslisp-msg-protocol:ros-message)
  ((style
    :reader style
    :initarg :style
    :type cl:string
    :initform "")
   (blink_prob
    :reader blink_prob
    :initarg :blink_prob
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_face-request (<set_face-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_face-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_face-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pavlov_mini_msgs-srv:<set_face-request> is deprecated: use pavlov_mini_msgs-srv:set_face-request instead.")))

(cl:ensure-generic-function 'style-val :lambda-list '(m))
(cl:defmethod style-val ((m <set_face-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:style-val is deprecated.  Use pavlov_mini_msgs-srv:style instead.")
  (style m))

(cl:ensure-generic-function 'blink_prob-val :lambda-list '(m))
(cl:defmethod blink_prob-val ((m <set_face-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:blink_prob-val is deprecated.  Use pavlov_mini_msgs-srv:blink_prob instead.")
  (blink_prob m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_face-request>) ostream)
  "Serializes a message object of type '<set_face-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'style))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'style))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'blink_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_face-request>) istream)
  "Deserializes a message object of type '<set_face-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'style) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'style) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'blink_prob) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_face-request>)))
  "Returns string type for a service object of type '<set_face-request>"
  "pavlov_mini_msgs/set_faceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_face-request)))
  "Returns string type for a service object of type 'set_face-request"
  "pavlov_mini_msgs/set_faceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_face-request>)))
  "Returns md5sum for a message object of type '<set_face-request>"
  "ec7fd37ba165f460fe63840aafdb14b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_face-request)))
  "Returns md5sum for a message object of type 'set_face-request"
  "ec7fd37ba165f460fe63840aafdb14b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_face-request>)))
  "Returns full string definition for message of type '<set_face-request>"
  (cl:format cl:nil "#request constants~%string  style~%float32 blink_prob~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_face-request)))
  "Returns full string definition for message of type 'set_face-request"
  (cl:format cl:nil "#request constants~%string  style~%float32 blink_prob~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_face-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'style))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_face-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_face-request
    (cl:cons ':style (style msg))
    (cl:cons ':blink_prob (blink_prob msg))
))
;//! \htmlinclude set_face-response.msg.html

(cl:defclass <set_face-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass set_face-response (<set_face-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_face-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_face-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pavlov_mini_msgs-srv:<set_face-response> is deprecated: use pavlov_mini_msgs-srv:set_face-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_face-response>) ostream)
  "Serializes a message object of type '<set_face-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_face-response>) istream)
  "Deserializes a message object of type '<set_face-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_face-response>)))
  "Returns string type for a service object of type '<set_face-response>"
  "pavlov_mini_msgs/set_faceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_face-response)))
  "Returns string type for a service object of type 'set_face-response"
  "pavlov_mini_msgs/set_faceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_face-response>)))
  "Returns md5sum for a message object of type '<set_face-response>"
  "ec7fd37ba165f460fe63840aafdb14b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_face-response)))
  "Returns md5sum for a message object of type 'set_face-response"
  "ec7fd37ba165f460fe63840aafdb14b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_face-response>)))
  "Returns full string definition for message of type '<set_face-response>"
  (cl:format cl:nil "#response constants~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_face-response)))
  "Returns full string definition for message of type 'set_face-response"
  (cl:format cl:nil "#response constants~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_face-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_face-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_face-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_face)))
  'set_face-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_face)))
  'set_face-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_face)))
  "Returns string type for a service object of type '<set_face>"
  "pavlov_mini_msgs/set_face")