;; Auto-generated. Do not edit!


(when (boundp 'pavlov_mini_msgs::set_face)
  (if (not (find-package "PAVLOV_MINI_MSGS"))
    (make-package "PAVLOV_MINI_MSGS"))
  (shadow 'set_face (find-package "PAVLOV_MINI_MSGS")))
(unless (find-package "PAVLOV_MINI_MSGS::SET_FACE")
  (make-package "PAVLOV_MINI_MSGS::SET_FACE"))
(unless (find-package "PAVLOV_MINI_MSGS::SET_FACEREQUEST")
  (make-package "PAVLOV_MINI_MSGS::SET_FACEREQUEST"))
(unless (find-package "PAVLOV_MINI_MSGS::SET_FACERESPONSE")
  (make-package "PAVLOV_MINI_MSGS::SET_FACERESPONSE"))

(in-package "ROS")





(defclass pavlov_mini_msgs::set_faceRequest
  :super ros::object
  :slots (_style _blink_prob ))

(defmethod pavlov_mini_msgs::set_faceRequest
  (:init
   (&key
    ((:style __style) "")
    ((:blink_prob __blink_prob) 0.0)
    )
   (send-super :init)
   (setq _style (string __style))
   (setq _blink_prob (float __blink_prob))
   self)
  (:style
   (&optional __style)
   (if __style (setq _style __style)) _style)
  (:blink_prob
   (&optional __blink_prob)
   (if __blink_prob (setq _blink_prob __blink_prob)) _blink_prob)
  (:serialization-length
   ()
   (+
    ;; string _style
    4 (length _style)
    ;; float32 _blink_prob
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _style
       (write-long (length _style) s) (princ _style s)
     ;; float32 _blink_prob
       (sys::poke _blink_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _style
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _style (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _blink_prob
     (setq _blink_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pavlov_mini_msgs::set_faceResponse
  :super ros::object
  :slots ())

(defmethod pavlov_mini_msgs::set_faceResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pavlov_mini_msgs::set_face
  :super ros::object
  :slots ())

(setf (get pavlov_mini_msgs::set_face :md5sum-) "ec7fd37ba165f460fe63840aafdb14b4")
(setf (get pavlov_mini_msgs::set_face :datatype-) "pavlov_mini_msgs/set_face")
(setf (get pavlov_mini_msgs::set_face :request) pavlov_mini_msgs::set_faceRequest)
(setf (get pavlov_mini_msgs::set_face :response) pavlov_mini_msgs::set_faceResponse)

(defmethod pavlov_mini_msgs::set_faceRequest
  (:response () (instance pavlov_mini_msgs::set_faceResponse :init)))

(setf (get pavlov_mini_msgs::set_faceRequest :md5sum-) "ec7fd37ba165f460fe63840aafdb14b4")
(setf (get pavlov_mini_msgs::set_faceRequest :datatype-) "pavlov_mini_msgs/set_faceRequest")
(setf (get pavlov_mini_msgs::set_faceRequest :definition-)
      "#request constants
string  style
float32 blink_prob
---
#response constants

")

(setf (get pavlov_mini_msgs::set_faceResponse :md5sum-) "ec7fd37ba165f460fe63840aafdb14b4")
(setf (get pavlov_mini_msgs::set_faceResponse :datatype-) "pavlov_mini_msgs/set_faceResponse")
(setf (get pavlov_mini_msgs::set_faceResponse :definition-)
      "#request constants
string  style
float32 blink_prob
---
#response constants

")



(provide :pavlov_mini_msgs/set_face "ec7fd37ba165f460fe63840aafdb14b4")


