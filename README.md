# **Viora Quadruped Robot for Plastic Bottle Collection**

## **Overview**  
This repository contains the software, simulation, and motion planning framework for a **quadruped robotic system** designed to collect plastic bottles. The robot integrates **MoveIt!**, **PID control**, and **Gazebo simulation** to achieve stable movement and precise object collection.  

The system employs **SLAM (Simultaneous Localization and Mapping)** for mapping and localization, utilizing:  
- **Hector SLAM** (Ultrasonic sensor with servo-based rotation).  
- **ORB-SLAM2** (Feature-based camera localization).  

For **object detection**, the system incorporates **YOLOv11**, a state-of-the-art deep learning model, to identify and locate plastic bottles in real-time.  

## **System Features**  
- **Quadruped locomotion** controlled by **18 servo motors** (12 for the legs, 6 for the robotic arm).  
- **STM32F103C8 microcontroller** for servo coordination and processing.  
- **Custom-designed PCB** for power management and servo control.  
- **Plastic bottle detection using YOLOv11** with real-time vision processing.  
- **SLAM implementation for mapping and navigation**.  
- **Leg movement follows a "crawl gait" pattern** to maintain stability and efficiency.  

---  

## **Installation and Setup**  

### **1️⃣ Clone the Repository**  
```bash
git clone https://github.com/yourusername/quadruped_robot.git
cd quadruped_robot
```  

### **2️⃣ Install Dependencies**  
#### **ROS & Required Packages**  
```bash
sudo apt update && sudo apt install -y \
    ros-noetic-moveit \
    ros-noetic-gazebo-ros \
    ros-noetic-gazebo-ros-control \
    ros-noetic-joint-trajectory-controller \
    ros-noetic-robot-state-publisher \
    ros-noetic-joint-state-publisher \
    ros-noetic-joint-state-publisher-gui \
    ros-noetic-hector-slam \
    ros-noetic-orb-slam2 \
    ros-noetic-xacro \
    ros-noetic-tf2-ros \
    ros-noetic-rviz \
    ros-noetic-geometry-msgs \
    ros-noetic-std-msgs \
    ros-noetic-sensor-msgs \
    ros-noetic-rospy \
    ros-noetic-roscpp \
    ros-noetic-cv-bridge \
    ros-noetic-image-transport
```  

### **3️⃣ Build the Project**  
```bash
catkin_make
source devel/setup.bash
```  

### **4️⃣ Running the Robot**  

- **To move the robotic arm based on camera detection:**  
  ```bash
  roslaunch rob_description robot_bringup.launch
  ```  
  This will initialize the robotic arm and process camera-based object detection.  

- **To launch the robot and move it without using the camera:**  
  ```bash
  roslaunch moveit_robot_sim robot_sim.launch
  ```  
  Then, in a separate terminal, run:  
  ```bash
  rosrun moveit_robot_sim robot_arm_control_pose.py
  ```  
  This setup allows direct robot motion control without relying on camera input.  

---  

## **Hardware and Control System**  

### **Servo Motor and Microcontroller Implementation**  
- **18 servo motors** are utilized:  
  - **6 servos for the robotic arm**.  
  - **12 servos for quadruped leg movement**.  
- **STM32F103C8 microcontroller** manages servo control and signal processing.  
- **Custom PCB** was designed for efficient power distribution and servo control.  
- **PID control** ensures stable movement and reduces oscillations during locomotion.  

### **Computer Vision & Object Detection**  
- **YOLOv11** is employed for **plastic bottle detection** in real-time.  
- The detection system enables the robotic arm to **identify and grasp bottles** based on confidence levels.  
- The **camera feed is processed using OpenCV and PyTorch** for accurate predictions.  

### **SLAM and Localization**  
- **Hector SLAM**: Uses an **ultrasonic sensor mounted on a servo** to capture a **180° environment map**.  
- **ORB-SLAM2**: Uses a **camera-based feature detection algorithm** for real-time mapping and navigation.  
- **Future enhancement:** Merging both SLAM maps for improved localization accuracy.  

---  

## **Future Enhancements**  
- **Merge Hector SLAM and ORB-SLAM2 maps** for enhanced environmental understanding.  
- **Integrate the TEB local planner** for improved obstacle avoidance and path planning.  
- **Implement Deep Reinforcement Learning (DRL) for quadruped walking optimization**.  
- **Migrate to ROS2** for improved modularity, real-time capabilities, and scalability.  

---  

## **Contributing**  
Contributions are welcome. Please submit issues or pull requests to enhance the functionality of the quadruped robotic system.   

