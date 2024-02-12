//  ~/Arduino/libraries/<PackageName>/src

#include <ros.h>
#include <std_msgs/Float32.h>
#include <Tle493d_w2b6.h>
#include <tle493dw2b6_nano_processor/MagneticFieldVector.h>

// Create instances of the Tle493d_w2b6 class
Tle493d_w2b6 Tle493dMagnetic3DSensor1 = Tle493d_w2b6(Tle493d::FASTMODE); // Address 0x35

// Set up the ros node and publisher
tle493dw2b6_nano_processor::MagneticFieldVector FieldVector_msg;

ros::NodeHandle nh;
ros::Publisher pub("MagneticSensor", &FieldVector_msg);

void setup()
{

    nh.initNode();
    nh.advertise(pub);
    
    // Initialize one sensor
    Tle493dMagnetic3DSensor1.begin();

    // int thr = 2;
    // Tle493dMagnetic3DSensor1.setWakeUpThreshold(thr, -(thr), thr, -(thr), thr, -(thr));

    // The update rate is set to 3 (fastest is 0 and slowest is 7)
    //  Tle493dMagnetic3DSensor1.setUpdateRate(7);
}

long publish_timer;

void loop()
{

    if (millis() > publish_timer)
    {

        // Request readings from sensor
        Tle493dMagnetic3DSensor1.updateData();
        // delay(10);

        // FieldVector_msg.data = Tle493dMagnetic3DSensor1.getX();
        FieldVector_msg.magnetic_x = Tle493dMagnetic3DSensor1.getX();
        FieldVector_msg.magnetic_y = Tle493dMagnetic3DSensor1.getY();
        FieldVector_msg.magnetic_z = Tle493dMagnetic3DSensor1.getZ();
        FieldVector_msg.header.stamp = nh.now();
        // DYX: Copy the frame_id from F/T sensor driver, otherwise the ApproximatSynchronizer won't work
        // Yet the frame id may cause to jam the readings
        // FieldVector_msg.header.frame_id = "ft_sensor0_wrench";
        pub.publish(&FieldVector_msg);

        publish_timer = millis() + 10; // publish 100 times a second : 10 milliseconds time-peroid
    }

    nh.spinOnce();
}
