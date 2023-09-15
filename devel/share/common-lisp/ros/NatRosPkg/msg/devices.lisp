; Auto-generated. Do not edit!


(cl:in-package NatRosPkg-msg)


;//! \htmlinclude devices.msg.html

(cl:defclass <devices> (roslisp-msg-protocol:ros-message)
  ((nDevices
    :reader nDevices
    :initarg :nDevices
    :type cl:integer
    :initform 0)
   (devices
    :reader devices
    :initarg :devices
    :type (cl:vector NatRosPkg-msg:device)
   :initform (cl:make-array 0 :element-type 'NatRosPkg-msg:device :initial-element (cl:make-instance 'NatRosPkg-msg:device))))
)

(cl:defclass devices (<devices>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <devices>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'devices)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name NatRosPkg-msg:<devices> is deprecated: use NatRosPkg-msg:devices instead.")))

(cl:ensure-generic-function 'nDevices-val :lambda-list '(m))
(cl:defmethod nDevices-val ((m <devices>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:nDevices-val is deprecated.  Use NatRosPkg-msg:nDevices instead.")
  (nDevices m))

(cl:ensure-generic-function 'devices-val :lambda-list '(m))
(cl:defmethod devices-val ((m <devices>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:devices-val is deprecated.  Use NatRosPkg-msg:devices instead.")
  (devices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <devices>) ostream)
  "Serializes a message object of type '<devices>"
  (cl:let* ((signed (cl:slot-value msg 'nDevices)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'devices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'devices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <devices>) istream)
  "Deserializes a message object of type '<devices>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nDevices) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'devices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'devices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'NatRosPkg-msg:device))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<devices>)))
  "Returns string type for a message object of type '<devices>"
  "NatRosPkg/devices")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'devices)))
  "Returns string type for a message object of type 'devices"
  "NatRosPkg/devices")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<devices>)))
  "Returns md5sum for a message object of type '<devices>"
  "08d9ab4027fd2d063225bde907f29977")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'devices)))
  "Returns md5sum for a message object of type 'devices"
  "08d9ab4027fd2d063225bde907f29977")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<devices>)))
  "Returns full string definition for message of type '<devices>"
  (cl:format cl:nil "int32 nDevices~%device[] devices ~%================================================================================~%MSG: NatRosPkg/device~%int32 id~%int32 nChannels ~%int16 params~%channel[] channels~%================================================================================~%MSG: NatRosPkg/channel~%int32 nFrames~%float64[] Values~%bool isEmpty~%bool isPartial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'devices)))
  "Returns full string definition for message of type 'devices"
  (cl:format cl:nil "int32 nDevices~%device[] devices ~%================================================================================~%MSG: NatRosPkg/device~%int32 id~%int32 nChannels ~%int16 params~%channel[] channels~%================================================================================~%MSG: NatRosPkg/channel~%int32 nFrames~%float64[] Values~%bool isEmpty~%bool isPartial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <devices>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'devices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <devices>))
  "Converts a ROS message object to a list"
  (cl:list 'devices
    (cl:cons ':nDevices (nDevices msg))
    (cl:cons ':devices (devices msg))
))
