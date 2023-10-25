;; Auto-generated. Do not edit!


(when (boundp 'tle493dw2b6_nano_processor::MagneticFieldVector)
  (if (not (find-package "TLE493DW2B6_NANO_PROCESSOR"))
    (make-package "TLE493DW2B6_NANO_PROCESSOR"))
  (shadow 'MagneticFieldVector (find-package "TLE493DW2B6_NANO_PROCESSOR")))
(unless (find-package "TLE493DW2B6_NANO_PROCESSOR::MAGNETICFIELDVECTOR")
  (make-package "TLE493DW2B6_NANO_PROCESSOR::MAGNETICFIELDVECTOR"))

(in-package "ROS")
;;//! \htmlinclude MagneticFieldVector.msg.html


(defclass tle493dw2b6_nano_processor::MagneticFieldVector
  :super ros::object
  :slots (_magnetic_x _magnetic_y _magnetic_z ))

(defmethod tle493dw2b6_nano_processor::MagneticFieldVector
  (:init
   (&key
    ((:magnetic_x __magnetic_x) 0.0)
    ((:magnetic_y __magnetic_y) 0.0)
    ((:magnetic_z __magnetic_z) 0.0)
    )
   (send-super :init)
   (setq _magnetic_x (float __magnetic_x))
   (setq _magnetic_y (float __magnetic_y))
   (setq _magnetic_z (float __magnetic_z))
   self)
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
   ;; float32 _magnetic_x
     (setq _magnetic_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _magnetic_y
     (setq _magnetic_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _magnetic_z
     (setq _magnetic_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tle493dw2b6_nano_processor::MagneticFieldVector :md5sum-) "e76124847d3adf8d4ad3f79fa60629ef")
(setf (get tle493dw2b6_nano_processor::MagneticFieldVector :datatype-) "tle493dw2b6_nano_processor/MagneticFieldVector")
(setf (get tle493dw2b6_nano_processor::MagneticFieldVector :definition-)
      "float32 magnetic_x
float32 magnetic_y
float32 magnetic_z
")



(provide :tle493dw2b6_nano_processor/MagneticFieldVector "e76124847d3adf8d4ad3f79fa60629ef")


