#define __STM32F1__
#include <ros.h>
#include <std_msgs/Float32MultiArray.h>
#include <Servo.h>

// Create the ROS node handle
ros::NodeHandle nh;

// Declare servo objects for each leg (each leg has 3 servos, so 12 servos in total)
Servo leg1_servo1, leg1_servo2, leg1_servo3;
Servo leg2_servo1, leg2_servo2, leg2_servo3;
Servo leg3_servo1, leg3_servo2, leg3_servo3;
Servo leg4_servo1, leg4_servo2, leg4_servo3;

// Define a message to store the joint angles (same as the Float32MultiArray in ROS)
std_msgs::Float32MultiArray joint_angles_msg;

// Subscriber callback function to process incoming joint angles
void jointAnglesCallback(const std_msgs::Float32MultiArray& msg) {
  // Extract the joint angles for each leg and servo
  // Leg 1: servos 1, 2, 3
  leg1_servo1.write(map(msg.data[0], -75, 75, 0, 180));  // Joint 1 for leg 1
  leg1_servo2.write(map(msg.data[1], -90, 90, 0, 180));  // Joint 2 for leg 1
  leg1_servo3.write(map(msg.data[2], -178, 29, 0, 180));  // Joint 3 for leg 1

  // Leg 2: servos 1, 2, 3
  leg2_servo1.write(map(msg.data[3], -75, 75, 0, 180));  // Joint 1 for leg 2
  leg2_servo2.write(map(msg.data[4], -180, 0, 0, 180));  // Joint 2 for leg 2
  leg2_servo3.write(map(msg.data[5], -90, 90, 0, 180));  // Joint 3 for leg 2

  // Leg 3: servos 1, 2, 3
  leg3_servo1.write(map(msg.data[6], -75, 75, 0, 180));  // Joint 1 for leg 3
  leg3_servo2.write(map(msg.data[7], -90, 90, 0, 180));  // Joint 2 for leg 3
  leg3_servo3.write(map(msg.data[8], -178, 29, 0, 180));  // Joint 3 for leg 3

  // Leg 4: servos 1, 2, 3
  leg4_servo1.write(map(msg.data[9], -75, 75, 0, 180));  // Joint 1 for leg 4
  leg4_servo2.write(map(msg.data[10], -90, 90, 0, 180));  // Joint 2 for leg 4
  leg4_servo3.write(map(msg.data[11], -178, 29, 0, 180));  // Joint 3 for leg 4
}

// Create a ROS subscriber to listen to joint angles messages
ros::Subscriber<std_msgs::Float32MultiArray> joint_angles_sub("/robot/joint_angles", jointAnglesCallback);

void setup() {
  // Initialize servos on appropriate pins (change pins as needed for your STM32 board)
  leg1_servo1.attach(PA9);  // Servo 1 for leg 1
  leg1_servo2.attach(PA10); // Servo 2 for leg 1
  leg1_servo3.attach(PA11); // Servo 3 for leg 1

  leg2_servo1.attach(PA12); // Servo 1 for leg 2
  leg2_servo2.attach(PA13); // Servo 2 for leg 2
  leg2_servo3.attach(PA14); // Servo 3 for leg 2

  leg3_servo1.attach(PB0);  // Servo 1 for leg 3
  leg3_servo2.attach(PB1);  // Servo 2 for leg 3
  leg3_servo3.attach(PB2);  // Servo 3 for leg 3

  leg4_servo1.attach(PB3);  // Servo 1 for leg 4
  leg4_servo2.attach(PB4);  // Servo 2 for leg 4
  leg4_servo3.attach(PB5);  // Servo 3 for leg 4

  // Start the ROS communication
  nh.initNode();
  nh.subscribe(joint_angles_sub);
}

void loop() {
  // Keep processing ROS messages
  nh.spinOnce();

  // Add a small delay to prevent servo jitter
  delay(10);
}
