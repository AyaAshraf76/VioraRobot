#!/usr/bin/env python3
from std_msgs.msg import Float32MultiArray
import rospy
import moveit_commander
import math

class MyRobot:

    def __init__(self):
        rospy.init_node('node_print_pose', anonymous=True)

        # Initialize MoveIt Commander
        self._planning_group_arm = "arm_group"
        self._planning_group_gripper = "gripper"
        self._group_arm = moveit_commander.MoveGroupCommander(self._planning_group_arm)
        self._group_gripper = moveit_commander.MoveGroupCommander(self._planning_group_gripper)
        
        self._joint_pub = rospy.Publisher('/robot/joint_angles', Float32MultiArray, queue_size=10)

        # Variable to store if plastic is detected
        self.plastic_detected = False


    def send_joint_commands(self):
        if self.plastic_detected:
            rospy.loginfo("Plastic detected! Moving the robot arm.")
            
            # Once the arm reaches the target pose, send the joint angles (if needed)
            joint_values_arm = self._group_arm.get_current_joint_values()
            joint_values_gripper = self._group_gripper.get_current_joint_values()

            # Convert joint values from radians to degrees
            joint_values_arm_deg = [math.degrees(joint) for joint in joint_values_arm]
            joint_values_gripper_deg = [math.degrees(joint) for joint in joint_values_gripper]

            # Create a Float32MultiArray message to publish joint values in degrees
            joint_state_msg = Float32MultiArray()
            joint_state_msg.data = joint_values_arm_deg + joint_values_gripper_deg
            self._joint_pub.publish(joint_state_msg)


    def plastic_detected_callback(self, msg):
        if msg.data[0] == 1.0:  # When plastic is detected, set the flag to True
            self.plastic_detected = True
        else:
            self.plastic_detected = False

    def run(self):
        # Subscribe to the message from the camera or object detection node
        rospy.Subscriber('/robot/moveit_trigger', Float32MultiArray, self.plastic_detected_callback)
        
        while not rospy.is_shutdown():
            self.send_joint_commands()
            rospy.sleep(1)  # Sleep for a second to avoid overloading the ROS loop


if __name__ == '__main__':
    arm = MyRobot()
    arm.run()
