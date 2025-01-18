#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge
import cv2

def image_callback(msg):
    """Callback function to process received image."""
    bridge = CvBridge()
    try:
        # Convert ROS Image message to OpenCV format
        cv_image = bridge.imgmsg_to_cv2(msg, "bgr8")
        # Show the image
        cv2.imshow("Received Image", cv_image)
        cv2.waitKey(1)  # Wait for 1 ms before continuing to the next frame
    except Exception as e:
        rospy.logerr(f"Error converting image: {e}")

def camera_info_callback(msg):
    """Callback function to process received camera info."""
    # You can process camera information here if needed
    print("Received Camera Info:")
    print(f"Width: {msg.width}, Height: {msg.height}")
    print(f"Distortion Model: {msg.distortion_model}")
    print(f"Camera Matrix (K): {msg.K}")

def listener():
    """ROS listener node to subscribe to camera topics."""
    rospy.init_node('camera_listener', anonymous=True)

    # Subscribe to the /camera/image_raw and /camera/camera_info topics
    rospy.Subscriber("/camera/image_raw", Image, image_callback)
    rospy.Subscriber("/camera/camera_info", CameraInfo, camera_info_callback)

    # Spin to keep the node alive
    rospy.spin()

if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass

# http://192.168.43.191
