; Auto-generated. Do not edit!


(cl:in-package NatRosPkg-msg)


;//! \htmlinclude forcePlates.msg.html

(cl:defclass <forcePlates> (roslisp-msg-protocol:ros-message)
  ((nForcePlates
    :reader nForcePlates
    :initarg :nForcePlates
    :type cl:integer
    :initform 0)
   (forcePlates
    :reader forcePlates
    :initarg :forcePlates
    :type (cl:vector NatRosPkg-msg:forcePlate)
   :initform (cl:make-array 0 :element-type 'NatRosPkg-msg:forcePlate :initial-element (cl:make-instance 'NatRosPkg-msg:forcePlate))))
)

(cl:defclass forcePlates (<forcePlates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <forcePlates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'forcePlates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name NatRosPkg-msg:<forcePlates> is deprecated: use NatRosPkg-msg:forcePlates instead.")))

(cl:ensure-generic-function 'nForcePlates-val :lambda-list '(m))
(cl:defmethod nForcePlates-val ((m <forcePlates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:nForcePlates-val is deprecated.  Use NatRosPkg-msg:nForcePlates instead.")
  (nForcePlates m))

(cl:ensure-generic-function 'forcePlates-val :lambda-list '(m))
(cl:defmethod forcePlates-val ((m <forcePlates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:forcePlates-val is deprecated.  Use NatRosPkg-msg:forcePlates instead.")
  (forcePlates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <forcePlates>) ostream)
  "Serializes a message object of type '<forcePlates>"
  (cl:let* ((signed (cl:slot-value msg 'nForcePlates)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'forcePlates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'forcePlates))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <forcePlates>) istream)
  "Deserializes a message object of type '<forcePlates>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nForcePlates) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'forcePlates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'forcePlates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'NatRosPkg-msg:forcePlate))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<forcePlates>)))
  "Returns string type for a message object of type '<forcePlates>"
  "NatRosPkg/forcePlates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'forcePlates)))
  "Returns string type for a message object of type 'forcePlates"
  "NatRosPkg/forcePlates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<forcePlates>)))
  "Returns md5sum for a message object of type '<forcePlates>"
  "9e2204891ff75e6f356bdd61d2c32647")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'forcePlates)))
  "Returns md5sum for a message object of type 'forcePlates"
  "9e2204891ff75e6f356bdd61d2c32647")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<forcePlates>)))
  "Returns full string definition for message of type '<forcePlates>"
  (cl:format cl:nil "int32 nForcePlates~%forcePlate[] forcePlates~%================================================================================~%MSG: NatRosPkg/forcePlate~%int32 id~%int32 nChannels ~%int16 params~%channel[] channels~%================================================================================~%MSG: NatRosPkg/channel~%int32 nFrames~%float64[] Values~%bool isEmpty~%bool isPartial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'forcePlates)))
  "Returns full string definition for message of type 'forcePlates"
  (cl:format cl:nil "int32 nForcePlates~%forcePlate[] forcePlates~%================================================================================~%MSG: NatRosPkg/forcePlate~%int32 id~%int32 nChannels ~%int16 params~%channel[] channels~%================================================================================~%MSG: NatRosPkg/channel~%int32 nFrames~%float64[] Values~%bool isEmpty~%bool isPartial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <forcePlates>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'forcePlates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <forcePlates>))
  "Converts a ROS message object to a list"
  (cl:list 'forcePlates
    (cl:cons ':nForcePlates (nForcePlates msg))
    (cl:cons ':forcePlates (forcePlates msg))
))
