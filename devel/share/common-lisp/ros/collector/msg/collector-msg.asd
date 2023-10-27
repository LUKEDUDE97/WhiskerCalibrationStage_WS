
(cl:in-package :asdf)

(defsystem "collector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "calibration_stage_dataset" :depends-on ("_package_calibration_stage_dataset"))
    (:file "_package_calibration_stage_dataset" :depends-on ("_package"))
  ))