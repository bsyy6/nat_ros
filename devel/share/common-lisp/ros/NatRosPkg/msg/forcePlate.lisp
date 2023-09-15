; Auto-generated. Do not edit!


(cl:in-package NatRosPkg-msg)


;//! \htmlinclude forcePlate.msg.html

(cl:defclass <forcePlate> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (nChannels
    :reader nChannels
    :initarg :nChannels
    :type cl:integer
    :initform 0)
   (params
    :reader params
    :initarg :params
    :type cl:fixnum
    :initform 0)
   (channels
    :reader channels
    :initarg :channels
    :type (cl:vector NatRosPkg-msg:channel)
   :initform (cl:make-array 0 :element-type 'NatRosPkg-msg:channel :initial-element (cl:make-instance 'NatRosPkg-msg:channel))))
)

(cl:defclass forcePlate (<forcePlate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <forcePlate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'forcePlate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name NatRosPkg-msg:<forcePlate> is deprecated: use NatRosPkg-msg:forcePlate instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <forcePlate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:id-val is deprecated.  Use NatRosPkg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'nChannels-val :lambda-list '(m))
(cl:defmethod nChannels-val ((m <forcePlate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:nChannels-val is deprecated.  Use NatRosPkg-msg:nChannels instead.")
  (nChannels m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <forcePlate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:params-val is deprecated.  Use NatRosPkg-msg:params instead.")
  (params m))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <forcePlate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:channels-val is deprecated.  Use NatRosPkg-msg:channels instead.")
  (channels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <forcePlate>) ostream)
  "Serializes a message object of type '<forcePlate>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nChannels)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'params)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'channels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'channels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <forcePlate>) istream)
  "Deserializes a message object of type '<forcePlate>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nChannels) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'params) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'channels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'channels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'NatRosPkg-msg:channel))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<forcePlate>)))
  "Returns string type for a message object of type '<forcePlate>"
  "NatRosPkg/forcePlate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'forcePlate)))
  "Returns string type for a message object of type 'forcePlate"
  "NatRosPkg/forcePlate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<forcePlate>)))
  "Returns md5sum for a message object of type '<forcePlate>"
  "78b6575faa3bd78870aadb6231f51303")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'forcePlate)))
  "Returns md5sum for a message object of type 'forcePlate"
  "78b6575faa3bd78870aadb6231f51303")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<forcePlate>)))
  "Returns full string definition for message of type '<forcePlate>"
  (cl:format cl:nil "int32 id~%int32 nChannels ~%int16 params~%channel[] channels~%================================================================================~%MSG: NatRosPkg/channel~%int32 nFrames~%float64[] Values~%bool isEmpty~%bool isPartial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'forcePlate)))
  "Returns full string definition for message of type 'forcePlate"
  (cl:format cl:nil "int32 id~%int32 nChannels ~%int16 params~%channel[] channels~%================================================================================~%MSG: NatRosPkg/channel~%int32 nFrames~%float64[] Values~%bool isEmpty~%bool isPartial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <forcePlate>))
  (cl:+ 0
     4
     4
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <forcePlate>))
  "Converts a ROS message object to a list"
  (cl:list 'forcePlate
    (cl:cons ':id (id msg))
    (cl:cons ':nChannels (nChannels msg))
    (cl:cons ':params (params msg))
    (cl:cons ':channels (channels msg))
))
