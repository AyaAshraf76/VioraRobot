#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge
import cv2
import threading

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
camera_info.width = 640  # Example resolution (You can adjust this based on your webcam resolution)
camera_info.height = 480  # Example resolution (You can adjust this based on your webcam resolution)
camera_info.K = [376.687, 0, 320, 0, 376.687, 240, 0, 0, 1]  # Intrinsic matrix (adjust as needed)
camera_info.D = [0.1847, -0.0369, 0.005543, -0.003784, 0.0]  # Distortion coefficients (example)
camera_info.P = [376.687, 0, 320, 0, 0, 376.687, 240, 0, 0, 0, 1, 0]  # Projection matrix (adjust as needed)

# Initialize the webcam (0 is the default camera)
cap = cv2.VideoCapture(0)

# Check if webcam is opened correctly
if not cap.isOpened():
    rospy.logerr("Could not open webcam.")
    exit()

def fetch_frame():
    global frame
    while not rospy.is_shutdown():
        ret, new_frame = cap.read()  # Capture frame from webcam
        if ret:
            with frame_lock:
                frame = new_frame
        else:
            rospy.logwarn("Failed to capture image from webcam.")

def publish_camera_info():
    print("Publishing camera info for SLAM...")
    while not rospy.is_shutdown():
        with frame_lock:
            if frame is not None:
                try:
                    # Publish the frame as an image message
                    image_message = bridge.cv2_to_imgmsg(frame, encoding="bgr8")
                    image_message.header.stamp = rospy.Time.now()
                    image_message.header.frame_id = "camera_link"
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
