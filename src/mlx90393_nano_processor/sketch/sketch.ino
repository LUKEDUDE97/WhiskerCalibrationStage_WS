#include <Adafruit_MLX90393.h>

#include <ros.h>
#include <tle493dw2b6_nano_processor/MagneticFieldVector.h>

Adafruit_MLX90393 sensor = Adafruit_MLX90393();

tle493dw2b6_nano_processor::MagneticFieldVector FieldVector_msg;

ros::NodeHandle nh;
ros::Publisher pub("MagneticSensor", &FieldVector_msg);

void setup()
{

  nh.getHardware()->setBaud(115200);
  nh.initNode();
  nh.advertise(pub);

  if (! sensor.begin_I2C()) {          
    while (1) { delay(10); }
  }

  sensor.setGain(MLX90393_GAIN_1X);

  // Set resolution, per axis. Aim for sensitivity of ~0.15 for XY- axes and ~0.24 for Z- axis.
  sensor.setResolution(MLX90393_X, MLX90393_RES_16);
  sensor.setResolution(MLX90393_Y, MLX90393_RES_16);
  sensor.setResolution(MLX90393_Z, MLX90393_RES_16);

  // Set oversampling
  sensor.setOversampling(MLX90393_OSR_1);

  // Set digital filtering
  sensor.setFilter(MLX90393_FILTER_1);
}

void loop() {

  float x, y, z;
  
  // get X Y and Z data at once
  if (sensor.readData(&x, &y, &z)) {

      FieldVector_msg.magnetic_x = x;
      FieldVector_msg.magnetic_y = y;
      FieldVector_msg.magnetic_z = z;
      FieldVector_msg.header.stamp = nh.now();
      pub.publish(&FieldVector_msg);

  }

  nh.spinOnce();

}