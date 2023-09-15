; Auto-generated. Do not edit!


(cl:in-package NatRosPkg-msg)


;//! \htmlinclude skeleton.msg.html

(cl:defclass <skeleton> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (nRigidBodies
    :reader nRigidBodies
    :initarg :nRigidBodies
    :type cl:integer
    :initform 0)
   (bodies
    :reader bodies
    :initarg :bodies
    :type (cl:vector NatRosPkg-msg:body)
   :initform (cl:make-array 0 :element-type 'NatRosPkg-msg:body :initial-element (cl:make-instance 'NatRosPkg-msg:body))))
)

(cl:defclass skeleton (<skeleton>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <skeleton>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'skeleton)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name NatRosPkg-msg:<skeleton> is deprecated: use NatRosPkg-msg:skeleton instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <skeleton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:name-val is deprecated.  Use NatRosPkg-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <skeleton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:ID-val is deprecated.  Use NatRosPkg-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'nRigidBodies-val :lambda-list '(m))
(cl:defmethod nRigidBodies-val ((m <skeleton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:nRigidBodies-val is deprecated.  Use NatRosPkg-msg:nRigidBodies instead.")
  (nRigidBodies m))

(cl:ensure-generic-function 'bodies-val :lambda-list '(m))
(cl:defmethod bodies-val ((m <skeleton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:bodies-val is deprecated.  Use NatRosPkg-msg:bodies instead.")
  (bodies m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <skeleton>) ostream)
  "Serializes a message object of type '<skeleton>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nRigidBodies)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bodies))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bodies))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <skeleton>) istream)
  "Deserializes a message object of type '<skeleton>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'nRigidBodies) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bodies) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bodies)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'NatRosPkg-msg:body))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<skeleton>)))
  "Returns string type for a message object of type '<skeleton>"
  "NatRosPkg/skeleton")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skeleton)))
  "Returns string type for a message object of type 'skeleton"
  "NatRosPkg/skeleton")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<skeleton>)))
  "Returns md5sum for a message object of type '<skeleton>"
  "73a2dfd70dd6f12dc399c5f89d405659")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'skeleton)))
  "Returns md5sum for a message object of type 'skeleton"
  "73a2dfd70dd6f12dc399c5f89d405659")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<skeleton>)))
  "Returns full string definition for message of type '<skeleton>"
  (cl:format cl:nil "string name~%int32 ID~%int32 nRigidBodies~%body[] bodies~%================================================================================~%MSG: NatRosPkg/body~%int32 id~%geometry_msgs/Pose pose~%float64 meanError~%bool isValid~%int16 params~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'skeleton)))
  "Returns full string definition for message of type 'skeleton"
  (cl:format cl:nil "string name~%int32 ID~%int32 nRigidBodies~%body[] bodies~%================================================================================~%MSG: NatRosPkg/body~%int32 id~%geometry_msgs/Pose pose~%float64 meanError~%bool isValid~%int16 params~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <skeleton>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bodies) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <skeleton>))
  "Converts a ROS message object to a list"
  (cl:list 'skeleton
    (cl:cons ':name (name msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':nRigidBodies (nRigidBodies msg))
    (cl:cons ':bodies (bodies msg))
))
