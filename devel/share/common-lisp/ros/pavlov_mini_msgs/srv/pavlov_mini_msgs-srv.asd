
(cl:in-package :asdf)

(defsystem "pavlov_mini_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "connect_servos" :depends-on ("_package_connect_servos"))
    (:file "_package_connect_servos" :depends-on ("_package"))
    (:file "set_face" :depends-on ("_package_set_face"))
    (:file "_package_set_face" :depends-on ("_package"))
    (:file "set_gait" :depends-on ("_package_set_gait"))
    (:file "_package_set_gait" :depends-on ("_package"))
    (:file "set_motor_calibration" :depends-on ("_package_set_motor_calibration"))
    (:file "_package_set_motor_calibration" :depends-on ("_package"))
  ))