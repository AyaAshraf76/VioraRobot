#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge
import urllib.request
import cv2
import numpy as np
import threading

# ESP32-CAM URL
url = 'http://192.168.1.16/capture'  # Replace with your ESP32-CAM's capture URL

# Initialize ROS node
rospy.init_node('camera_for_slam', anonymous=True)

# Initialize ROS publisher for the image and camera info (for SLAM)
image_pub = rospy.Publisher('/camera/rgb/image_raw', Image, queue_size=10)
camera_info_pub = rospy.Publisher('/camera/camera_info', CameraInfo, queue_size=10)

# Initialize CvBridge
bridge = CvBridge()

# Initialize a global frame variable
frame = None
frame_lock = threading.Lock()

# Camera Info (Intrinsics for your camera)
camera_info = CameraInfo()
camera_info.width = 640  # Example resolution
camera_info.height = 480  # Example resolution
camera_info.K = [500, 0, 320, 0, 500, 240, 0, 0, 1]  # Example intrinsic matrix (fx, fy, cx, cy)

def fetch_frame():
    global frame
    while not rospy.is_shutdown():
        try:
            # Fetch frame from ESP32-CAM stream
            img_resp = urllib.request.urlopen(url)
            imgnp = np.array(bytearray(img_resp.read()), dtype=np.uint8)
            new_frame = cv2.imdecode(imgnp, -1)
            if new_frame is not None:
                with frame_lock:
                    frame = new_frame
        except Exception as e:
            print("Error fetching frame:", e)

def publish_camera_info():
    print("Publishing camera info for SLAM...")
    while not rospy.is_shutdown():
        with frame_lock:
            if frame is not None:
                # Publish the frame as an image message
                try:
                    image_message = bridge.cv2_to_imgmsg(frame, encoding="bgr8")
                    image_pub.publish(image_message)

                    # Publish the camera info message
                    camera_info.header.stamp = rospy.Time.now()
                    camera_info.header.frame_id = "camera_link"
                    camera_info_pub.publish(camera_info)
                except Exception as e:
                    rospy.logerr("Error publishing image or camera info: {}".format(e))

        # Sleep for a bit to avoid busy-waiting
        rospy.sleep(0.1)

if __name__ == '__main__':
    # Start the frame fetching thread
    fetch_thread = threading.Thread(target=fetch_frame, daemon=True)
    fetch_thread.start()

    # Run the camera info publishing loop
    publish_camera_info()
