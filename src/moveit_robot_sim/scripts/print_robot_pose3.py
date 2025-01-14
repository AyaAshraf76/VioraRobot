#! /usr/bin/python3

import rospy
import moveit_commander
import std_msgs.msg  # Importing the message type to publish joint angles
import math

class MyRobot:

    def __init__(self):
        rospy.init_node('node_publish_joint_angles', anonymous=True)

        self._robot = moveit_commander.RobotCommander()
        self._scene = moveit_commander.PlanningSceneInterface()
        
        self._planning_group_arm = "arm_group"
        self._planning_group_gripper = "gripper"
        
        self._group_arm = moveit_commander.MoveGroupCommander(self._planning_group_arm)
        self._group_gripper = moveit_commander.MoveGroupCommander(self._planning_group_gripper)

        # Create a publisher for joint angles
        self.joint_pub = rospy.Publisher('/robot/joint_angles', std_msgs.msg.Float32MultiArray, queue_size=10)
        
        # Initialize the ROS publisher
        self.joint_angles_msg = std_msgs.msg.Float32MultiArray()

    def publish_joint_angles(self):
        # Get the current joint values for arm and gripper
        arm_joint_values = self._group_arm.get_current_joint_values()
        gripper_joint_values = self._group_gripper.get_current_joint_values()

        # Set the header for the message
        self.joint_angles_msg.data = [
            math.degrees(arm_joint_values[0]), 
            math.degrees(arm_joint_values[1]),
            math.degrees(arm_joint_values[2]),
            math.degrees(arm_joint_values[3]),
            math.degrees(arm_joint_values[4]),
            math.degrees(gripper_joint_values[0])  # Assuming gripper is a single joint
        ]
        
        # Publish the joint angles as Float32MultiArray
        self.joint_pub.publish(self.joint_angles_msg)

    def __del__(self):
        moveit_commander.roscpp_shutdown()
        rospy.loginfo("Shutting down MyRobot class.")

def main():
    arm = MyRobot()

    # Publish joint angles periodically (adjust the rate as necessary)
    rate = rospy.Rate(10)  # 10 Hz
    while not rospy.is_shutdown():
        arm.publish_joint_angles()  # Publish joint angles
        rate.sleep()

    del arm

if __name__ == '__main__':
    main()
