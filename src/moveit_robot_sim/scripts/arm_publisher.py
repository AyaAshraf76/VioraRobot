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
        
    def send_joint_commands(self):
        joint_values_arm = self._group_arm.get_current_joint_values()
        joint_values_gripper = self._group_gripper.get_current_joint_values()

        # Convert joint values from radians to degrees
        joint_values_arm_deg = [math.degrees(joint) for joint in joint_values_arm]
        joint_values_gripper_deg = [math.degrees(joint) for joint in joint_values_gripper]

        # Create a Float64MultiArray message to publish joint values in degrees
        joint_state_msg = Float32MultiArray()
        joint_state_msg.data = joint_values_arm_deg + joint_values_gripper_deg
        self._joint_pub.publish(joint_state_msg)
    
    def run(self):
        while not rospy.is_shutdown():
            self.send_joint_commands()
            rospy.sleep(1)  


if __name__ == '__main__':
    arm = MyRobot()
    arm.run()
