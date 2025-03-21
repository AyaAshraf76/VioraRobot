#!/usr/bin/env python3
import cv2
import rospy
from std_msgs.msg import Bool
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge

# Initialize ROS node
rospy.init_node('camera_publisher_node', anonymous=True)

# ROS Publishers for camera info and image
image_pub = rospy.Publisher('/camera/rgb/image_raw', Image, queue_size=10)
camera_info_pub = rospy.Publisher('/camera/camera_info', CameraInfo, queue_size=10)

# Initialize CvBridge
bridge = CvBridge()

# Camera Info (Intrinsics for your camera)
camera_info = CameraInfo()
camera_info.width = 640  
camera_info.height = 480 
camera_info.K = [830.909684, 0, 340.863134 , 0, 829.426222 , 219.079834, 0, 0, 1]  # Example intrinsic matrix (fx, fy, cx, cy)
camera_info.D = [-0.104999, 0.380679, 0.000263, 0.002204, 0.0]  # Distortion coefficients (example)
camera_info.P = [828.797939, 0, 341.314389, 0, 0, 826.717688, 219.357316, 0, 0, 0, 1, 0]  # Projection matrix

def run_camera_publishing():
    print("Camera publishing started...")
    cv2.namedWindow("Camera Feed", cv2.WINDOW_AUTOSIZE)
    
    # Open the camera (use correct device index)
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
            # Publish the image and camera info
            image_message = bridge.cv2_to_imgmsg(frame, encoding="bgr8")
            image_message.header.stamp = rospy.Time.now()
            image_message.header.frame_id = "camera_link"
            image_pub.publish(image_message)

            camera_info.header.stamp = rospy.Time.now()
            camera_info.header.frame_id = "camera_link"
            camera_info_pub.publish(camera_info)

            # Display the camera feed for monitoring
            cv2.imshow("Camera Feed", frame)
            
            # Break the loop on 'q' key press
            if cv2.waitKey(5) & 0xFF == ord('q'):
                print("Exiting camera publishing.")
                break
        except Exception as e:
            print(f"Error during camera publishing: {e}")
            break

    # Release the webcam and close windows
    cap.release()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    run_camera_publishing()
