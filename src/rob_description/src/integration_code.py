import rospy
from std_msgs.msg import String
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge
import urllib.request
import cv2
import numpy as np
from ultralytics import YOLO
import threading

# ESP32-CAM URL
url = 'http://192.168.1.99/capture'  # Replace with your ESP32-CAM's capture URL

# Initialize ROS node
rospy.init_node('plastic_detection_and_slam', anonymous=True)

# Create a ROS publisher for plastic detection
pub = rospy.Publisher('plastic_detected', String, queue_size=10)

# Initialize ROS publisher for the image and camera info (for RTAB-Map)
image_pub = rospy.Publisher('/camera/rgb/image_raw', Image, queue_size=10)
camera_info_pub = rospy.Publisher('/camera/camera_info', CameraInfo, queue_size=10)

# Initialize CvBridge
bridge = CvBridge()

# Load YOLOv8 model
model_path = r"C:\path\to\your\model.pt"  # Path to your trained YOLO model
model = YOLO(model_path)

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
    while True:
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

def run_object_detection():
    print("Object detection started...")
    cv2.namedWindow("Object Detection", cv2.WINDOW_AUTOSIZE)

    while not rospy.is_shutdown():
        with frame_lock:
            if frame is not None:
                # Perform inference (object detection) with YOLO
                results = model(frame)
                print("Detection results:", results)

                # Render annotated results on the frame
                annotated_frame = results[0].plot()
                cv2.imshow("Object Detection", annotated_frame)

                # Check if "plastic" is detected
                detected_labels = results[0].names
                if "plastic" in detected_labels:
                    print("Plastic detected! Publishing message to ROS.")
                    # Publish the message to ROS topic 'plastic_detected'
                    pub.publish("GRAB_PLASTIC")

                # Publish the frame as an image message
                try:
                    image_message = bridge.cv2_to_imgmsg(annotated_frame, encoding="bgr8")
                    image_pub.publish(image_message)

                    # Publish the camera info message
                    camera_info.header.stamp = rospy.Time.now()
                    camera_info.header.frame_id = "camera_link"
                    camera_info_pub.publish(camera_info)
                except Exception as e:
                    rospy.logerr("Error publishing image or camera info: {}".format(e))

        # Exit on pressing 'q'
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    cv2.destroyAllWindows()

if _name_ == '_main_':
    # Start the frame fetching thread
    fetch_thread = threading.Thread(target=fetch_frame, daemon=True)
    fetch_thread.start()

    # Run the object detection loop
    run_object_detection()