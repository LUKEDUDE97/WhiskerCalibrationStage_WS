;; Auto-generated. Do not edit!


(when (boundp 'tle493dw2b6_nano_processor::MagneticFieldVector)
  (if (not (find-package "TLE493DW2B6_NANO_PROCESSOR"))
    (make-package "TLE493DW2B6_NANO_PROCESSOR"))
  (shadow 'MagneticFieldVector (find-package "TLE493DW2B6_NANO_PROCESSOR")))
(unless (find-package "TLE493DW2B6_NANO_PROCESSOR::MAGNETICFIELDVECTOR")
  (make-package "TLE493DW2B6_NANO_PROCESSOR::MAGNETICFIELDVECTOR"))

(in-package "ROS")
;;//! \htmlinclude MagneticFieldVector.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tle493dw2b6_nano_processor::MagneticFieldVector
  :super ros::object
  :slots (_header _magnetic_x _magnetic_y _magnetic_z ))

(defmethod tle493dw2b6_nano_processor::MagneticFieldVector
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:magnetic_x __magnetic_x) 0.0)
    ((:magnetic_y __magnetic_y) 0.0)
    ((:magnetic_z __magnetic_z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _magnetic_x (float __magnetic_x))
   (setq _magnetic_y (float __magnetic_y))
   (setq _magnetic_z (float __magnetic_z))
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
   ;;
   self)
  )

(setf (get tle493dw2b6_nano_processor::MagneticFieldVector :md5sum-) "8ed7580cb167c0fe0e989bba0b86dd98")
(setf (get tle493dw2b6_nano_processor::MagneticFieldVector :datatype-) "tle493dw2b6_nano_processor/MagneticFieldVector")
(setf (get tle493dw2b6_nano_processor::MagneticFieldVector :definition-)
      "Header header
float32 magnetic_x
float32 magnetic_y
float32 magnetic_z
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

")



(provide :tle493dw2b6_nano_processor/MagneticFieldVector "8ed7580cb167c0fe0e989bba0b86dd98")


