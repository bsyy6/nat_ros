; Auto-generated. Do not edit!


(cl:in-package NatRosPkg-msg)


;//! \htmlinclude bodies.msg.html

(cl:defclass <bodies> (roslisp-msg-protocol:ros-message)
  ((nBodies
    :reader nBodies
    :initarg :nBodies
    :type cl:fixnum
    :initform 0)
   (bodies
    :reader bodies
    :initarg :bodies
    :type (cl:vector NatRosPkg-msg:body)
   :initform (cl:make-array 0 :element-type 'NatRosPkg-msg:body :initial-element (cl:make-instance 'NatRosPkg-msg:body))))
)

(cl:defclass bodies (<bodies>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bodies>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bodies)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name NatRosPkg-msg:<bodies> is deprecated: use NatRosPkg-msg:bodies instead.")))

(cl:ensure-generic-function 'nBodies-val :lambda-list '(m))
(cl:defmethod nBodies-val ((m <bodies>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:nBodies-val is deprecated.  Use NatRosPkg-msg:nBodies instead.")
  (nBodies m))

(cl:ensure-generic-function 'bodies-val :lambda-list '(m))
(cl:defmethod bodies-val ((m <bodies>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:bodies-val is deprecated.  Use NatRosPkg-msg:bodies instead.")
  (bodies m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bodies>) ostream)
  "Serializes a message object of type '<bodies>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nBodies)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bodies))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bodies))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bodies>) istream)
  "Deserializes a message object of type '<bodies>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nBodies)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bodies>)))
  "Returns string type for a message object of type '<bodies>"
  "NatRosPkg/bodies")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bodies)))
  "Returns string type for a message object of type 'bodies"
  "NatRosPkg/bodies")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bodies>)))
  "Returns md5sum for a message object of type '<bodies>"
  "11f3573350a1db22abb9f03f08ef9e79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bodies)))
  "Returns md5sum for a message object of type 'bodies"
  "11f3573350a1db22abb9f03f08ef9e79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bodies>)))
  "Returns full string definition for message of type '<bodies>"
  (cl:format cl:nil "# Header header~%uint8 nBodies~%body[] bodies~%~%~%~%================================================================================~%MSG: NatRosPkg/body~%int32 id~%geometry_msgs/Pose pose~%float64 meanError~%bool isValid~%int16 params~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bodies)))
  "Returns full string definition for message of type 'bodies"
  (cl:format cl:nil "# Header header~%uint8 nBodies~%body[] bodies~%~%~%~%================================================================================~%MSG: NatRosPkg/body~%int32 id~%geometry_msgs/Pose pose~%float64 meanError~%bool isValid~%int16 params~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bodies>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bodies) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bodies>))
  "Converts a ROS message object to a list"
  (cl:list 'bodies
    (cl:cons ':nBodies (nBodies msg))
    (cl:cons ':bodies (bodies msg))
))
