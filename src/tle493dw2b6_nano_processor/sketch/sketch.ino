#include <Tle493d_w2b6.h>

#include <ros.h>
#include <std_msgs/Float32.h>
// #include <tle493dw2b6_nano_processor/MagneticFieldVector.h>

// Create instances of the Tle493d_w2b6 class
Tle493d_w2b6 Tle493dMagnetic3DSensor1 = Tle493d_w2b6(Tle493d::FASTMODE); // Address 0x35

// Set up the ros node and publisher
std_msgs::Float32 msg_x;

ros::NodeHandle nh;
ros::Publisher pub("MagneticSensor", &msg_x);

void setup() {

  nh.initNode();
  nh.advertise(pub);

  // Initialize one sensor
  Tle493dMagnetic3DSensor1.begin();

  int thr= 2;
  Tle493dMagnetic3DSensor1.setWakeUpThreshold(thr,-(thr),thr,-(thr),thr,-(thr));

  //The update rate is set to 3 (fastest is 0 and slowest is 7)
  // Tle493dMagnetic3DSensor1.setUpdateRate(3);

}

void loop() {
  // Update data from sensors
  Tle493dMagnetic3DSensor1.updateData();

  msg_x.data = Tle493dMagnetic3DSensor1.getX();
  pub.publish(&msg_x);

  nh.spinOnce();
  delay(100);

}
