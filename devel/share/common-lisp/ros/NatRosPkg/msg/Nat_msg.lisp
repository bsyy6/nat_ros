; Auto-generated. Do not edit!


(cl:in-package NatRosPkg-msg)


;//! \htmlinclude Nat_msg.msg.html

(cl:defclass <Nat_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Nat_server_systemLatencyMillisec
    :reader Nat_server_systemLatencyMillisec
    :initarg :Nat_server_systemLatencyMillisec
    :type cl:float
    :initform 0.0)
   (Nat_server_clientLatencyMillisec
    :reader Nat_server_clientLatencyMillisec
    :initarg :Nat_server_clientLatencyMillisec
    :type cl:float
    :initform 0.0)
   (Nat_server_transitLatencyMillisec
    :reader Nat_server_transitLatencyMillisec
    :initarg :Nat_server_transitLatencyMillisec
    :type cl:float
    :initform 0.0)
   (Nat_server_timeStamp
    :reader Nat_server_timeStamp
    :initarg :Nat_server_timeStamp
    :type cl:float
    :initform 0.0)
   (Nat_server_timeCode
    :reader Nat_server_timeCode
    :initarg :Nat_server_timeCode
    :type cl:string
    :initform "")
   (Nat_server_frameID
    :reader Nat_server_frameID
    :initarg :Nat_server_frameID
    :type cl:integer
    :initform 0)
   (markers
    :reader markers
    :initarg :markers
    :type NatRosPkg-msg:markers
    :initform (cl:make-instance 'NatRosPkg-msg:markers))
   (bodies
    :reader bodies
    :initarg :bodies
    :type NatRosPkg-msg:bodies
    :initform (cl:make-instance 'NatRosPkg-msg:bodies))
   (skeletons
    :reader skeletons
    :initarg :skeletons
    :type NatRosPkg-msg:skeletons
    :initform (cl:make-instance 'NatRosPkg-msg:skeletons))
   (devices
    :reader devices
    :initarg :devices
    :type NatRosPkg-msg:devices
    :initform (cl:make-instance 'NatRosPkg-msg:devices))
   (forcePlates
    :reader forcePlates
    :initarg :forcePlates
    :type NatRosPkg-msg:devices
    :initform (cl:make-instance 'NatRosPkg-msg:devices)))
)

(cl:defclass Nat_msg (<Nat_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Nat_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Nat_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name NatRosPkg-msg:<Nat_msg> is deprecated: use NatRosPkg-msg:Nat_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:header-val is deprecated.  Use NatRosPkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Nat_server_systemLatencyMillisec-val :lambda-list '(m))
(cl:defmethod Nat_server_systemLatencyMillisec-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:Nat_server_systemLatencyMillisec-val is deprecated.  Use NatRosPkg-msg:Nat_server_systemLatencyMillisec instead.")
  (Nat_server_systemLatencyMillisec m))

(cl:ensure-generic-function 'Nat_server_clientLatencyMillisec-val :lambda-list '(m))
(cl:defmethod Nat_server_clientLatencyMillisec-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:Nat_server_clientLatencyMillisec-val is deprecated.  Use NatRosPkg-msg:Nat_server_clientLatencyMillisec instead.")
  (Nat_server_clientLatencyMillisec m))

(cl:ensure-generic-function 'Nat_server_transitLatencyMillisec-val :lambda-list '(m))
(cl:defmethod Nat_server_transitLatencyMillisec-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:Nat_server_transitLatencyMillisec-val is deprecated.  Use NatRosPkg-msg:Nat_server_transitLatencyMillisec instead.")
  (Nat_server_transitLatencyMillisec m))

(cl:ensure-generic-function 'Nat_server_timeStamp-val :lambda-list '(m))
(cl:defmethod Nat_server_timeStamp-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:Nat_server_timeStamp-val is deprecated.  Use NatRosPkg-msg:Nat_server_timeStamp instead.")
  (Nat_server_timeStamp m))

(cl:ensure-generic-function 'Nat_server_timeCode-val :lambda-list '(m))
(cl:defmethod Nat_server_timeCode-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:Nat_server_timeCode-val is deprecated.  Use NatRosPkg-msg:Nat_server_timeCode instead.")
  (Nat_server_timeCode m))

(cl:ensure-generic-function 'Nat_server_frameID-val :lambda-list '(m))
(cl:defmethod Nat_server_frameID-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:Nat_server_frameID-val is deprecated.  Use NatRosPkg-msg:Nat_server_frameID instead.")
  (Nat_server_frameID m))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:markers-val is deprecated.  Use NatRosPkg-msg:markers instead.")
  (markers m))

(cl:ensure-generic-function 'bodies-val :lambda-list '(m))
(cl:defmethod bodies-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:bodies-val is deprecated.  Use NatRosPkg-msg:bodies instead.")
  (bodies m))

(cl:ensure-generic-function 'skeletons-val :lambda-list '(m))
(cl:defmethod skeletons-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:skeletons-val is deprecated.  Use NatRosPkg-msg:skeletons instead.")
  (skeletons m))

(cl:ensure-generic-function 'devices-val :lambda-list '(m))
(cl:defmethod devices-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:devices-val is deprecated.  Use NatRosPkg-msg:devices instead.")
  (devices m))

(cl:ensure-generic-function 'forcePlates-val :lambda-list '(m))
(cl:defmethod forcePlates-val ((m <Nat_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:forcePlates-val is deprecated.  Use NatRosPkg-msg:forcePlates instead.")
  (forcePlates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Nat_msg>) ostream)
  "Serializes a message object of type '<Nat_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Nat_server_systemLatencyMillisec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Nat_server_clientLatencyMillisec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Nat_server_transitLatencyMillisec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Nat_server_timeStamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Nat_server_timeCode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Nat_server_timeCode))
  (cl:let* ((signed (cl:slot-value msg 'Nat_server_frameID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'markers) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bodies) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'skeletons) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'devices) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'forcePlates) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Nat_msg>) istream)
  "Deserializes a message object of type '<Nat_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Nat_server_systemLatencyMillisec) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Nat_server_clientLatencyMillisec) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Nat_server_transitLatencyMillisec) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Nat_server_timeStamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Nat_server_timeCode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Nat_server_timeCode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Nat_server_frameID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'markers) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bodies) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'skeletons) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'devices) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'forcePlates) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Nat_msg>)))
  "Returns string type for a message object of type '<Nat_msg>"
  "NatRosPkg/Nat_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Nat_msg)))
  "Returns string type for a message object of type 'Nat_msg"
  "NatRosPkg/Nat_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Nat_msg>)))
  "Returns md5sum for a message object of type '<Nat_msg>"
  "9aee2c807a0b367d51433da0cfa4687e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Nat_msg)))
  "Returns md5sum for a message object of type 'Nat_msg"
  "9aee2c807a0b367d51433da0cfa4687e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Nat_msg>)))
  "Returns full string definition for message of type '<Nat_msg>"
  (cl:format cl:nil "Header header~%~%float64 Nat_server_systemLatencyMillisec~%float64 Nat_server_clientLatencyMillisec~%float64 Nat_server_transitLatencyMillisec~%~%float64 Nat_server_timeStamp~%string Nat_server_timeCode~%~%int32 Nat_server_frameID~%~%markers markers~%bodies bodies~%skeletons skeletons~%devices devices~%devices forcePlates~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: NatRosPkg/markers~%int32 nMarkers~%marker[] markers~%================================================================================~%MSG: NatRosPkg/marker~%int32 ID~%int32 modelID~%geometry_msgs/Point position~%float64 size~%int16 params~%float64 residual~%~%~%bool oclluded ~%bool PCSolved ~%bool ModelSolved ~%bool HasModel ~%bool Unlabled ~%bool ActiveMarker ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: NatRosPkg/bodies~%# Header header~%uint8 nBodies~%body[] bodies~%~%~%~%================================================================================~%MSG: NatRosPkg/body~%int32 id~%geometry_msgs/Pose pose~%float64 meanError~%bool isValid~%int16 params~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: NatRosPkg/skeletons~%int32 nSkeletons~%skeleton[] skeletons~%================================================================================~%MSG: NatRosPkg/skeleton~%string name~%int32 ID~%int32 nRigidBodies~%body[] bodies~%================================================================================~%MSG: NatRosPkg/devices~%int32 nDevices~%device[] devices ~%================================================================================~%MSG: NatRosPkg/device~%int32 id~%int32 nChannels ~%int16 params~%channel[] channels~%================================================================================~%MSG: NatRosPkg/channel~%int32 nFrames~%float64[] Values~%bool isEmpty~%bool isPartial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Nat_msg)))
  "Returns full string definition for message of type 'Nat_msg"
  (cl:format cl:nil "Header header~%~%float64 Nat_server_systemLatencyMillisec~%float64 Nat_server_clientLatencyMillisec~%float64 Nat_server_transitLatencyMillisec~%~%float64 Nat_server_timeStamp~%string Nat_server_timeCode~%~%int32 Nat_server_frameID~%~%markers markers~%bodies bodies~%skeletons skeletons~%devices devices~%devices forcePlates~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: NatRosPkg/markers~%int32 nMarkers~%marker[] markers~%================================================================================~%MSG: NatRosPkg/marker~%int32 ID~%int32 modelID~%geometry_msgs/Point position~%float64 size~%int16 params~%float64 residual~%~%~%bool oclluded ~%bool PCSolved ~%bool ModelSolved ~%bool HasModel ~%bool Unlabled ~%bool ActiveMarker ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: NatRosPkg/bodies~%# Header header~%uint8 nBodies~%body[] bodies~%~%~%~%================================================================================~%MSG: NatRosPkg/body~%int32 id~%geometry_msgs/Pose pose~%float64 meanError~%bool isValid~%int16 params~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: NatRosPkg/skeletons~%int32 nSkeletons~%skeleton[] skeletons~%================================================================================~%MSG: NatRosPkg/skeleton~%string name~%int32 ID~%int32 nRigidBodies~%body[] bodies~%================================================================================~%MSG: NatRosPkg/devices~%int32 nDevices~%device[] devices ~%================================================================================~%MSG: NatRosPkg/device~%int32 id~%int32 nChannels ~%int16 params~%channel[] channels~%================================================================================~%MSG: NatRosPkg/channel~%int32 nFrames~%float64[] Values~%bool isEmpty~%bool isPartial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Nat_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'Nat_server_timeCode))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'markers))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bodies))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'skeletons))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'devices))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'forcePlates))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Nat_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'Nat_msg
    (cl:cons ':header (header msg))
    (cl:cons ':Nat_server_systemLatencyMillisec (Nat_server_systemLatencyMillisec msg))
    (cl:cons ':Nat_server_clientLatencyMillisec (Nat_server_clientLatencyMillisec msg))
    (cl:cons ':Nat_server_transitLatencyMillisec (Nat_server_transitLatencyMillisec msg))
    (cl:cons ':Nat_server_timeStamp (Nat_server_timeStamp msg))
    (cl:cons ':Nat_server_timeCode (Nat_server_timeCode msg))
    (cl:cons ':Nat_server_frameID (Nat_server_frameID msg))
    (cl:cons ':markers (markers msg))
    (cl:cons ':bodies (bodies msg))
    (cl:cons ':skeletons (skeletons msg))
    (cl:cons ':devices (devices msg))
    (cl:cons ':forcePlates (forcePlates msg))
))
