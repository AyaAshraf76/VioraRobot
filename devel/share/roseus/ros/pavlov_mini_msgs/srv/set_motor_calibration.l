;; Auto-generated. Do not edit!


(when (boundp 'pavlov_mini_msgs::set_motor_calibration)
  (if (not (find-package "PAVLOV_MINI_MSGS"))
    (make-package "PAVLOV_MINI_MSGS"))
  (shadow 'set_motor_calibration (find-package "PAVLOV_MINI_MSGS")))
(unless (find-package "PAVLOV_MINI_MSGS::SET_MOTOR_CALIBRATION")
  (make-package "PAVLOV_MINI_MSGS::SET_MOTOR_CALIBRATION"))
(unless (find-package "PAVLOV_MINI_MSGS::SET_MOTOR_CALIBRATIONREQUEST")
  (make-package "PAVLOV_MINI_MSGS::SET_MOTOR_CALIBRATIONREQUEST"))
(unless (find-package "PAVLOV_MINI_MSGS::SET_MOTOR_CALIBRATIONRESPONSE")
  (make-package "PAVLOV_MINI_MSGS::SET_MOTOR_CALIBRATIONRESPONSE"))

(in-package "ROS")





(defclass pavlov_mini_msgs::set_motor_calibrationRequest
  :super ros::object
  :slots (_servo_index _setCalibration_servo _min_calAngle _max_calAngle _min_posServo _max_posServo _min_posAngle _max_posAngle _min_lim_angle _max_lim_angle ))

(defmethod pavlov_mini_msgs::set_motor_calibrationRequest
  (:init
   (&key
    ((:servo_index __servo_index) 0)
    ((:setCalibration_servo __setCalibration_servo) nil)
    ((:min_calAngle __min_calAngle) 0.0)
    ((:max_calAngle __max_calAngle) 0.0)
    ((:min_posServo __min_posServo) 0.0)
    ((:max_posServo __max_posServo) 0.0)
    ((:min_posAngle __min_posAngle) 0.0)
    ((:max_posAngle __max_posAngle) 0.0)
    ((:min_lim_angle __min_lim_angle) 0.0)
    ((:max_lim_angle __max_lim_angle) 0.0)
    )
   (send-super :init)
   (setq _servo_index (round __servo_index))
   (setq _setCalibration_servo __setCalibration_servo)
   (setq _min_calAngle (float __min_calAngle))
   (setq _max_calAngle (float __max_calAngle))
   (setq _min_posServo (float __min_posServo))
   (setq _max_posServo (float __max_posServo))
   (setq _min_posAngle (float __min_posAngle))
   (setq _max_posAngle (float __max_posAngle))
   (setq _min_lim_angle (float __min_lim_angle))
   (setq _max_lim_angle (float __max_lim_angle))
   self)
  (:servo_index
   (&optional __servo_index)
   (if __servo_index (setq _servo_index __servo_index)) _servo_index)
  (:setCalibration_servo
   (&optional (__setCalibration_servo :null))
   (if (not (eq __setCalibration_servo :null)) (setq _setCalibration_servo __setCalibration_servo)) _setCalibration_servo)
  (:min_calAngle
   (&optional __min_calAngle)
   (if __min_calAngle (setq _min_calAngle __min_calAngle)) _min_calAngle)
  (:max_calAngle
   (&optional __max_calAngle)
   (if __max_calAngle (setq _max_calAngle __max_calAngle)) _max_calAngle)
  (:min_posServo
   (&optional __min_posServo)
   (if __min_posServo (setq _min_posServo __min_posServo)) _min_posServo)
  (:max_posServo
   (&optional __max_posServo)
   (if __max_posServo (setq _max_posServo __max_posServo)) _max_posServo)
  (:min_posAngle
   (&optional __min_posAngle)
   (if __min_posAngle (setq _min_posAngle __min_posAngle)) _min_posAngle)
  (:max_posAngle
   (&optional __max_posAngle)
   (if __max_posAngle (setq _max_posAngle __max_posAngle)) _max_posAngle)
  (:min_lim_angle
   (&optional __min_lim_angle)
   (if __min_lim_angle (setq _min_lim_angle __min_lim_angle)) _min_lim_angle)
  (:max_lim_angle
   (&optional __max_lim_angle)
   (if __max_lim_angle (setq _max_lim_angle __max_lim_angle)) _max_lim_angle)
  (:serialization-length
   ()
   (+
    ;; int32 _servo_index
    4
    ;; bool _setCalibration_servo
    1
    ;; float32 _min_calAngle
    4
    ;; float32 _max_calAngle
    4
    ;; float32 _min_posServo
    4
    ;; float32 _max_posServo
    4
    ;; float32 _min_posAngle
    4
    ;; float32 _max_posAngle
    4
    ;; float32 _min_lim_angle
    4
    ;; float32 _max_lim_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _servo_index
       (write-long _servo_index s)
     ;; bool _setCalibration_servo
       (if _setCalibration_servo (write-byte -1 s) (write-byte 0 s))
     ;; float32 _min_calAngle
       (sys::poke _min_calAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_calAngle
       (sys::poke _max_calAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_posServo
       (sys::poke _min_posServo (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_posServo
       (sys::poke _max_posServo (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_posAngle
       (sys::poke _min_posAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_posAngle
       (sys::poke _max_posAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_lim_angle
       (sys::poke _min_lim_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_lim_angle
       (sys::poke _max_lim_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _servo_index
     (setq _servo_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _setCalibration_servo
     (setq _setCalibration_servo (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _min_calAngle
     (setq _min_calAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_calAngle
     (setq _max_calAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_posServo
     (setq _min_posServo (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_posServo
     (setq _max_posServo (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_posAngle
     (setq _min_posAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_posAngle
     (setq _max_posAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_lim_angle
     (setq _min_lim_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_lim_angle
     (setq _max_lim_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pavlov_mini_msgs::set_motor_calibrationResponse
  :super ros::object
  :slots (_result _info ))

(defmethod pavlov_mini_msgs::set_motor_calibrationResponse
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

(defclass pavlov_mini_msgs::set_motor_calibration
  :super ros::object
  :slots ())

(setf (get pavlov_mini_msgs::set_motor_calibration :md5sum-) "7362753e9baf3d3776513533ce7093fd")
(setf (get pavlov_mini_msgs::set_motor_calibration :datatype-) "pavlov_mini_msgs/set_motor_calibration")
(setf (get pavlov_mini_msgs::set_motor_calibration :request) pavlov_mini_msgs::set_motor_calibrationRequest)
(setf (get pavlov_mini_msgs::set_motor_calibration :response) pavlov_mini_msgs::set_motor_calibrationResponse)

(defmethod pavlov_mini_msgs::set_motor_calibrationRequest
  (:response () (instance pavlov_mini_msgs::set_motor_calibrationResponse :init)))

(setf (get pavlov_mini_msgs::set_motor_calibrationRequest :md5sum-) "7362753e9baf3d3776513533ce7093fd")
(setf (get pavlov_mini_msgs::set_motor_calibrationRequest :datatype-) "pavlov_mini_msgs/set_motor_calibrationRequest")
(setf (get pavlov_mini_msgs::set_motor_calibrationRequest :definition-)
      "#request constants
int32   servo_index
bool    setCalibration_servo
float32 min_calAngle
float32 max_calAngle
float32 min_posServo
float32 max_posServo
float32 min_posAngle
float32 max_posAngle
float32 min_lim_angle
float32 max_lim_angle
---
#response constants
bool result
string info

")

(setf (get pavlov_mini_msgs::set_motor_calibrationResponse :md5sum-) "7362753e9baf3d3776513533ce7093fd")
(setf (get pavlov_mini_msgs::set_motor_calibrationResponse :datatype-) "pavlov_mini_msgs/set_motor_calibrationResponse")
(setf (get pavlov_mini_msgs::set_motor_calibrationResponse :definition-)
      "#request constants
int32   servo_index
bool    setCalibration_servo
float32 min_calAngle
float32 max_calAngle
float32 min_posServo
float32 max_posServo
float32 min_posAngle
float32 max_posAngle
float32 min_lim_angle
float32 max_lim_angle
---
#response constants
bool result
string info

")



(provide :pavlov_mini_msgs/set_motor_calibration "7362753e9baf3d3776513533ce7093fd")


