; Auto-generated. Do not edit!


(cl:in-package DNT-srv)


;//! \htmlinclude areacal-request.msg.html

(cl:defclass <areacal-request> (roslisp-msg-protocol:ros-message)
  ((l
    :reader l
    :initarg :l
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0))
)

(cl:defclass areacal-request (<areacal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <areacal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'areacal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name DNT-srv:<areacal-request> is deprecated: use DNT-srv:areacal-request instead.")))

(cl:ensure-generic-function 'l-val :lambda-list '(m))
(cl:defmethod l-val ((m <areacal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader DNT-srv:l-val is deprecated.  Use DNT-srv:l instead.")
  (l m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <areacal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader DNT-srv:b-val is deprecated.  Use DNT-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <areacal-request>) ostream)
  "Serializes a message object of type '<areacal-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <areacal-request>) istream)
  "Deserializes a message object of type '<areacal-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<areacal-request>)))
  "Returns string type for a service object of type '<areacal-request>"
  "DNT/areacalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'areacal-request)))
  "Returns string type for a service object of type 'areacal-request"
  "DNT/areacalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<areacal-request>)))
  "Returns md5sum for a message object of type '<areacal-request>"
  "c222771ac5e7a31ae9d73f33968def15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'areacal-request)))
  "Returns md5sum for a message object of type 'areacal-request"
  "c222771ac5e7a31ae9d73f33968def15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<areacal-request>)))
  "Returns full string definition for message of type '<areacal-request>"
  (cl:format cl:nil "float64 l~%float64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'areacal-request)))
  "Returns full string definition for message of type 'areacal-request"
  (cl:format cl:nil "float64 l~%float64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <areacal-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <areacal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'areacal-request
    (cl:cons ':l (l msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude areacal-response.msg.html

(cl:defclass <areacal-response> (roslisp-msg-protocol:ros-message)
  ((area
    :reader area
    :initarg :area
    :type cl:float
    :initform 0.0))
)

(cl:defclass areacal-response (<areacal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <areacal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'areacal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name DNT-srv:<areacal-response> is deprecated: use DNT-srv:areacal-response instead.")))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <areacal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader DNT-srv:area-val is deprecated.  Use DNT-srv:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <areacal-response>) ostream)
  "Serializes a message object of type '<areacal-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <areacal-response>) istream)
  "Deserializes a message object of type '<areacal-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'area) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<areacal-response>)))
  "Returns string type for a service object of type '<areacal-response>"
  "DNT/areacalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'areacal-response)))
  "Returns string type for a service object of type 'areacal-response"
  "DNT/areacalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<areacal-response>)))
  "Returns md5sum for a message object of type '<areacal-response>"
  "c222771ac5e7a31ae9d73f33968def15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'areacal-response)))
  "Returns md5sum for a message object of type 'areacal-response"
  "c222771ac5e7a31ae9d73f33968def15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<areacal-response>)))
  "Returns full string definition for message of type '<areacal-response>"
  (cl:format cl:nil "float64 area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'areacal-response)))
  "Returns full string definition for message of type 'areacal-response"
  (cl:format cl:nil "float64 area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <areacal-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <areacal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'areacal-response
    (cl:cons ':area (area msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'areacal)))
  'areacal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'areacal)))
  'areacal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'areacal)))
  "Returns string type for a service object of type '<areacal>"
  "DNT/areacal")