#! /usr/bin/python3

import rospy
import math
import moveit_commander
import moveit_msgs.msg  # This import was missing
import serial
from tf.transformations import euler_from_quaternion


class MyRobot:
    def __init__(self):
        rospy.init_node('node_print_pose', anonymous=True)
        
        self._robot = moveit_commander.RobotCommander()
        self._scene = moveit_commander.PlanningSceneInterface()
        
        self._planning_group_arm = "arm_group"
        self._planning_group_gripper = "gripper"
        
        self._group_arm = moveit_commander.MoveGroupCommander(self._planning_group_arm)
        self._group_gripper = moveit_commander.MoveGroupCommander(self._planning_group_gripper)

        self._display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=1)
        
        self._planning_frame_arm = self._group_arm.get_planning_frame()
        self._eef_link_gripper = self._group_gripper.get_end_effector_link()
        self._planning_frame_gripper = self._group_gripper.get_planning_frame()
        self._group_names = self._robot.get_group_names()

        rospy.loginfo(" >>> MyRobot initialization is done.")
        
        try:
            # Initialize serial connection
            self.ser = serial.Serial('/dev/ttyACM0', 4800)  # Update port if needed
            rospy.loginfo("Serial connection established on /dev/ttyACM0 at 9600 baud")
        except Exception as e:
            rospy.logerr("Error opening serial port: {}".format(e))
            self.ser = None

    def print_end_effector_pose(self):
        pose_values_gripper = self._group_gripper.get_current_pose(end_effector_link=self._eef_link_gripper).pose
        
        q_x_gripper = pose_values_gripper.orientation.x
        q_y_gripper = pose_values_gripper.orientation.y
        q_z_gripper = pose_values_gripper.orientation.z
        q_w_gripper = pose_values_gripper.orientation.w
        quaternion_list_gripper = [q_x_gripper, q_y_gripper, q_z_gripper, q_w_gripper]
        (roll_gripper, pitch_gripper, yaw_gripper) = euler_from_quaternion(quaternion_list_gripper)
        
        rospy.loginfo("\nGripper End-Effector Pose:\n x: {}\n y: {}\n z: {}\nroll: {}\npitch: {}\nyaw: {}\n".format(
            pose_values_gripper.position.x, pose_values_gripper.position.y, pose_values_gripper.position.z,
            roll_gripper, pitch_gripper, yaw_gripper))

    def print_joint_angle_values(self):
        list_joint_values_arm = self._group_arm.get_current_joint_values()
        list_joint_values_gripper = self._group_gripper.get_current_joint_values()

        rospy.loginfo("\nArm Joint Values:\n"
                      "waist_joint: {}\nshoulder_joint: {}\nelbow_joint: {}\nwrist_joint: {}\nwrist_pitch_joint: {}\n".format(
            math.degrees(list_joint_values_arm[0]), math.degrees(list_joint_values_arm[1]), math.degrees(list_joint_values_arm[2]),
            math.degrees(list_joint_values_arm[3]), math.degrees(list_joint_values_arm[4])))

        rospy.loginfo("\nGripper Joint Values:\n gripper_joint: {}\n".format(math.degrees(list_joint_values_gripper[0])))

        joint_angles = {
            'waist_joint': math.degrees(list_joint_values_arm[0]),
            'shoulder_joint': math.degrees(list_joint_values_arm[1]),
            'elbow_joint': math.degrees(list_joint_values_arm[2]),
            'wrist_joint': math.degrees(list_joint_values_arm[3]),
            'wrist_pitch_joint': math.degrees(list_joint_values_arm[4]),
            'gripper_joint': math.degrees(list_joint_values_gripper[0])
        }

        joint_angles_str = "waist_joint: {0}, shoulder_joint: {1}, elbow_joint: {2}, wrist_joint: {3}, wrist_pitch_joint: {4}, gripper_joint: {5}\n".format(
            joint_angles['waist_joint'], joint_angles['shoulder_joint'], joint_angles['elbow_joint'],
            joint_angles['wrist_joint'], joint_angles['wrist_pitch_joint'], joint_angles['gripper_joint'])

        if self.ser:
            try:
                self.ser.write(joint_angles_str.encode('utf-8'))
                self.ser.flush()
                rospy.loginfo("Sent joint angles over serial: " + joint_angles_str)
            except Exception as e:
                rospy.logerr("Failed to send data over serial: {}".format(e))

    def __del__(self):
        moveit_commander.roscpp_shutdown()
        rospy.loginfo("Object of class MyRobot Deleted.")
        if self.ser:
            self.ser.close()
            rospy.loginfo("Serial connection closed.")


def main():
    arm = MyRobot()

    while not rospy.is_shutdown():
        arm.print_end_effector_pose()
        arm.print_joint_angle_values()
        rospy.sleep(5) 

    del arm

if __name__ == '__main__':
    main()
