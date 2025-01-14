#!/usr/bin/env python3
import rospy
from std_msgs.msg import *
from sensor_msgs.msg import LaserScan
from tf.transformations import euler_from_quaternion
import numpy as np
import time
from itertools import count

index = count(step=1)  # Time counter 

# ROS Publisher for LaserScan
pub_laser = rospy.Publisher("/ultrasonic/laser_scan", LaserScan, queue_size=100)

# List to store the distances for LaserScan
scan_range = [0.0] * 180  # Assuming 180 degrees for the scan

# Global variable for ultrasonic sensor data
w1 = 0.0

# Callback function to receive ultrasonic sensor data
def callback1(data):
    global w1
    w1 = data.data / 100  # Convert from centimeters to meters
    if w1 > 4:
        w1 = 4  # Limit to max range (4 meters)
    elif w1 == 0:
        w1 = 0.01  # Avoid zero distance (i.e., no detection)
    w1 = round(w1, 3)  # Round to 3 decimal places
    # print(f"Distance from ultrasonic sensor: {w1} m")



# LaserScan publishing function
def laser():
    time_begin = rospy.Time.now()
    r = rospy.Rate(10)  # 10 Hz rate

    while not rospy.is_shutdown():
        time_end = rospy.Time.now()
        
        # Loop to simulate laser scanning at 180 degrees (could be adjusted based on sensor movement)
        for i in range(180):
            scan_range[i] = w1  # Use the ultrasonic data for the scan range
            
            # Create LaserScan message
            laser = LaserScan()
            laser.header.seq = next(index)
            laser.header.stamp = time_end
            laser.header.frame_id = 'sonar'  # Reference frame name
            laser.angle_min = 0 * np.pi / 180  # Start angle in radians (0 degrees)
            laser.angle_max = 165 * np.pi / 180  # End angle in radians (165 degrees)
            laser.angle_increment = np.pi / 180  # Increment angle (1 degree per reading)
            laser.time_increment = 0  # Time per scan point
            laser.scan_time = 0.001  # Time between scans
            laser.range_min = 0.01  # Minimum range (meters)
            laser.range_max = 4  # Maximum range (meters)
            laser.ranges = scan_range  # Array of distance readings (from ultrasonic sensor)
            laser.intensities = []  # Intensity data is left empty for this case

            # Publish LaserScan message
            pub_laser.publish(laser)

        r.sleep()

# Subscriber to get ultrasonic sensor data
rospy.Subscriber('/ultrasonic/scan', Float32, callback1)

# Initialize the ROS node
rospy.init_node('laser', anonymous=True)

if __name__ == '__main__':
    try:
        laser()
    except rospy.ROSInterruptException:
        pass
