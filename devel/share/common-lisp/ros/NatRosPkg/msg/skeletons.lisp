; Auto-generated. Do not edit!


(cl:in-package NatRosPkg-msg)


;//! \htmlinclude skeletons.msg.html

(cl:defclass <skeletons> (roslisp-msg-protocol:ros-message)
  ((nSkeletons
    :reader nSkeletons
    :initarg :nSkeletons
    :type cl:integer
    :initform 0)
   (skeletons
    :reader skeletons
    :initarg :skeletons
    :type (cl:vector NatRosPkg-msg:skeleton)
   :initform (cl:make-array 0 :element-type 'NatRosPkg-msg:skeleton :initial-element (cl:make-instance 'NatRosPkg-msg:skeleton))))
)

(cl:defclass skeletons (<skeletons>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <skeletons>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'skeletons)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name NatRosPkg-msg:<skeletons> is deprecated: use NatRosPkg-msg:skeletons instead.")))

(cl:ensure-generic-function 'nSkeletons-val :lambda-list '(m))
(cl:defmethod nSkeletons-val ((m <skeletons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:nSkeletons-val is deprecated.  Use NatRosPkg-msg:nSkeletons instead.")
  (nSkeletons m))

(cl:ensure-generic-function 'skeletons-val :lambda-list '(m))
(cl:defmethod skeletons-val ((m <skeletons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:skeletons-val is deprecated.  Use NatRosPkg-msg:skeletons instead.")
  (skeletons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <skeletons>) ostream)
  "Serializes a message object of type '<skeletons>"
  (cl:let* ((signed (cl:slot-value msg 'nSkeletons)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'skeletons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'skeletons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <skeletons>) istream)
  "Deserializes a message object of type '<skeletons>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nSkeletons) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'skeletons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'skeletons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'NatRosPkg-msg:skeleton))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<skeletons>)))
  "Returns string type for a message object of type '<skeletons>"
  "NatRosPkg/skeletons")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skeletons)))
  "Returns string type for a message object of type 'skeletons"
  "NatRosPkg/skeletons")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<skeletons>)))
  "Returns md5sum for a message object of type '<skeletons>"
  "498018be8091f821b47e752d2a3c0e29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'skeletons)))
  "Returns md5sum for a message object of type 'skeletons"
  "498018be8091f821b47e752d2a3c0e29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<skeletons>)))
  "Returns full string definition for message of type '<skeletons>"
  (cl:format cl:nil "int32 nSkeletons~%skeleton[] skeletons~%================================================================================~%MSG: NatRosPkg/skeleton~%string name~%int32 ID~%int32 nRigidBodies~%body[] bodies~%================================================================================~%MSG: NatRosPkg/body~%int32 id~%geometry_msgs/Pose pose~%float64 meanError~%bool isValid~%int16 params~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'skeletons)))
  "Returns full string definition for message of type 'skeletons"
  (cl:format cl:nil "int32 nSkeletons~%skeleton[] skeletons~%================================================================================~%MSG: NatRosPkg/skeleton~%string name~%int32 ID~%int32 nRigidBodies~%body[] bodies~%================================================================================~%MSG: NatRosPkg/body~%int32 id~%geometry_msgs/Pose pose~%float64 meanError~%bool isValid~%int16 params~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <skeletons>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'skeletons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <skeletons>))
  "Converts a ROS message object to a list"
  (cl:list 'skeletons
    (cl:cons ':nSkeletons (nSkeletons msg))
    (cl:cons ':skeletons (skeletons msg))
))
