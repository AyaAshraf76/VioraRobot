#! /usr/bin/env python3

# Python 2/3 compatibility imports
from __future__ import print_function
from six.moves import input

# Include the necessary libraries
import rospy
import sys
import copy
import math
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from tf.transformations import euler_from_quaternion, quaternion_from_euler

try:
    from math import pi, tau, dist, fabs, cos
except:  # For Python 2 compatibility
    from math import pi, fabs, cos, sqrt

    tau = 2.0 * pi

    def dist(p, q):
        return sqrt(sum((p_i - q_i) ** 2.0 for p_i, q_i in zip(p, q)))


class MyRobot:

    # Default Constructor
    def __init__(self):
        # Initialize the rospy node
        rospy.init_node('node_print_pose', anonymous=True)

        # Instantiate a RobotCommander object. This object is the outer-level interface to the robot
        self._robot = moveit_commander.RobotCommander()
        # Instantiate a PlanningSceneInterface object. This object is an interface to the world surrounding the robot.
        self._scene = moveit_commander.PlanningSceneInterface()
        
        # Define the move group for the robotic arm and gripper
        # Replace these values with your robot's planning group names that you had set in MoveIt Setup Assistant
        self._planning_group_arm = "arm_group"
        self._planning_group_gripper = "gripper"
        
        # Instantiate MoveGroupCommander Objects for arm and gripper
        self._group_arm = moveit_commander.MoveGroupCommander(self._planning_group_arm)
        self._group_gripper = moveit_commander.MoveGroupCommander(self._planning_group_gripper)
        
        self._group_arm._g.start_state_monitor(1.0)  # wait = 1.0
        self._group_gripper._g.start_state_monitor(1.0)  # wait = 1.0
        
        # We create a DisplayTrajectory publisher which is used later to publish trajectories for RViz to visualize
        self._display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=1)
        
        # Get the planning frame, end effector link, and the robot group names
        self._planning_frame_arm = self._group_arm.get_planning_frame()
        self._eef_link_gripper = self._group_gripper.get_end_effector_link()
        self._planning_frame_gripper = self._group_gripper.get_planning_frame()
        self._group_names = self._robot.get_group_names()

        # Print the info
        rospy.loginfo('\033[95m' + "Planning Frame (Arm): {}".format(self._planning_frame_arm) + '\033[0m')
        rospy.loginfo('\033[95m' + "Planning Frame (Gripper): {}".format(self._planning_frame_gripper) + '\033[0m')
        rospy.loginfo('\033[95m' + "End Effector Link (Gripper): {}".format(self._eef_link_gripper) + '\033[0m')
        rospy.loginfo('\033[95m' + "Group Names: {}".format(self._group_names) + '\033[0m')
        rospy.loginfo('\033[95m' + " >>> MyRobot initialization is done." + '\033[0m')

    def print_end_effector_pose(self):
        # Get the current position of the end effector link (gripper group)
        pose_values_gripper = self._group_gripper.get_current_pose(end_effector_link=self._eef_link_gripper).pose
        
        # Convert Quaternion to Euler (Roll, Pitch, Yaw) for gripper
        q_x_gripper = pose_values_gripper.orientation.x
        q_y_gripper = pose_values_gripper.orientation.y
        q_z_gripper = pose_values_gripper.orientation.z
        q_w_gripper = pose_values_gripper.orientation.w
        quaternion_list_gripper = [q_x_gripper, q_y_gripper, q_z_gripper, q_w_gripper]
        (roll_gripper, pitch_gripper, yaw_gripper) = euler_from_quaternion(quaternion_list_gripper)
        
        # Print the values for gripper
        rospy.loginfo('\033[32m' + 
                                "\nGripper End-Effector ({}) Pose: \n\n".format(self._eef_link_gripper) + 
                                "x: {}\n".format(pose_values_gripper.position.x) +  
                                "y: {}\n".format(pose_values_gripper.position.y) +    
                                "z: {}\n\n".format(pose_values_gripper.position.z) + 
                                "roll: {}\n".format(roll_gripper) + 
                                "pitch: {}\n".format(pitch_gripper) + 
                                "yaw: {}\n".format(yaw_gripper) +
                                '\033[0m')

    def print_joint_angle_values(self):
        # Get the values of all the joints of the arm
        list_joint_values_arm = self._group_arm.get_current_joint_values()
        
        # Get the values of all the joints of the gripper (if applicable)
        list_joint_values_gripper = self._group_gripper.get_current_joint_values()
        
        # Print the values for arm and gripper
        rospy.loginfo('\033[32m' + "\nArm Joint Values: \n\n" +
                      "waist_joint: {}\n".format(math.degrees(list_joint_values_arm[0])) +
                      "shoulder_joint: {}\n".format(math.degrees(list_joint_values_arm[1])) +
                      "elbow_joint: {}\n".format(math.degrees(list_joint_values_arm[2])) +
                      "wrist_joint: {}\n".format(math.degrees(list_joint_values_arm[3])) +
                      "wrist_pitch_joint: {}\n".format(math.degrees(list_joint_values_arm[4])) +
                      "\nGripper Joint Values: \n\n" +
                      "gripper_joint: {}\n".format(math.degrees(list_joint_values_gripper[0])) +
                      '\033[0m')

    # Class Destructor
    def __del__(self):
        # When the actions are finished, shut down the MoveIt commander
        moveit_commander.roscpp_shutdown()
        rospy.loginfo('\033[95m' + "Object of class MyRobot Deleted." + '\033[0m')


def main():
    
    # Create a new arm object from the MyRobot class
    arm = MyRobot()

    while not rospy.is_shutdown():
        arm.print_end_effector_pose()
        arm.print_joint_angle_values()
        rospy.sleep(1)

    del arm


if __name__ == '__main__':
    main()