
(cl:in-package :asdf)

(defsystem "tle493dw2b6_nano_processor-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MagneticFieldVector" :depends-on ("_package_MagneticFieldVector"))
    (:file "_package_MagneticFieldVector" :depends-on ("_package"))
  ))