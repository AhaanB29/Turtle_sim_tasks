
(cl:in-package :asdf)

(defsystem "DNT-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "IOTsensor" :depends-on ("_package_IOTsensor"))
    (:file "_package_IOTsensor" :depends-on ("_package"))
  ))