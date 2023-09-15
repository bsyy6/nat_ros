; Auto-generated. Do not edit!


(cl:in-package NatRosPkg-msg)


;//! \htmlinclude channel.msg.html

(cl:defclass <channel> (roslisp-msg-protocol:ros-message)
  ((nFrames
    :reader nFrames
    :initarg :nFrames
    :type cl:integer
    :initform 0)
   (Values
    :reader Values
    :initarg :Values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (isEmpty
    :reader isEmpty
    :initarg :isEmpty
    :type cl:boolean
    :initform cl:nil)
   (isPartial
    :reader isPartial
    :initarg :isPartial
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass channel (<channel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <channel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'channel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name NatRosPkg-msg:<channel> is deprecated: use NatRosPkg-msg:channel instead.")))

(cl:ensure-generic-function 'nFrames-val :lambda-list '(m))
(cl:defmethod nFrames-val ((m <channel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:nFrames-val is deprecated.  Use NatRosPkg-msg:nFrames instead.")
  (nFrames m))

(cl:ensure-generic-function 'Values-val :lambda-list '(m))
(cl:defmethod Values-val ((m <channel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:Values-val is deprecated.  Use NatRosPkg-msg:Values instead.")
  (Values m))

(cl:ensure-generic-function 'isEmpty-val :lambda-list '(m))
(cl:defmethod isEmpty-val ((m <channel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:isEmpty-val is deprecated.  Use NatRosPkg-msg:isEmpty instead.")
  (isEmpty m))

(cl:ensure-generic-function 'isPartial-val :lambda-list '(m))
(cl:defmethod isPartial-val ((m <channel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:isPartial-val is deprecated.  Use NatRosPkg-msg:isPartial instead.")
  (isPartial m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <channel>) ostream)
  "Serializes a message object of type '<channel>"
  (cl:let* ((signed (cl:slot-value msg 'nFrames)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'Values))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isEmpty) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isPartial) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <channel>) istream)
  "Deserializes a message object of type '<channel>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nFrames) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'isEmpty) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isPartial) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<channel>)))
  "Returns string type for a message object of type '<channel>"
  "NatRosPkg/channel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'channel)))
  "Returns string type for a message object of type 'channel"
  "NatRosPkg/channel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<channel>)))
  "Returns md5sum for a message object of type '<channel>"
  "3fa6a6187541c2c904521c296745a24b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'channel)))
  "Returns md5sum for a message object of type 'channel"
  "3fa6a6187541c2c904521c296745a24b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<channel>)))
  "Returns full string definition for message of type '<channel>"
  (cl:format cl:nil "int32 nFrames~%float64[] Values~%bool isEmpty~%bool isPartial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'channel)))
  "Returns full string definition for message of type 'channel"
  (cl:format cl:nil "int32 nFrames~%float64[] Values~%bool isEmpty~%bool isPartial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <channel>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <channel>))
  "Converts a ROS message object to a list"
  (cl:list 'channel
    (cl:cons ':nFrames (nFrames msg))
    (cl:cons ':Values (Values msg))
    (cl:cons ':isEmpty (isEmpty msg))
    (cl:cons ':isPartial (isPartial msg))
))
