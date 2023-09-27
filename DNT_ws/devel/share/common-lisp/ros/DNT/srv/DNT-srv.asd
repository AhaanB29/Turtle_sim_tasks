
(cl:in-package :asdf)

(defsystem "DNT-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInt" :depends-on ("_package_AddTwoInt"))
    (:file "_package_AddTwoInt" :depends-on ("_package"))
    (:file "areacal" :depends-on ("_package_areacal"))
    (:file "_package_areacal" :depends-on ("_package"))
  ))