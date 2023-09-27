;; Auto-generated. Do not edit!


(when (boundp 'DNT::IOTsensor)
  (if (not (find-package "DNT"))
    (make-package "DNT"))
  (shadow 'IOTsensor (find-package "DNT")))
(unless (find-package "DNT::IOTSENSOR")
  (make-package "DNT::IOTSENSOR"))

(in-package "ROS")
;;//! \htmlinclude IOTsensor.msg.html


(defclass DNT::IOTsensor
  :super ros::object
  :slots (_id _name _temperature _humidity ))

(defmethod DNT::IOTsensor
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:temperature __temperature) 0.0)
    ((:humidity __humidity) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _temperature (float __temperature))
   (setq _humidity (float __humidity))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:humidity
   (&optional __humidity)
   (if __humidity (setq _humidity __humidity)) _humidity)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _name
    4 (length _name)
    ;; float64 _temperature
    8
    ;; float64 _humidity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _humidity
       (sys::poke _humidity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _humidity
     (setq _humidity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get DNT::IOTsensor :md5sum-) "d5bf045547d7eeb1b747d0776fbbbf38")
(setf (get DNT::IOTsensor :datatype-) "DNT/IOTsensor")
(setf (get DNT::IOTsensor :definition-)
      "int32  id
string name
float64 temperature
float64 humidity

")



(provide :DNT/IOTsensor "d5bf045547d7eeb1b747d0776fbbbf38")


