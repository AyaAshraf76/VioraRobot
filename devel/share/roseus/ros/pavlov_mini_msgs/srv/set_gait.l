;; Auto-generated. Do not edit!


(when (boundp 'pavlov_mini_msgs::set_gait)
  (if (not (find-package "PAVLOV_MINI_MSGS"))
    (make-package "PAVLOV_MINI_MSGS"))
  (shadow 'set_gait (find-package "PAVLOV_MINI_MSGS")))
(unless (find-package "PAVLOV_MINI_MSGS::SET_GAIT")
  (make-package "PAVLOV_MINI_MSGS::SET_GAIT"))
(unless (find-package "PAVLOV_MINI_MSGS::SET_GAITREQUEST")
  (make-package "PAVLOV_MINI_MSGS::SET_GAITREQUEST"))
(unless (find-package "PAVLOV_MINI_MSGS::SET_GAITRESPONSE")
  (make-package "PAVLOV_MINI_MSGS::SET_GAITRESPONSE"))

(in-package "ROS")





(defclass pavlov_mini_msgs::set_gaitRequest
  :super ros::object
  :slots (_gait_filename ))

(defmethod pavlov_mini_msgs::set_gaitRequest
  (:init
   (&key
    ((:gait_filename __gait_filename) "")
    )
   (send-super :init)
   (setq _gait_filename (string __gait_filename))
   self)
  (:gait_filename
   (&optional __gait_filename)
   (if __gait_filename (setq _gait_filename __gait_filename)) _gait_filename)
  (:serialization-length
   ()
   (+
    ;; string _gait_filename
    4 (length _gait_filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gait_filename
       (write-long (length _gait_filename) s) (princ _gait_filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gait_filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gait_filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pavlov_mini_msgs::set_gaitResponse
  :super ros::object
  :slots (_result _info ))

(defmethod pavlov_mini_msgs::set_gaitResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:info __info) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _info (string __info))
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pavlov_mini_msgs::set_gait
  :super ros::object
  :slots ())

(setf (get pavlov_mini_msgs::set_gait :md5sum-) "4fcd3db9d0e7c7728fccbf1980f97de1")
(setf (get pavlov_mini_msgs::set_gait :datatype-) "pavlov_mini_msgs/set_gait")
(setf (get pavlov_mini_msgs::set_gait :request) pavlov_mini_msgs::set_gaitRequest)
(setf (get pavlov_mini_msgs::set_gait :response) pavlov_mini_msgs::set_gaitResponse)

(defmethod pavlov_mini_msgs::set_gaitRequest
  (:response () (instance pavlov_mini_msgs::set_gaitResponse :init)))

(setf (get pavlov_mini_msgs::set_gaitRequest :md5sum-) "4fcd3db9d0e7c7728fccbf1980f97de1")
(setf (get pavlov_mini_msgs::set_gaitRequest :datatype-) "pavlov_mini_msgs/set_gaitRequest")
(setf (get pavlov_mini_msgs::set_gaitRequest :definition-)
      "#request constants
string gait_filename
---
#response constants
bool result
string info


")

(setf (get pavlov_mini_msgs::set_gaitResponse :md5sum-) "4fcd3db9d0e7c7728fccbf1980f97de1")
(setf (get pavlov_mini_msgs::set_gaitResponse :datatype-) "pavlov_mini_msgs/set_gaitResponse")
(setf (get pavlov_mini_msgs::set_gaitResponse :definition-)
      "#request constants
string gait_filename
---
#response constants
bool result
string info


")



(provide :pavlov_mini_msgs/set_gait "4fcd3db9d0e7c7728fccbf1980f97de1")


