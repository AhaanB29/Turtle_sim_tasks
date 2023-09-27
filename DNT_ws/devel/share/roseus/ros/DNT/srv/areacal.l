;; Auto-generated. Do not edit!


(when (boundp 'DNT::areacal)
  (if (not (find-package "DNT"))
    (make-package "DNT"))
  (shadow 'areacal (find-package "DNT")))
(unless (find-package "DNT::AREACAL")
  (make-package "DNT::AREACAL"))
(unless (find-package "DNT::AREACALREQUEST")
  (make-package "DNT::AREACALREQUEST"))
(unless (find-package "DNT::AREACALRESPONSE")
  (make-package "DNT::AREACALRESPONSE"))

(in-package "ROS")





(defclass DNT::areacalRequest
  :super ros::object
  :slots (_l _b ))

(defmethod DNT::areacalRequest
  (:init
   (&key
    ((:l __l) 0.0)
    ((:b __b) 0.0)
    )
   (send-super :init)
   (setq _l (float __l))
   (setq _b (float __b))
   self)
  (:l
   (&optional __l)
   (if __l (setq _l __l)) _l)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; float64 _l
    8
    ;; float64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _l
       (sys::poke _l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _l
     (setq _l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass DNT::areacalResponse
  :super ros::object
  :slots (_area ))

(defmethod DNT::areacalResponse
  (:init
   (&key
    ((:area __area) 0.0)
    )
   (send-super :init)
   (setq _area (float __area))
   self)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:serialization-length
   ()
   (+
    ;; float64 _area
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _area
       (sys::poke _area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _area
     (setq _area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass DNT::areacal
  :super ros::object
  :slots ())

(setf (get DNT::areacal :md5sum-) "c222771ac5e7a31ae9d73f33968def15")
(setf (get DNT::areacal :datatype-) "DNT/areacal")
(setf (get DNT::areacal :request) DNT::areacalRequest)
(setf (get DNT::areacal :response) DNT::areacalResponse)

(defmethod DNT::areacalRequest
  (:response () (instance DNT::areacalResponse :init)))

(setf (get DNT::areacalRequest :md5sum-) "c222771ac5e7a31ae9d73f33968def15")
(setf (get DNT::areacalRequest :datatype-) "DNT/areacalRequest")
(setf (get DNT::areacalRequest :definition-)
      "float64 l
float64 b
---
float64 area

")

(setf (get DNT::areacalResponse :md5sum-) "c222771ac5e7a31ae9d73f33968def15")
(setf (get DNT::areacalResponse :datatype-) "DNT/areacalResponse")
(setf (get DNT::areacalResponse :definition-)
      "float64 l
float64 b
---
float64 area

")



(provide :DNT/areacal "c222771ac5e7a31ae9d73f33968def15")


