#!/usr/bin/env python3
import rospy
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

# Initialize ROS publishers for image, camera info, and depth image
image_pub = rospy.Publisher('/camera/rgb/image_raw', Image, queue_size=10)
camera_info_pub = rospy.Publisher('/camera/camera_info', CameraInfo, queue_size=10)
depth_pub = rospy.Publisher('/camera/depth/image_raw', Image, queue_size=10)

# Initialize CvBridge
bridge = CvBridge()

# Initialize a global frame variable
frame = None
frame_lock = threading.Lock()

# Camera Info (Intrinsics for your camera)
camera_info = CameraInfo()
camera_info.width = 320  # Example resolution
camera_info.height = 240  # Example resolution
camera_info.K = [376.687, 0, 162.233, 0, 387.095, 115.588, 0, 0, 1]  # Example intrinsic matrix (fx, fy, cx, cy)
camera_info.D = [0.1847, -0.0369, 0.005543, -0.003784, 0.0]  # Distortion coefficients (example)
camera_info.P = [394.825, 0, 161.33, 0, 0, 405.69, 116.5638, 0, 0, 0, 1, 0]  # Projection matrix

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
                    frame = cv2.flip(frame, 0)  # 0 means vertical flip

        except Exception as e:
            print("Error fetching frame:", e)

def generate_depth_map(rgb_frame):
    """
    Simulate a simple depth map for the mono camera.
    You can replace this function with a depth estimation model like MiDaS for real depth maps.
    """
    # Here we simply create a synthetic depth map with all values set to 1.0 (1 meter depth).
    # You can use actual depth estimation techniques or models for better depth accuracy.
    depth_map = np.ones((rgb_frame.shape[0], rgb_frame.shape[1]), dtype=np.float32)
    
    # Optional: You can make the depth map vary (e.g., increasing/decreasing the values)
    # depending on the pixel's intensity or some other logic.
    
    return depth_map

def publish_camera_info():
    print("Publishing camera info for SLAM...")
    while not rospy.is_shutdown():
        with frame_lock:
            if frame is not None:
                try:

                    # Publish the RGB frame as an image message
                    image_message = bridge.cv2_to_imgmsg(frame, encoding="bgr8")
                    image_message.header.stamp = rospy.Time.now()
                    image_message.header.frame_id = "camera_link"
                    image_pub.publish(image_message)

                    # Generate and publish the depth image
                    depth_map = generate_depth_map(frame)
                    depth_message = bridge.cv2_to_imgmsg(depth_map, encoding="32FC1")
                    depth_message.header.stamp = rospy.Time.now()
                    depth_message.header.frame_id = "camera_link"
                    depth_pub.publish(depth_message)

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
