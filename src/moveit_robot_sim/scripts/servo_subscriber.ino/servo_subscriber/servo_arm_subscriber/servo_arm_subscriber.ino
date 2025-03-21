#define __STM32F1__
#include <ros.h>
#include <std_msgs/Float32MultiArray.h>
#include <Servo.h>  
#include <math.h>

Servo waist_servo;
Servo shoulder_servo;
Servo elbow_servo;
Servo wrist_servo;
Servo wrist_pitch_servo;
Servo gripper_servo;

ros::NodeHandle nh;

void joint_angles_callback(const std_msgs::Float32MultiArray& msg) {
  // [waist_joint, shoulder_joint, elbow_joint, wrist_joint, wrist_pitch_joint, gripper_joint]
  
  // Map joint angles (in degrees) to PWM signals for the servos
  waist_servo.write(map(msg.data[0],-35,157,0,180));  
  shoulder_servo.write(map(msg.data[1],-116.89,50,0,160));
  elbow_servo.write(map(msg.data[2],-103.2,76.8,180,0));
  wrist_servo.write(msg.data[3]);
  wrist_pitch_servo.write(map(msg.data[4],3,30,0,180));
  gripper_servo.write(map(msg.data[5],-63.1,-42,160,0));  
}

std_msgs::Float32MultiArray joint_angles_msg;
ros::Subscriber<std_msgs::Float32MultiArray> sub("/robot/joint_angles", joint_angles_callback);

void setup() {
  // Initialize ROS serial communication
  nh.initNode();


  waist_servo.attach(PA0);  
  shoulder_servo.attach(PA1);  
  elbow_servo.attach(PA2);
  wrist_servo.attach(PA3);  
  wrist_pitch_servo.attach(PA5);  
  gripper_servo.attach(PA4);  

  nh.subscribe(sub);
}

void loop() {
  // Keep ROS serial communication alive
  nh.spinOnce();
  delay(10);  
}
