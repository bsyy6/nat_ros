; Auto-generated. Do not edit!


(cl:in-package NatRosPkg-msg)


;//! \htmlinclude marker.msg.html

(cl:defclass <marker> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (modelID
    :reader modelID
    :initarg :modelID
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (size
    :reader size
    :initarg :size
    :type cl:float
    :initform 0.0)
   (params
    :reader params
    :initarg :params
    :type cl:fixnum
    :initform 0)
   (residual
    :reader residual
    :initarg :residual
    :type cl:float
    :initform 0.0)
   (oclluded
    :reader oclluded
    :initarg :oclluded
    :type cl:boolean
    :initform cl:nil)
   (PCSolved
    :reader PCSolved
    :initarg :PCSolved
    :type cl:boolean
    :initform cl:nil)
   (ModelSolved
    :reader ModelSolved
    :initarg :ModelSolved
    :type cl:boolean
    :initform cl:nil)
   (HasModel
    :reader HasModel
    :initarg :HasModel
    :type cl:boolean
    :initform cl:nil)
   (Unlabled
    :reader Unlabled
    :initarg :Unlabled
    :type cl:boolean
    :initform cl:nil)
   (ActiveMarker
    :reader ActiveMarker
    :initarg :ActiveMarker
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass marker (<marker>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <marker>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'marker)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name NatRosPkg-msg:<marker> is deprecated: use NatRosPkg-msg:marker instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:ID-val is deprecated.  Use NatRosPkg-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'modelID-val :lambda-list '(m))
(cl:defmethod modelID-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:modelID-val is deprecated.  Use NatRosPkg-msg:modelID instead.")
  (modelID m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:position-val is deprecated.  Use NatRosPkg-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:size-val is deprecated.  Use NatRosPkg-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:params-val is deprecated.  Use NatRosPkg-msg:params instead.")
  (params m))

(cl:ensure-generic-function 'residual-val :lambda-list '(m))
(cl:defmethod residual-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:residual-val is deprecated.  Use NatRosPkg-msg:residual instead.")
  (residual m))

(cl:ensure-generic-function 'oclluded-val :lambda-list '(m))
(cl:defmethod oclluded-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:oclluded-val is deprecated.  Use NatRosPkg-msg:oclluded instead.")
  (oclluded m))

(cl:ensure-generic-function 'PCSolved-val :lambda-list '(m))
(cl:defmethod PCSolved-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:PCSolved-val is deprecated.  Use NatRosPkg-msg:PCSolved instead.")
  (PCSolved m))

(cl:ensure-generic-function 'ModelSolved-val :lambda-list '(m))
(cl:defmethod ModelSolved-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:ModelSolved-val is deprecated.  Use NatRosPkg-msg:ModelSolved instead.")
  (ModelSolved m))

(cl:ensure-generic-function 'HasModel-val :lambda-list '(m))
(cl:defmethod HasModel-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:HasModel-val is deprecated.  Use NatRosPkg-msg:HasModel instead.")
  (HasModel m))

(cl:ensure-generic-function 'Unlabled-val :lambda-list '(m))
(cl:defmethod Unlabled-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:Unlabled-val is deprecated.  Use NatRosPkg-msg:Unlabled instead.")
  (Unlabled m))

(cl:ensure-generic-function 'ActiveMarker-val :lambda-list '(m))
(cl:defmethod ActiveMarker-val ((m <marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:ActiveMarker-val is deprecated.  Use NatRosPkg-msg:ActiveMarker instead.")
  (ActiveMarker m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <marker>) ostream)
  "Serializes a message object of type '<marker>"
  (cl:let* ((signed (cl:slot-value msg 'ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'modelID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'params)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'residual))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'oclluded) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PCSolved) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ModelSolved) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'HasModel) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Unlabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ActiveMarker) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <marker>) istream)
  "Deserializes a message object of type '<marker>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modelID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'params) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'residual) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'oclluded) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PCSolved) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ModelSolved) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'HasModel) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Unlabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ActiveMarker) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<marker>)))
  "Returns string type for a message object of type '<marker>"
  "NatRosPkg/marker")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'marker)))
  "Returns string type for a message object of type 'marker"
  "NatRosPkg/marker")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<marker>)))
  "Returns md5sum for a message object of type '<marker>"
  "1cc80e06d1d63fc9aa98d6e8f0d4490d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'marker)))
  "Returns md5sum for a message object of type 'marker"
  "1cc80e06d1d63fc9aa98d6e8f0d4490d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<marker>)))
  "Returns full string definition for message of type '<marker>"
  (cl:format cl:nil "int32 ID~%int32 modelID~%geometry_msgs/Point position~%float64 size~%int16 params~%float64 residual~%~%~%bool oclluded ~%bool PCSolved ~%bool ModelSolved ~%bool HasModel ~%bool Unlabled ~%bool ActiveMarker ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'marker)))
  "Returns full string definition for message of type 'marker"
  (cl:format cl:nil "int32 ID~%int32 modelID~%geometry_msgs/Point position~%float64 size~%int16 params~%float64 residual~%~%~%bool oclluded ~%bool PCSolved ~%bool ModelSolved ~%bool HasModel ~%bool Unlabled ~%bool ActiveMarker ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <marker>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     2
     8
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <marker>))
  "Converts a ROS message object to a list"
  (cl:list 'marker
    (cl:cons ':ID (ID msg))
    (cl:cons ':modelID (modelID msg))
    (cl:cons ':position (position msg))
    (cl:cons ':size (size msg))
    (cl:cons ':params (params msg))
    (cl:cons ':residual (residual msg))
    (cl:cons ':oclluded (oclluded msg))
    (cl:cons ':PCSolved (PCSolved msg))
    (cl:cons ':ModelSolved (ModelSolved msg))
    (cl:cons ':HasModel (HasModel msg))
    (cl:cons ':Unlabled (Unlabled msg))
    (cl:cons ':ActiveMarker (ActiveMarker msg))
))
