#!/usr/bin/env python3
from std_msgs.msg import Float32MultiArray
import rospy
import moveit_commander
import math

class MyRobot:

    def __init__(self):
        rospy.init_node('robot_joint_publisher', anonymous=True)

        # Initialize MoveIt Commander for all leg groups
        self._planning_group_leg1 = "leg1_group"
        self._planning_group_leg2 = "leg2_group"
        self._planning_group_leg3 = "leg3_group"
        self._planning_group_leg4 = "leg4_group"
        # self._planning_group_leg13 = "legs13_group"
        # self._planning_group_leg24 = "legs24_group"
        # self._planning_group_leg134 = "leg_1_3_4_group"
        # self._planning_group_leg234 = "leg_2_3_4_group"
        
        # Create MoveGroupCommander instances for each group
        self._group_leg1 = moveit_commander.MoveGroupCommander(self._planning_group_leg1)
        self._group_leg2 = moveit_commander.MoveGroupCommander(self._planning_group_leg2)
        self._group_leg3 = moveit_commander.MoveGroupCommander(self._planning_group_leg3)
        self._group_leg4 = moveit_commander.MoveGroupCommander(self._planning_group_leg4)
        # self._group_leg13 = moveit_commander.MoveGroupCommander(self._planning_group_leg13)
        # self._group_leg24 = moveit_commander.MoveGroupCommander(self._planning_group_leg24)
        # self._group_leg134 = moveit_commander.MoveGroupCommander(self._planning_group_leg134)
        # self._group_leg234 = moveit_commander.MoveGroupCommander(self._planning_group_leg234)

        # Publisher for the joint angles of all legs and groups
        self._joint_pub = rospy.Publisher('/robot/joint_angles', Float32MultiArray, queue_size=10)
        
    def send_joint_commands(self):
        # Get current joint values for each leg group
        joint_values_leg1 = self._group_leg1.get_current_joint_values()
        joint_values_leg2 = self._group_leg2.get_current_joint_values()
        joint_values_leg3 = self._group_leg3.get_current_joint_values()
        joint_values_leg4 = self._group_leg4.get_current_joint_values()
        # joint_values_leg13 = self._group_leg13.get_current_joint_values()
        # joint_values_leg24 = self._group_leg24.get_current_joint_values()
        # joint_values_leg134 = self._group_leg134.get_current_joint_values()
        # joint_values_leg234 = self._group_leg234.get_current_joint_values()

        # Convert joint values from radians to degrees for each leg
        joint_values_leg1_deg = [math.degrees(joint) for joint in joint_values_leg1]
        joint_values_leg2_deg = [math.degrees(joint) for joint in joint_values_leg2]
        joint_values_leg3_deg = [math.degrees(joint) for joint in joint_values_leg3]
        joint_values_leg4_deg = [math.degrees(joint) for joint in joint_values_leg4]
        # joint_values_leg13_deg = [math.degrees(joint) for joint in joint_values_leg13]
        # joint_values_leg24_deg = [math.degrees(joint) for joint in joint_values_leg24]
        # joint_values_leg134_deg = [math.degrees(joint) for joint in joint_values_leg134]
        # joint_values_leg234_deg = [math.degrees(joint) for joint in joint_values_leg234]

        # Create a Float32MultiArray message to publish joint values in degrees
        joint_state_msg = Float32MultiArray()
        joint_state_msg.data = (
            joint_values_leg1_deg + 
            joint_values_leg2_deg + 
            joint_values_leg3_deg + 
            joint_values_leg4_deg  
            # joint_values_leg13_deg + 
            # joint_values_leg24_deg + 
            # joint_values_leg134_deg + 
            # joint_values_leg234_deg
        )

        # Publish the joint state message
        self._joint_pub.publish(joint_state_msg)
    
    def run(self):
        while not rospy.is_shutdown():
            # Send joint commands periodically
            self.send_joint_commands()
            rospy.sleep(1)  # Adjust the sleep time as needed


if __name__ == '__main__':
    # Create the MyRobot object and start publishing joint states
    robot = MyRobot()
    robot.run()
