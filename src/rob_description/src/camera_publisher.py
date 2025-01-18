import rospy
import cv2
import numpy as np
import urllib.request
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge
from std_msgs.msg import Header
from ultralytics import YOLO

# ESP32-CAM URL
url = 'http://192.168.1.99/capture'  # Update to match your ESP32-CAM endpoint

# Camera Info (Update with your actual parameters)
camera_info = CameraInfo()
camera_info.header.frame_id = "camera_frame"  # Define the frame id
camera_info.width = 640  # Update with your camera resolution
camera_info.height = 480
camera_info.distortion_model = "plumb_bob"
camera_info.K = [520, 0, 320, 0, 520, 240, 0, 0, 1]  # Intrinsic matrix, update accordingly
camera_info.D = [0, 0, 0, 0, 0]  # Distortion coefficients
camera_info.R = [1, 0, 0, 0, 1, 0, 0, 0, 1]  # Rotation matrix
camera_info.P = [520, 0, 320, 0, 0, 520, 240, 0, 0, 0, 1, 0]  # Projection matrix

# Load YOLOv8 model
model_path = r"C:\path_to_your_model\best.pt"  # Update the model path
model = YOLO(model_path)

# Initialize ROS Node
rospy.init_node('esp32_cam_publisher_and_subscriber', anonymous=True)

# Define ROS Publishers
image_pub = rospy.Publisher("/camera/image_raw", Image, queue_size=10)
camera_info_pub = rospy.Publisher("/camera/camera_info", CameraInfo, queue_size=10)

# Initialize CvBridge
bridge = CvBridge()

def fetch_frame(url):
    """Fetches a frame from the ESP32-CAM."""
    try:
        img_resp = urllib.request.urlopen(url)
        data = img_resp.read()
        print(f"Fetched data length: {len(data)} bytes")
        imgnp = np.array(bytearray(data), dtype=np.uint8)
        frame = cv2.imdecode(imgnp, -1)
        if frame is None:
            print("Failed to decode frame. Saving data for inspection.")
            with open("test_frame.jpg", "wb") as f:
                f.write(data)
            print("Saved fetched frame as 'test_frame.jpg'. Inspect this file.")
        else:
            print(f"Frame decoded successfully: {frame.shape}")
        return frame
    except Exception as e:
        print(f"Error fetching frame: {e}")
        return None

def run_object_detection(frame):
    """Runs YOLO object detection on the given frame."""
    try:
        results = model(frame)  # Perform inference on the frame
        print("Detection results:", results)
        annotated_frame = results[0].plot()  # Annotate the frame with detected objects
        return annotated_frame
    except Exception as e:
        print(f"Error during detection: {e}")
        return frame  # Return original frame if detection fails

def image_callback(msg):
    """Callback function for subscribing to image topic."""
    bridge = CvBridge()
    try:
        # Convert ROS Image message to OpenCV format
        cv_image = bridge.imgmsg_to_cv2(msg, "bgr8")
        # Show the received image
        cv2.imshow("Received Image", cv_image)
        cv2.waitKey(1)  # Wait for 1 ms before continuing to the next frame
    except Exception as e:
        rospy.logerr(f"Error converting image: {e}")

def camera_info_callback(msg):
    """Callback function for subscribing to camera info topic."""
    # Process camera information (useful for SLAM, visualization, etc.)
    print("Received Camera Info:")
    print(f"Width: {msg.width}, Height: {msg.height}")
    print(f"Distortion Model: {msg.distortion_model}")
    print(f"Camera Matrix (K): {msg.K}")

def publish_camera_data():
    """Publishes camera data to ROS topics for SLAM and object detection."""
    while not rospy.is_shutdown():
        frame = fetch_frame(url)
        if frame is None:
            continue
        
        # Run object detection
        frame_with_detections = run_object_detection(frame)
        
        # Convert annotated frame to ROS Image message
        try:
            ros_image = bridge.cv2_to_imgmsg(frame_with_detections, encoding="bgr8")
            ros_image.header = Header()
            ros_image.header.stamp = rospy.Time.now()
            ros_image.header.frame_id = "camera_frame"
            
            # Publish Image message with detections
            image_pub.publish(ros_image)
            print("Published image with detections.")
            
            # Publish CameraInfo message
            camera_info.header.stamp = rospy.Time.now()
            camera_info_pub.publish(camera_info)
            print("Published camera info.")
            
        except Exception as e:
            print(f"Error while publishing: {e}")
        
        rospy.sleep(0.1)  # Add a small delay to prevent excessive publishing

def listener():
    """ROS listener node to subscribe to camera topics."""
    rospy.Subscriber("/camera/image_raw", Image, image_callback)
    rospy.Subscriber("/camera/camera_info", CameraInfo, camera_info_callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        # Run the publishing function in a separate thread
        import threading
        threading.Thread(target=publish_camera_data).start()
        
        # Run the subscriber function in the main thread
        listener()
        
    except rospy.ROSInterruptException:
        pass
