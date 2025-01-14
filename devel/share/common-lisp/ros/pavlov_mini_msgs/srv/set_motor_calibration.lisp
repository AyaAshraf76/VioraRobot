; Auto-generated. Do not edit!


(cl:in-package pavlov_mini_msgs-srv)


;//! \htmlinclude set_motor_calibration-request.msg.html

(cl:defclass <set_motor_calibration-request> (roslisp-msg-protocol:ros-message)
  ((servo_index
    :reader servo_index
    :initarg :servo_index
    :type cl:integer
    :initform 0)
   (setCalibration_servo
    :reader setCalibration_servo
    :initarg :setCalibration_servo
    :type cl:boolean
    :initform cl:nil)
   (min_calAngle
    :reader min_calAngle
    :initarg :min_calAngle
    :type cl:float
    :initform 0.0)
   (max_calAngle
    :reader max_calAngle
    :initarg :max_calAngle
    :type cl:float
    :initform 0.0)
   (min_posServo
    :reader min_posServo
    :initarg :min_posServo
    :type cl:float
    :initform 0.0)
   (max_posServo
    :reader max_posServo
    :initarg :max_posServo
    :type cl:float
    :initform 0.0)
   (min_posAngle
    :reader min_posAngle
    :initarg :min_posAngle
    :type cl:float
    :initform 0.0)
   (max_posAngle
    :reader max_posAngle
    :initarg :max_posAngle
    :type cl:float
    :initform 0.0)
   (min_lim_angle
    :reader min_lim_angle
    :initarg :min_lim_angle
    :type cl:float
    :initform 0.0)
   (max_lim_angle
    :reader max_lim_angle
    :initarg :max_lim_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_motor_calibration-request (<set_motor_calibration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_motor_calibration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_motor_calibration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pavlov_mini_msgs-srv:<set_motor_calibration-request> is deprecated: use pavlov_mini_msgs-srv:set_motor_calibration-request instead.")))

(cl:ensure-generic-function 'servo_index-val :lambda-list '(m))
(cl:defmethod servo_index-val ((m <set_motor_calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:servo_index-val is deprecated.  Use pavlov_mini_msgs-srv:servo_index instead.")
  (servo_index m))

(cl:ensure-generic-function 'setCalibration_servo-val :lambda-list '(m))
(cl:defmethod setCalibration_servo-val ((m <set_motor_calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:setCalibration_servo-val is deprecated.  Use pavlov_mini_msgs-srv:setCalibration_servo instead.")
  (setCalibration_servo m))

(cl:ensure-generic-function 'min_calAngle-val :lambda-list '(m))
(cl:defmethod min_calAngle-val ((m <set_motor_calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:min_calAngle-val is deprecated.  Use pavlov_mini_msgs-srv:min_calAngle instead.")
  (min_calAngle m))

(cl:ensure-generic-function 'max_calAngle-val :lambda-list '(m))
(cl:defmethod max_calAngle-val ((m <set_motor_calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:max_calAngle-val is deprecated.  Use pavlov_mini_msgs-srv:max_calAngle instead.")
  (max_calAngle m))

(cl:ensure-generic-function 'min_posServo-val :lambda-list '(m))
(cl:defmethod min_posServo-val ((m <set_motor_calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:min_posServo-val is deprecated.  Use pavlov_mini_msgs-srv:min_posServo instead.")
  (min_posServo m))

(cl:ensure-generic-function 'max_posServo-val :lambda-list '(m))
(cl:defmethod max_posServo-val ((m <set_motor_calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:max_posServo-val is deprecated.  Use pavlov_mini_msgs-srv:max_posServo instead.")
  (max_posServo m))

(cl:ensure-generic-function 'min_posAngle-val :lambda-list '(m))
(cl:defmethod min_posAngle-val ((m <set_motor_calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:min_posAngle-val is deprecated.  Use pavlov_mini_msgs-srv:min_posAngle instead.")
  (min_posAngle m))

(cl:ensure-generic-function 'max_posAngle-val :lambda-list '(m))
(cl:defmethod max_posAngle-val ((m <set_motor_calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:max_posAngle-val is deprecated.  Use pavlov_mini_msgs-srv:max_posAngle instead.")
  (max_posAngle m))

(cl:ensure-generic-function 'min_lim_angle-val :lambda-list '(m))
(cl:defmethod min_lim_angle-val ((m <set_motor_calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:min_lim_angle-val is deprecated.  Use pavlov_mini_msgs-srv:min_lim_angle instead.")
  (min_lim_angle m))

(cl:ensure-generic-function 'max_lim_angle-val :lambda-list '(m))
(cl:defmethod max_lim_angle-val ((m <set_motor_calibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:max_lim_angle-val is deprecated.  Use pavlov_mini_msgs-srv:max_lim_angle instead.")
  (max_lim_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_motor_calibration-request>) ostream)
  "Serializes a message object of type '<set_motor_calibration-request>"
  (cl:let* ((signed (cl:slot-value msg 'servo_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setCalibration_servo) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_calAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_calAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_posServo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_posServo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_posAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_posAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_lim_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_lim_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_motor_calibration-request>) istream)
  "Deserializes a message object of type '<set_motor_calibration-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'setCalibration_servo) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_calAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_calAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_posServo) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_posServo) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_posAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_posAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_lim_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_lim_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_motor_calibration-request>)))
  "Returns string type for a service object of type '<set_motor_calibration-request>"
  "pavlov_mini_msgs/set_motor_calibrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_motor_calibration-request)))
  "Returns string type for a service object of type 'set_motor_calibration-request"
  "pavlov_mini_msgs/set_motor_calibrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_motor_calibration-request>)))
  "Returns md5sum for a message object of type '<set_motor_calibration-request>"
  "7362753e9baf3d3776513533ce7093fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_motor_calibration-request)))
  "Returns md5sum for a message object of type 'set_motor_calibration-request"
  "7362753e9baf3d3776513533ce7093fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_motor_calibration-request>)))
  "Returns full string definition for message of type '<set_motor_calibration-request>"
  (cl:format cl:nil "#request constants~%int32   servo_index~%bool    setCalibration_servo~%float32 min_calAngle~%float32 max_calAngle~%float32 min_posServo~%float32 max_posServo~%float32 min_posAngle~%float32 max_posAngle~%float32 min_lim_angle~%float32 max_lim_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_motor_calibration-request)))
  "Returns full string definition for message of type 'set_motor_calibration-request"
  (cl:format cl:nil "#request constants~%int32   servo_index~%bool    setCalibration_servo~%float32 min_calAngle~%float32 max_calAngle~%float32 min_posServo~%float32 max_posServo~%float32 min_posAngle~%float32 max_posAngle~%float32 min_lim_angle~%float32 max_lim_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_motor_calibration-request>))
  (cl:+ 0
     4
     1
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_motor_calibration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_motor_calibration-request
    (cl:cons ':servo_index (servo_index msg))
    (cl:cons ':setCalibration_servo (setCalibration_servo msg))
    (cl:cons ':min_calAngle (min_calAngle msg))
    (cl:cons ':max_calAngle (max_calAngle msg))
    (cl:cons ':min_posServo (min_posServo msg))
    (cl:cons ':max_posServo (max_posServo msg))
    (cl:cons ':min_posAngle (min_posAngle msg))
    (cl:cons ':max_posAngle (max_posAngle msg))
    (cl:cons ':min_lim_angle (min_lim_angle msg))
    (cl:cons ':max_lim_angle (max_lim_angle msg))
))
;//! \htmlinclude set_motor_calibration-response.msg.html

(cl:defclass <set_motor_calibration-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass set_motor_calibration-response (<set_motor_calibration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_motor_calibration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_motor_calibration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pavlov_mini_msgs-srv:<set_motor_calibration-response> is deprecated: use pavlov_mini_msgs-srv:set_motor_calibration-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <set_motor_calibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:result-val is deprecated.  Use pavlov_mini_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <set_motor_calibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-srv:info-val is deprecated.  Use pavlov_mini_msgs-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_motor_calibration-response>) ostream)
  "Serializes a message object of type '<set_motor_calibration-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_motor_calibration-response>) istream)
  "Deserializes a message object of type '<set_motor_calibration-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_motor_calibration-response>)))
  "Returns string type for a service object of type '<set_motor_calibration-response>"
  "pavlov_mini_msgs/set_motor_calibrationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_motor_calibration-response)))
  "Returns string type for a service object of type 'set_motor_calibration-response"
  "pavlov_mini_msgs/set_motor_calibrationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_motor_calibration-response>)))
  "Returns md5sum for a message object of type '<set_motor_calibration-response>"
  "7362753e9baf3d3776513533ce7093fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_motor_calibration-response)))
  "Returns md5sum for a message object of type 'set_motor_calibration-response"
  "7362753e9baf3d3776513533ce7093fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_motor_calibration-response>)))
  "Returns full string definition for message of type '<set_motor_calibration-response>"
  (cl:format cl:nil "#response constants~%bool result~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_motor_calibration-response)))
  "Returns full string definition for message of type 'set_motor_calibration-response"
  (cl:format cl:nil "#response constants~%bool result~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_motor_calibration-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_motor_calibration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_motor_calibration-response
    (cl:cons ':result (result msg))
    (cl:cons ':info (info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_motor_calibration)))
  'set_motor_calibration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_motor_calibration)))
  'set_motor_calibration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_motor_calibration)))
  "Returns string type for a service object of type '<set_motor_calibration>"
  "pavlov_mini_msgs/set_motor_calibration")