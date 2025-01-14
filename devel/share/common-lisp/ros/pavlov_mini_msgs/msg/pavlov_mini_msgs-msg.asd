
(cl:in-package :asdf)

(defsystem "pavlov_mini_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "contact_detection" :depends-on ("_package_contact_detection"))
    (:file "_package_contact_detection" :depends-on ("_package"))
    (:file "eyes_pos" :depends-on ("_package_eyes_pos"))
    (:file "_package_eyes_pos" :depends-on ("_package"))
    (:file "feet_pressure" :depends-on ("_package_feet_pressure"))
    (:file "_package_feet_pressure" :depends-on ("_package"))
    (:file "robot_state" :depends-on ("_package_robot_state"))
    (:file "_package_robot_state" :depends-on ("_package"))
  ))