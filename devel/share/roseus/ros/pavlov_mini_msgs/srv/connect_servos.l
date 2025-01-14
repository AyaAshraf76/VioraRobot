;; Auto-generated. Do not edit!


(when (boundp 'pavlov_mini_msgs::connect_servos)
  (if (not (find-package "PAVLOV_MINI_MSGS"))
    (make-package "PAVLOV_MINI_MSGS"))
  (shadow 'connect_servos (find-package "PAVLOV_MINI_MSGS")))
(unless (find-package "PAVLOV_MINI_MSGS::CONNECT_SERVOS")
  (make-package "PAVLOV_MINI_MSGS::CONNECT_SERVOS"))
(unless (find-package "PAVLOV_MINI_MSGS::CONNECT_SERVOSREQUEST")
  (make-package "PAVLOV_MINI_MSGS::CONNECT_SERVOSREQUEST"))
(unless (find-package "PAVLOV_MINI_MSGS::CONNECT_SERVOSRESPONSE")
  (make-package "PAVLOV_MINI_MSGS::CONNECT_SERVOSRESPONSE"))

(in-package "ROS")





(defclass pavlov_mini_msgs::connect_servosRequest
  :super ros::object
  :slots (_connect ))

(defmethod pavlov_mini_msgs::connect_servosRequest
  (:init
   (&key
    ((:connect __connect) nil)
    )
   (send-super :init)
   (setq _connect __connect)
   self)
  (:connect
   (&optional (__connect :null))
   (if (not (eq __connect :null)) (setq _connect __connect)) _connect)
  (:serialization-length
   ()
   (+
    ;; bool _connect
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _connect
       (if _connect (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _connect
     (setq _connect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pavlov_mini_msgs::connect_servosResponse
  :super ros::object
  :slots (_result ))

(defmethod pavlov_mini_msgs::connect_servosResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pavlov_mini_msgs::connect_servos
  :super ros::object
  :slots ())

(setf (get pavlov_mini_msgs::connect_servos :md5sum-) "8060ec40ead700beb3403ba1e0f5ca76")
(setf (get pavlov_mini_msgs::connect_servos :datatype-) "pavlov_mini_msgs/connect_servos")
(setf (get pavlov_mini_msgs::connect_servos :request) pavlov_mini_msgs::connect_servosRequest)
(setf (get pavlov_mini_msgs::connect_servos :response) pavlov_mini_msgs::connect_servosResponse)

(defmethod pavlov_mini_msgs::connect_servosRequest
  (:response () (instance pavlov_mini_msgs::connect_servosResponse :init)))

(setf (get pavlov_mini_msgs::connect_servosRequest :md5sum-) "8060ec40ead700beb3403ba1e0f5ca76")
(setf (get pavlov_mini_msgs::connect_servosRequest :datatype-) "pavlov_mini_msgs/connect_servosRequest")
(setf (get pavlov_mini_msgs::connect_servosRequest :definition-)
      "#request constants
bool connect
---
#response constants
bool result



")

(setf (get pavlov_mini_msgs::connect_servosResponse :md5sum-) "8060ec40ead700beb3403ba1e0f5ca76")
(setf (get pavlov_mini_msgs::connect_servosResponse :datatype-) "pavlov_mini_msgs/connect_servosResponse")
(setf (get pavlov_mini_msgs::connect_servosResponse :definition-)
      "#request constants
bool connect
---
#response constants
bool result



")



(provide :pavlov_mini_msgs/connect_servos "8060ec40ead700beb3403ba1e0f5ca76")


