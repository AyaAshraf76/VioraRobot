#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Image
import cv2
from cv_bridge import CvBridge

class sensor_checking:
    
    def __init__(self):
        sub_topic = '/camera/rgb/image_raw'
        self.camera_subscriber = rospy.Subscriber(sub_topic, Image, self.camera_callback)
        self.out = cv2.VideoWriter('/home/lenovo36/output.avi',cv2.VideoWriter_fourcc('M','J','P','G'),10,(640,480))
        self.bridge = CvBridge()
    
    def camera_callback(self,data):
        frame = self.bridge.imgmsg_to_cv2(data)
        self.out.write(frame)
        cv2.imshow("output",frame)
        cv2.waitKey(1)

if __name__ == '__main__':
    node_name="sensor_check"
    rospy.init_node(node_name)
    sensor_checking()
    rospy.spin()
