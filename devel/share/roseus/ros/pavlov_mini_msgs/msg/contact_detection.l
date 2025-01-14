;; Auto-generated. Do not edit!


(when (boundp 'pavlov_mini_msgs::contact_detection)
  (if (not (find-package "PAVLOV_MINI_MSGS"))
    (make-package "PAVLOV_MINI_MSGS"))
  (shadow 'contact_detection (find-package "PAVLOV_MINI_MSGS")))
(unless (find-package "PAVLOV_MINI_MSGS::CONTACT_DETECTION")
  (make-package "PAVLOV_MINI_MSGS::CONTACT_DETECTION"))

(in-package "ROS")
;;//! \htmlinclude contact_detection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pavlov_mini_msgs::contact_detection
  :super ros::object
  :slots (_header _feet_stance ))

(defmethod pavlov_mini_msgs::contact_detection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:feet_stance __feet_stance) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _feet_stance __feet_stance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:feet_stance
   (&optional __feet_stance)
   (if __feet_stance (setq _feet_stance __feet_stance)) _feet_stance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool[] _feet_stance
    (* 1    (length _feet_stance)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool[] _feet_stance
     (write-long (length _feet_stance) s)
     (dotimes (i (length _feet_stance))
       (if (elt _feet_stance i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool[] _feet_stance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feet_stance (make-list n))
     (dotimes (i n)
     (setf (elt _feet_stance i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get pavlov_mini_msgs::contact_detection :md5sum-) "b9731897385d5a63ef24c7710bbc7fd1")
(setf (get pavlov_mini_msgs::contact_detection :datatype-) "pavlov_mini_msgs/contact_detection")
(setf (get pavlov_mini_msgs::contact_detection :definition-)
      "Header header
bool[] feet_stance

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

")



(provide :pavlov_mini_msgs/contact_detection "b9731897385d5a63ef24c7710bbc7fd1")


