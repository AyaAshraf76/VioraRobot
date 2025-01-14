; Auto-generated. Do not edit!


(cl:in-package pavlov_mini_msgs-msg)


;//! \htmlinclude contact_detection.msg.html

(cl:defclass <contact_detection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (feet_stance
    :reader feet_stance
    :initarg :feet_stance
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass contact_detection (<contact_detection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <contact_detection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'contact_detection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pavlov_mini_msgs-msg:<contact_detection> is deprecated: use pavlov_mini_msgs-msg:contact_detection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <contact_detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-msg:header-val is deprecated.  Use pavlov_mini_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'feet_stance-val :lambda-list '(m))
(cl:defmethod feet_stance-val ((m <contact_detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-msg:feet_stance-val is deprecated.  Use pavlov_mini_msgs-msg:feet_stance instead.")
  (feet_stance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <contact_detection>) ostream)
  "Serializes a message object of type '<contact_detection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feet_stance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'feet_stance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <contact_detection>) istream)
  "Deserializes a message object of type '<contact_detection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feet_stance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feet_stance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<contact_detection>)))
  "Returns string type for a message object of type '<contact_detection>"
  "pavlov_mini_msgs/contact_detection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'contact_detection)))
  "Returns string type for a message object of type 'contact_detection"
  "pavlov_mini_msgs/contact_detection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<contact_detection>)))
  "Returns md5sum for a message object of type '<contact_detection>"
  "b9731897385d5a63ef24c7710bbc7fd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'contact_detection)))
  "Returns md5sum for a message object of type 'contact_detection"
  "b9731897385d5a63ef24c7710bbc7fd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<contact_detection>)))
  "Returns full string definition for message of type '<contact_detection>"
  (cl:format cl:nil "Header header~%bool[] feet_stance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'contact_detection)))
  "Returns full string definition for message of type 'contact_detection"
  (cl:format cl:nil "Header header~%bool[] feet_stance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <contact_detection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feet_stance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <contact_detection>))
  "Converts a ROS message object to a list"
  (cl:list 'contact_detection
    (cl:cons ':header (header msg))
    (cl:cons ':feet_stance (feet_stance msg))
))
