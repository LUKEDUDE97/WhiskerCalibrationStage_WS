; Auto-generated. Do not edit!


(cl:in-package collector-msg)


;//! \htmlinclude calibration_stage_dataset.msg.html

(cl:defclass <calibration_stage_dataset> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0)
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass calibration_stage_dataset (<calibration_stage_dataset>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calibration_stage_dataset>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calibration_stage_dataset)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name collector-msg:<calibration_stage_dataset> is deprecated: use collector-msg:calibration_stage_dataset instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <calibration_stage_dataset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collector-msg:header-val is deprecated.  Use collector-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'magnetic_x-val :lambda-list '(m))
(cl:defmethod magnetic_x-val ((m <calibration_stage_dataset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collector-msg:magnetic_x-val is deprecated.  Use collector-msg:magnetic_x instead.")
  (magnetic_x m))

(cl:ensure-generic-function 'magnetic_y-val :lambda-list '(m))
(cl:defmethod magnetic_y-val ((m <calibration_stage_dataset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collector-msg:magnetic_y-val is deprecated.  Use collector-msg:magnetic_y instead.")
  (magnetic_y m))

(cl:ensure-generic-function 'magnetic_z-val :lambda-list '(m))
(cl:defmethod magnetic_z-val ((m <calibration_stage_dataset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collector-msg:magnetic_z-val is deprecated.  Use collector-msg:magnetic_z instead.")
  (magnetic_z m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <calibration_stage_dataset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collector-msg:twist-val is deprecated.  Use collector-msg:twist instead.")
  (twist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calibration_stage_dataset>) ostream)
  "Serializes a message object of type '<calibration_stage_dataset>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calibration_stage_dataset>) istream)
  "Deserializes a message object of type '<calibration_stage_dataset>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calibration_stage_dataset>)))
  "Returns string type for a message object of type '<calibration_stage_dataset>"
  "collector/calibration_stage_dataset")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calibration_stage_dataset)))
  "Returns string type for a message object of type 'calibration_stage_dataset"
  "collector/calibration_stage_dataset")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calibration_stage_dataset>)))
  "Returns md5sum for a message object of type '<calibration_stage_dataset>"
  "0949b6e40bd311216e41fdc6cd742b99")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calibration_stage_dataset)))
  "Returns md5sum for a message object of type 'calibration_stage_dataset"
  "0949b6e40bd311216e41fdc6cd742b99")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calibration_stage_dataset>)))
  "Returns full string definition for message of type '<calibration_stage_dataset>"
  (cl:format cl:nil "Header header~%float32 magnetic_x~%float32 magnetic_y~%float32 magnetic_z~%geometry_msgs/Twist twist~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calibration_stage_dataset)))
  "Returns full string definition for message of type 'calibration_stage_dataset"
  (cl:format cl:nil "Header header~%float32 magnetic_x~%float32 magnetic_y~%float32 magnetic_z~%geometry_msgs/Twist twist~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calibration_stage_dataset>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calibration_stage_dataset>))
  "Converts a ROS message object to a list"
  (cl:list 'calibration_stage_dataset
    (cl:cons ':header (header msg))
    (cl:cons ':magnetic_x (magnetic_x msg))
    (cl:cons ':magnetic_y (magnetic_y msg))
    (cl:cons ':magnetic_z (magnetic_z msg))
    (cl:cons ':twist (twist msg))
))
