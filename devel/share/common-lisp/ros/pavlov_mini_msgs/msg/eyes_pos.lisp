; Auto-generated. Do not edit!


(cl:in-package pavlov_mini_msgs-msg)


;//! \htmlinclude eyes_pos.msg.html

(cl:defclass <eyes_pos> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass eyes_pos (<eyes_pos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <eyes_pos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'eyes_pos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pavlov_mini_msgs-msg:<eyes_pos> is deprecated: use pavlov_mini_msgs-msg:eyes_pos instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <eyes_pos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-msg:position-val is deprecated.  Use pavlov_mini_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <eyes_pos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pavlov_mini_msgs-msg:velocity-val is deprecated.  Use pavlov_mini_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <eyes_pos>) ostream)
  "Serializes a message object of type '<eyes_pos>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <eyes_pos>) istream)
  "Deserializes a message object of type '<eyes_pos>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<eyes_pos>)))
  "Returns string type for a message object of type '<eyes_pos>"
  "pavlov_mini_msgs/eyes_pos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'eyes_pos)))
  "Returns string type for a message object of type 'eyes_pos"
  "pavlov_mini_msgs/eyes_pos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<eyes_pos>)))
  "Returns md5sum for a message object of type '<eyes_pos>"
  "589dbd8c358d253de2ab5441acd36a2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'eyes_pos)))
  "Returns md5sum for a message object of type 'eyes_pos"
  "589dbd8c358d253de2ab5441acd36a2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<eyes_pos>)))
  "Returns full string definition for message of type '<eyes_pos>"
  (cl:format cl:nil "geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'eyes_pos)))
  "Returns full string definition for message of type 'eyes_pos"
  (cl:format cl:nil "geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <eyes_pos>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <eyes_pos>))
  "Converts a ROS message object to a list"
  (cl:list 'eyes_pos
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
))
