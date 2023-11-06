;; Auto-generated. Do not edit!


(when (boundp 'collector::calibration_stage_dataset)
  (if (not (find-package "COLLECTOR"))
    (make-package "COLLECTOR"))
  (shadow 'calibration_stage_dataset (find-package "COLLECTOR")))
(unless (find-package "COLLECTOR::CALIBRATION_STAGE_DATASET")
  (make-package "COLLECTOR::CALIBRATION_STAGE_DATASET"))

(in-package "ROS")
;;//! \htmlinclude calibration_stage_dataset.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass collector::calibration_stage_dataset
  :super ros::object
  :slots (_header _magnetic_x _magnetic_y _magnetic_z _twist _wrench ))

(defmethod collector::calibration_stage_dataset
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:magnetic_x __magnetic_x) 0.0)
    ((:magnetic_y __magnetic_y) 0.0)
    ((:magnetic_z __magnetic_z) 0.0)
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:wrench __wrench) (instance geometry_msgs::Wrench :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _magnetic_x (float __magnetic_x))
   (setq _magnetic_y (float __magnetic_y))
   (setq _magnetic_z (float __magnetic_z))
   (setq _twist __twist)
   (setq _wrench __wrench)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:magnetic_x
   (&optional __magnetic_x)
   (if __magnetic_x (setq _magnetic_x __magnetic_x)) _magnetic_x)
  (:magnetic_y
   (&optional __magnetic_y)
   (if __magnetic_y (setq _magnetic_y __magnetic_y)) _magnetic_y)
  (:magnetic_z
   (&optional __magnetic_z)
   (if __magnetic_z (setq _magnetic_z __magnetic_z)) _magnetic_z)
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:wrench
   (&rest __wrench)
   (if (keywordp (car __wrench))
       (send* _wrench __wrench)
     (progn
       (if __wrench (setq _wrench (car __wrench)))
       _wrench)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _magnetic_x
    4
    ;; float32 _magnetic_y
    4
    ;; float32 _magnetic_z
    4
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; geometry_msgs/Wrench _wrench
    (send _wrench :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _magnetic_x
       (sys::poke _magnetic_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _magnetic_y
       (sys::poke _magnetic_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _magnetic_z
       (sys::poke _magnetic_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; geometry_msgs/Wrench _wrench
       (send _wrench :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _magnetic_x
     (setq _magnetic_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _magnetic_y
     (setq _magnetic_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _magnetic_z
     (setq _magnetic_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; geometry_msgs/Wrench _wrench
     (send _wrench :deserialize buf ptr-) (incf ptr- (send _wrench :serialization-length))
   ;;
   self)
  )

(setf (get collector::calibration_stage_dataset :md5sum-) "d271204020ff451bb31a3210cdd4d942")
(setf (get collector::calibration_stage_dataset :datatype-) "collector/calibration_stage_dataset")
(setf (get collector::calibration_stage_dataset :definition-)
      "Header header
float32 magnetic_x
float32 magnetic_y
float32 magnetic_z
geometry_msgs/Twist twist
geometry_msgs/Wrench wrench
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

")



(provide :collector/calibration_stage_dataset "d271204020ff451bb31a3210cdd4d942")


