#!/usr/bin/env python3
import cv2
import numpy as np
import rospy
from std_msgs.msg import Bool
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge
from ultralytics import YOLO

# Load YOLOv8 model
model_path = r"/home/lenovo36/Downloads/spider_robot_dataset/spider_robot/SERP-Plastic-Bottles-1/runs/detect/train/weights/best.pt"
model = YOLO(model_path)

# Initialize ROS node
rospy.init_node('plastic_detection_node', anonymous=True)

# ROS Publisher for plastic detection (Bool message: True if plastic is detected, False otherwise)
plastic_detected_pub = rospy.Publisher('/plastic_detected', Bool, queue_size=10)

# ROS Publishers for camera info and image
image_pub = rospy.Publisher('/camera/rgb/image_raw', Image, queue_size=10)
camera_info_pub = rospy.Publisher('/camera/camera_info', CameraInfo, queue_size=10)

# Initialize CvBridge
bridge = CvBridge()

# Camera Info (Intrinsics for your camera)
camera_info = CameraInfo()
camera_info.width = 640  
camera_info.height = 480 
camera_info.K = [830.909684, 0, 340.863134 , 0, 8290426222 , 219.079834, 0, 0, 1]  # Example intrinsic matrix (fx, fy, cx, cy)
camera_info.D = [-0.104999, 0.380679, 0.000263, 0.002204, 0.0]  # Distortion coefficients (example)
camera_info.P = [828.797939, 0, 341.314389, 0, 0, 826.717688, 219.357316, 0, 0, 0, 1, 0]  # Projection matrix

def run_object_detection():
    print("Object detection started...")
    cv2.namedWindow("Object Detection", cv2.WINDOW_AUTOSIZE)
    
    cap = cv2.VideoCapture(2)

    if not cap.isOpened():
        print("Error: Could not access the webcam.")
        rospy.signal_shutdown("Webcam not found.")
        return
    
    while not rospy.is_shutdown():
        ret, frame = cap.read()
        if not ret:
            print("Failed to capture frame.")
            continue
        
        try:
            # Run YOLO model inference
            results = model(frame)
            
            # Get the detected objects and their labels
            detected_labels = results[0].names
            detections = results[0].boxes
            detected_classes = detections.cls.numpy()  # Detected class IDs
            detected_confidences = detections.conf.numpy()  # Detection confidence
            
            # Check if plastic is detected with a confidence greater than 0.8
            plastic_detected = False
            for i, cls in enumerate(detected_classes):
                label = detected_labels[int(cls)]  # Get the label of the detected object
                confidence = detected_confidences[i]  # Confidence for this detection
                
                # Check if the label is "plastic" and confidence is greater than 0.8
                if label == "plastic" and confidence > 0.75:
                    print(f"Plastic detected with confidence: {confidence:.2f}")
                    plastic_detected = True
                    break  # If plastic is detected with sufficient confidence, stop further checks

            # Publish ROS message based on plastic detection
            plastic_detected_pub.publish(plastic_detected)

            # Publish the image and camera info
            image_message = bridge.cv2_to_imgmsg(frame, encoding="bgr8")
            image_message.header.stamp = rospy.Time.now()
            image_message.header.frame_id = "camera_link"
            image_pub.publish(image_message)

            camera_info.header.stamp = rospy.Time.now()
            camera_info.header.frame_id = "camera_link"
            camera_info_pub.publish(camera_info)

            # Render results
            annotated_frame = results[0].plot()
            cv2.imshow("Object Detection", annotated_frame)
            
            # Break the loop on 'q' key press
            if cv2.waitKey(5) & 0xFF == ord('q'):
                print("Exiting object detection.")
                break
        except Exception as e:
            print(f"Error during detection: {e}")
            break

    # Release the webcam and close windows
    cap.release()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    run_object_detection()
