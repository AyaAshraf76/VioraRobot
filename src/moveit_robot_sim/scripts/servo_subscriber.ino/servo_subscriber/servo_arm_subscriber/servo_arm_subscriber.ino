#define __STM32F1__
#include <ros.h>
#include <std_msgs/Float32MultiArray.h>
#include <Servo.h>  // If you are using Servo library for easier control
#include <math.h>

// Declare Servo objects for each of your servos
Servo waist_servo;
Servo shoulder_servo;
Servo elbow_servo;
Servo wrist_servo;
Servo wrist_pitch_servo;
Servo gripper_servo;

// Create a subscriber to the joint angles topic
ros::NodeHandle nh;

void joint_angles_callback(const std_msgs::Float32MultiArray& msg) {
  // Assuming the joint angles are in the correct order
  // [waist_joint, shoulder_joint, elbow_joint, wrist_joint, wrist_pitch_joint, gripper_joint]
  
  // Map joint angles (in degrees) to PWM signals for the servos
  waist_servo.write(map(msg.data[0],-57.3,122.7,0,180));  // Map from -90 to 90 degrees to PWM
  shoulder_servo.write(map(msg.data[1],-116.89,63.03,0,180));
  elbow_servo.write(map(msg.data[2],-103.2,76.8,180,0));
  wrist_servo.write(msg.data[3]);
  wrist_pitch_servo.write(map(msg.data[4],-65.4,114.7,0,180));
  gripper_servo.write(map(msg.data[5],-63.1,-23,0,180));  // Assuming gripper is angle-controlled
}

std_msgs::Float32MultiArray joint_angles_msg;
ros::Subscriber<std_msgs::Float32MultiArray> sub("/robot/joint_angles", joint_angles_callback);

void setup() {
  // Initialize ROS serial communication
  nh.initNode();

  // Initialize servos (connect them to pins of STM32, you can change the pin numbers as required)
  waist_servo.attach(PA0);  // Example pin for waist
  shoulder_servo.attach(PA1);  // Example pin for shoulder
  elbow_servo.attach(PA2);  // Example pin for elbow
  wrist_servo.attach(PA3);  // Example pin for wrist
  wrist_pitch_servo.attach(PA4);  // Example pin for wrist pitch
  gripper_servo.attach(PA5);  // Example pin for gripper

  // Subscribe to the joint angles topic
  nh.subscribe(sub);
}

void loop() {
  // Keep ROS serial communication alive
  nh.spinOnce();
  delay(10);  // Small delay
}
