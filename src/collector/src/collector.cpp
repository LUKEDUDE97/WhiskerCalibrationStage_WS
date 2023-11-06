#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

#include <geometry_msgs/TwistStamped.h>
#include <geometry_msgs/WrenchStamped.h>
#include <tle493dw2b6_nano_processor/MagneticFieldVector.h>
#include <collector/calibration_stage_dataset.h>

using namespace message_filters;
using namespace geometry_msgs;
using namespace tle493dw2b6_nano_processor;
using namespace collector;

ros::Publisher pub;

void callback(const TwistStampedConstPtr &contact_msg,
              const MagneticFieldVectorConstPtr &magnetic_msg, 
              const WrenchStampedConstPtr &torque_msg)
{
    calibration_stage_dataset pub_msg;
    pub_msg.header.stamp = ros::Time::now();
    pub_msg.magnetic_x = magnetic_msg->magnetic_x;
    pub_msg.magnetic_y = magnetic_msg->magnetic_y;
    pub_msg.magnetic_z = magnetic_msg->magnetic_z;
    pub_msg.twist.linear.x = contact_msg->twist.linear.x;
    pub_msg.twist.linear.y = contact_msg->twist.linear.y;
    pub_msg.wrench.torque.x = torque_msg->wrench.torque.x;
    pub_msg.wrench.torque.y = torque_msg->wrench.torque.y;
    pub_msg.wrench.torque.z = torque_msg->wrench.torque.z;
    pub.publish(pub_msg);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "whisker_cs_sampling");

    ros::NodeHandle nh;

    pub = nh.advertise<calibration_stage_dataset>("/cs_sample_data", 10);
    message_filters::Subscriber<TwistStamped> contact_sub(
        nh, "/cnc_interface/position", 1);
    message_filters::Subscriber<MagneticFieldVector> magnetic_sub(
        nh, "/MagneticSensor", 1);
    message_filters::Subscriber<WrenchStamped> torque_sub(
        nh, "/bus0/ft_sensor0/ft_sensor_readings/wrench", 1);

    typedef sync_policies::ApproximateTime<TwistStamped, MagneticFieldVector, WrenchStamped> MySyncPolicy;
    // ApproximateTime takes a queue size as its constructor argument, hence MySyncPolicy(10)
    Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), contact_sub, magnetic_sub, torque_sub);
    sync.registerCallback(boost::bind(&callback, _1, _2, _3));

    ros::spin();

    return 0;
}