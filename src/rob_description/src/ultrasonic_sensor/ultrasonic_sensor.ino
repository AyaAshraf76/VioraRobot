#define __STM32F1__
#include <ros.h>
#include <std_msgs/Float64.h>
#include <Servo.h>
#include <std_msgs/UInt16.h>

// Set up the ROS node and publisher
std_msgs::Float64 Distance;
ros::Publisher pub_sonar("sonar", &Distance);
ros::NodeHandle nh;

int trigPin = PA7;    // Trigger pin (adjust for STM32)
int echoPin = PA6;    // Echo pin (adjust for STM32)

// Defines variables
long duration;
float distance;
Servo servo;

void servo_cb(const std_msgs::UInt16& cmd_msg) {
  servo.write(cmd_msg.data); // Set servo angle, should be from 0-180
}

ros::Subscriber<std_msgs::UInt16> sub("servo", servo_cb);

void setup() {
  Serial.begin(57600); // Start serial communication at 57600 baud rate
  // Define inputs and outputs
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  nh.initNode();
  nh.advertise(pub_sonar);
  nh.subscribe(sub);
  servo.attach(PB0); // Attach servo to pin (adjust this based on your STM32)
}                                                                                                                            

void loop() {
  // Clears the trigPin
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);

  // Sets the trigPin on HIGH state for 10 microseconds
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);

  // Reads the echoPin, returns the sound wave travel time in microseconds
  duration = pulseIn(echoPin, HIGH);

  // Calculating the distance
  distance = duration * 0.034 / 2;
  // Publishing data
  Distance.data = distance;
  pub_sonar.publish(&Distance);
  nh.spinOnce();

  delay(100);
}
