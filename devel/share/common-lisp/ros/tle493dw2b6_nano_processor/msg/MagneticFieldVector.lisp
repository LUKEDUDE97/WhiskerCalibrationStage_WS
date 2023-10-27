; Auto-generated. Do not edit!


(cl:in-package tle493dw2b6_nano_processor-msg)


;//! \htmlinclude MagneticFieldVector.msg.html

(cl:defclass <MagneticFieldVector> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (magnetic_x
    :reader magnetic_x
    :initarg :magnetic_x
    :type cl:float
    :initform 0.0)
   (magnetic_y
    :reader magnetic_y
    :initarg :magnetic_y
    :type cl:float
    :initform 0.0)
   (magnetic_z
    :reader magnetic_z
    :initarg :magnetic_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass MagneticFieldVector (<MagneticFieldVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagneticFieldVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagneticFieldVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tle493dw2b6_nano_processor-msg:<MagneticFieldVector> is deprecated: use tle493dw2b6_nano_processor-msg:MagneticFieldVector instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MagneticFieldVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tle493dw2b6_nano_processor-msg:header-val is deprecated.  Use tle493dw2b6_nano_processor-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'magnetic_x-val :lambda-list '(m))
(cl:defmethod magnetic_x-val ((m <MagneticFieldVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tle493dw2b6_nano_processor-msg:magnetic_x-val is deprecated.  Use tle493dw2b6_nano_processor-msg:magnetic_x instead.")
  (magnetic_x m))

(cl:ensure-generic-function 'magnetic_y-val :lambda-list '(m))
(cl:defmethod magnetic_y-val ((m <MagneticFieldVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tle493dw2b6_nano_processor-msg:magnetic_y-val is deprecated.  Use tle493dw2b6_nano_processor-msg:magnetic_y instead.")
  (magnetic_y m))

(cl:ensure-generic-function 'magnetic_z-val :lambda-list '(m))
(cl:defmethod magnetic_z-val ((m <MagneticFieldVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tle493dw2b6_nano_processor-msg:magnetic_z-val is deprecated.  Use tle493dw2b6_nano_processor-msg:magnetic_z instead.")
  (magnetic_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagneticFieldVector>) ostream)
  "Serializes a message object of type '<MagneticFieldVector>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'magnetic_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'magnetic_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'magnetic_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagneticFieldVector>) istream)
  "Deserializes a message object of type '<MagneticFieldVector>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnetic_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnetic_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnetic_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagneticFieldVector>)))
  "Returns string type for a message object of type '<MagneticFieldVector>"
  "tle493dw2b6_nano_processor/MagneticFieldVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagneticFieldVector)))
  "Returns string type for a message object of type 'MagneticFieldVector"
  "tle493dw2b6_nano_processor/MagneticFieldVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagneticFieldVector>)))
  "Returns md5sum for a message object of type '<MagneticFieldVector>"
  "8ed7580cb167c0fe0e989bba0b86dd98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagneticFieldVector)))
  "Returns md5sum for a message object of type 'MagneticFieldVector"
  "8ed7580cb167c0fe0e989bba0b86dd98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagneticFieldVector>)))
  "Returns full string definition for message of type '<MagneticFieldVector>"
  (cl:format cl:nil "Header header~%float32 magnetic_x~%float32 magnetic_y~%float32 magnetic_z~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagneticFieldVector)))
  "Returns full string definition for message of type 'MagneticFieldVector"
  (cl:format cl:nil "Header header~%float32 magnetic_x~%float32 magnetic_y~%float32 magnetic_z~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagneticFieldVector>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagneticFieldVector>))
  "Converts a ROS message object to a list"
  (cl:list 'MagneticFieldVector
    (cl:cons ':header (header msg))
    (cl:cons ':magnetic_x (magnetic_x msg))
    (cl:cons ':magnetic_y (magnetic_y msg))
    (cl:cons ':magnetic_z (magnetic_z msg))
))
