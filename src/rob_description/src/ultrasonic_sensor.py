#!/usr/bin/env python3
import rospy
from std_msgs.msg import *
from geometry_msgs.msg import *
from sensor_msgs.msg import LaserScan
from tf.transformations import euler_from_quaternion
import numpy as np
import time
from itertools import count

index = count(step=1)  #### time counter 

pub_laser = rospy.Publisher("sonar_laser", LaserScan, queue_size=100)
pub_servo = rospy.Publisher("servo", UInt16, queue_size=10)

w1 = 0.01  # initialize w1 with a default value

def callback1(data):
    global w1
    q = data.data
    w = q / 100
    if w > 4:
        w = 4
    elif w == 0:
        w = 0.01
    w1 = round(w, 3)
    print(w1)

scan_time = 0.1
def laser():
    time_begin = rospy.Time.now()
    r = rospy.Rate(10)  # 10hz
    b = [w1] * 180  # Initialize b with 180 elements, all equal to w1

    while not rospy.is_shutdown():
        time_end = rospy.Time.now()
        for i in range(180):
            pub_servo.publish(i)
            time.sleep(scan_time)

            # Update the corresponding value in the list
            b[i] = w1

            laser_msg = LaserScan()
            Time = next(index)
            d = time_end - time_begin
            laser_msg.header.seq = d
            laser_msg.header.stamp = time_end
            laser_msg.header.frame_id = 'sonar'
            laser_msg.angle_min = 0 * np.pi / 180
            laser_msg.angle_max = 165 * np.pi / 180
            laser_msg.angle_increment = np.pi / 180
            laser_msg.time_increment = 0.001
            laser_msg.scan_time = 0.001
            laser_msg.range_min = 0.01
            laser_msg.range_max = 4
            laser_msg.ranges = b
            laser_msg.intensities = []
            pub_laser.publish(laser_msg)

        if i == 179:  # last iteration of the loop
            pub_servo.publish(0)
        r.sleep()

rospy.Subscriber('/sonar', Float64, callback1)

rospy.init_node('laser', anonymous=True)

if __name__ == '__main__':
    try:
        laser()
    except rospy.ROSInterruptException:
        pass
