;; Auto-generated. Do not edit!


(when (boundp 'pavlov_mini_msgs::robot_state)
  (if (not (find-package "PAVLOV_MINI_MSGS"))
    (make-package "PAVLOV_MINI_MSGS"))
  (shadow 'robot_state (find-package "PAVLOV_MINI_MSGS")))
(unless (find-package "PAVLOV_MINI_MSGS::ROBOT_STATE")
  (make-package "PAVLOV_MINI_MSGS::ROBOT_STATE"))

(in-package "ROS")
;;//! \htmlinclude robot_state.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pavlov_mini_msgs::robot_state
  :super ros::object
  :slots (_header _pose _angular_velocity _linear_velocity _linear_acceleration _feet_fl_position _feet_fr_position _feet_bl_position _feet_br_position ))

(defmethod pavlov_mini_msgs::robot_state
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:linear_velocity __linear_velocity) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:feet_fl_position __feet_fl_position) (instance geometry_msgs::Vector3 :init))
    ((:feet_fr_position __feet_fr_position) (instance geometry_msgs::Vector3 :init))
    ((:feet_bl_position __feet_bl_position) (instance geometry_msgs::Vector3 :init))
    ((:feet_br_position __feet_br_position) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _angular_velocity __angular_velocity)
   (setq _linear_velocity __linear_velocity)
   (setq _linear_acceleration __linear_acceleration)
   (setq _feet_fl_position __feet_fl_position)
   (setq _feet_fr_position __feet_fr_position)
   (setq _feet_bl_position __feet_bl_position)
   (setq _feet_br_position __feet_br_position)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:linear_velocity
   (&rest __linear_velocity)
   (if (keywordp (car __linear_velocity))
       (send* _linear_velocity __linear_velocity)
     (progn
       (if __linear_velocity (setq _linear_velocity (car __linear_velocity)))
       _linear_velocity)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:feet_fl_position
   (&rest __feet_fl_position)
   (if (keywordp (car __feet_fl_position))
       (send* _feet_fl_position __feet_fl_position)
     (progn
       (if __feet_fl_position (setq _feet_fl_position (car __feet_fl_position)))
       _feet_fl_position)))
  (:feet_fr_position
   (&rest __feet_fr_position)
   (if (keywordp (car __feet_fr_position))
       (send* _feet_fr_position __feet_fr_position)
     (progn
       (if __feet_fr_position (setq _feet_fr_position (car __feet_fr_position)))
       _feet_fr_position)))
  (:feet_bl_position
   (&rest __feet_bl_position)
   (if (keywordp (car __feet_bl_position))
       (send* _feet_bl_position __feet_bl_position)
     (progn
       (if __feet_bl_position (setq _feet_bl_position (car __feet_bl_position)))
       _feet_bl_position)))
  (:feet_br_position
   (&rest __feet_br_position)
   (if (keywordp (car __feet_br_position))
       (send* _feet_br_position __feet_br_position)
     (progn
       (if __feet_br_position (setq _feet_br_position (car __feet_br_position)))
       _feet_br_position)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _linear_velocity
    (send _linear_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _feet_fl_position
    (send _feet_fl_position :serialization-length)
    ;; geometry_msgs/Vector3 _feet_fr_position
    (send _feet_fr_position :serialization-length)
    ;; geometry_msgs/Vector3 _feet_bl_position
    (send _feet_bl_position :serialization-length)
    ;; geometry_msgs/Vector3 _feet_br_position
    (send _feet_br_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; geometry_msgs/Vector3 _linear_velocity
       (send _linear_velocity :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; geometry_msgs/Vector3 _feet_fl_position
       (send _feet_fl_position :serialize s)
     ;; geometry_msgs/Vector3 _feet_fr_position
       (send _feet_fr_position :serialize s)
     ;; geometry_msgs/Vector3 _feet_bl_position
       (send _feet_bl_position :serialize s)
     ;; geometry_msgs/Vector3 _feet_br_position
       (send _feet_br_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _linear_velocity
     (send _linear_velocity :deserialize buf ptr-) (incf ptr- (send _linear_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _feet_fl_position
     (send _feet_fl_position :deserialize buf ptr-) (incf ptr- (send _feet_fl_position :serialization-length))
   ;; geometry_msgs/Vector3 _feet_fr_position
     (send _feet_fr_position :deserialize buf ptr-) (incf ptr- (send _feet_fr_position :serialization-length))
   ;; geometry_msgs/Vector3 _feet_bl_position
     (send _feet_bl_position :deserialize buf ptr-) (incf ptr- (send _feet_bl_position :serialization-length))
   ;; geometry_msgs/Vector3 _feet_br_position
     (send _feet_br_position :deserialize buf ptr-) (incf ptr- (send _feet_br_position :serialization-length))
   ;;
   self)
  )

(setf (get pavlov_mini_msgs::robot_state :md5sum-) "d00fcf8a1266c18340ee5163d127a2db")
(setf (get pavlov_mini_msgs::robot_state :datatype-) "pavlov_mini_msgs/robot_state")
(setf (get pavlov_mini_msgs::robot_state :definition-)
      "Header header
geometry_msgs/Pose    pose
geometry_msgs/Vector3 angular_velocity
geometry_msgs/Vector3 linear_velocity
geometry_msgs/Vector3 linear_acceleration
geometry_msgs/Vector3 feet_fl_position
geometry_msgs/Vector3 feet_fr_position
geometry_msgs/Vector3 feet_bl_position
geometry_msgs/Vector3 feet_br_position

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :pavlov_mini_msgs/robot_state "d00fcf8a1266c18340ee5163d127a2db")


