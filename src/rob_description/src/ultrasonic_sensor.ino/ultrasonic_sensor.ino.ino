#define __STM32F1__
#include <ros.h>
#include <std_msgs/Float32.h>

#define trigPin PA6  
#define echoPin PA7

ros ::NodeHandle nh;

std_msgs::Float32 distance_msg;
ros::Publisher pub("/ultrasonic/scan",&distance_msg);

long duration;
float distance;

void setup() {
  nh.initNode();

  pinMode(trigPin, OUTPUT); 
  pinMode(echoPin, INPUT);  

  nh.advertise(pub);
}

void loop() {

  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);  
  digitalWrite(trigPin, LOW);

  duration = pulseIn(echoPin, HIGH);

  distance = duration * 0.0344 / 2;
  

  distance_msg.data=distance;
  pub.publish(&distance_msg);
  
  nh.spinOnce();


  delay(100);  
}