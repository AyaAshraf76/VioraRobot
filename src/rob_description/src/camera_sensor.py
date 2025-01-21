#!/usr/bin/env python3
import urllib.request
import cv2
import numpy as np
from ultralytics import YOLO


# ESP32-CAM URL
url = 'http://192.168.1.16/capture' 

# Load YOLOv8 model
model_path = r"/home/lenovo36/Downloads/archive_colab/archive/runs/detect/train9/weights/best.pt"
model = YOLO(model_path)

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
        # else:
            # print(f"Frame decoded successfully: {frame.shape}")
        return frame
    except Exception as e:
        print(f"Error fetching frame: {e}")
        return None

def run_object_detection():

    print("Object detection started...")
    cv2.namedWindow("Object Detection", cv2.WINDOW_AUTOSIZE)
    
    while True:
        frame = fetch_frame(url)
        if frame is None:
            print("Skipping this frame due to decoding error.")
            continue
        
        try:
            # Perform inference
            frame = cv2.flip(frame, 0)  # 0 means vertical flip

            results = model(frame)
            # print("Detection results:", results)
            
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
    
    cv2.destroyAllWindows()

# Corrected main function condition
if __name__ == '__main__':
    run_object_detection()