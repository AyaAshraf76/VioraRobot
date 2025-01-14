;; Auto-generated. Do not edit!


(when (boundp 'pavlov_mini_msgs::feet_pressure)
  (if (not (find-package "PAVLOV_MINI_MSGS"))
    (make-package "PAVLOV_MINI_MSGS"))
  (shadow 'feet_pressure (find-package "PAVLOV_MINI_MSGS")))
(unless (find-package "PAVLOV_MINI_MSGS::FEET_PRESSURE")
  (make-package "PAVLOV_MINI_MSGS::FEET_PRESSURE"))

(in-package "ROS")
;;//! \htmlinclude feet_pressure.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pavlov_mini_msgs::feet_pressure
  :super ros::object
  :slots (_header _leg_name _pressure_vector _feet_pos _feet_stance ))

(defmethod pavlov_mini_msgs::feet_pressure
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:leg_name __leg_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:pressure_vector __pressure_vector) ())
    ((:feet_pos __feet_pos) ())
    ((:feet_stance __feet_stance) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _leg_name __leg_name)
   (setq _pressure_vector __pressure_vector)
   (setq _feet_pos __feet_pos)
   (setq _feet_stance __feet_stance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:leg_name
   (&optional __leg_name)
   (if __leg_name (setq _leg_name __leg_name)) _leg_name)
  (:pressure_vector
   (&rest __pressure_vector)
   (if (keywordp (car __pressure_vector))
       (send* _pressure_vector __pressure_vector)
     (progn
       (if __pressure_vector (setq _pressure_vector (car __pressure_vector)))
       _pressure_vector)))
  (:feet_pos
   (&rest __feet_pos)
   (if (keywordp (car __feet_pos))
       (send* _feet_pos __feet_pos)
     (progn
       (if __feet_pos (setq _feet_pos (car __feet_pos)))
       _feet_pos)))
  (:feet_stance
   (&optional __feet_stance)
   (if __feet_stance (setq _feet_stance __feet_stance)) _feet_stance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _leg_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _leg_name)) 4
    ;; geometry_msgs/Point[] _pressure_vector
    (apply #'+ (send-all _pressure_vector :serialization-length)) 4
    ;; geometry_msgs/Point[] _feet_pos
    (apply #'+ (send-all _feet_pos :serialization-length)) 4
    ;; bool[] _feet_stance
    (* 1    (length _feet_stance)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _leg_name
     (write-long (length _leg_name) s)
     (dolist (elem _leg_name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Point[] _pressure_vector
     (write-long (length _pressure_vector) s)
     (dolist (elem _pressure_vector)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _feet_pos
     (write-long (length _feet_pos) s)
     (dolist (elem _feet_pos)
       (send elem :serialize s)
       )
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
   ;; string[] _leg_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _leg_name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _leg_name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Point[] _pressure_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pressure_vector (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _pressure_vector)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _feet_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feet_pos (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _feet_pos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
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

(setf (get pavlov_mini_msgs::feet_pressure :md5sum-) "30847eb632b3914317fa2e135cd9287a")
(setf (get pavlov_mini_msgs::feet_pressure :datatype-) "pavlov_mini_msgs/feet_pressure")
(setf (get pavlov_mini_msgs::feet_pressure :definition-)
      "Header header
string[] leg_name
geometry_msgs/Point[] pressure_vector
geometry_msgs/Point[] feet_pos
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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :pavlov_mini_msgs/feet_pressure "30847eb632b3914317fa2e135cd9287a")


