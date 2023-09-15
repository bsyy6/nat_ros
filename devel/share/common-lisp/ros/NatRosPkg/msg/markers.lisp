; Auto-generated. Do not edit!


(cl:in-package NatRosPkg-msg)


;//! \htmlinclude markers.msg.html

(cl:defclass <markers> (roslisp-msg-protocol:ros-message)
  ((nMarkers
    :reader nMarkers
    :initarg :nMarkers
    :type cl:integer
    :initform 0)
   (markers
    :reader markers
    :initarg :markers
    :type (cl:vector NatRosPkg-msg:marker)
   :initform (cl:make-array 0 :element-type 'NatRosPkg-msg:marker :initial-element (cl:make-instance 'NatRosPkg-msg:marker))))
)

(cl:defclass markers (<markers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <markers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'markers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name NatRosPkg-msg:<markers> is deprecated: use NatRosPkg-msg:markers instead.")))

(cl:ensure-generic-function 'nMarkers-val :lambda-list '(m))
(cl:defmethod nMarkers-val ((m <markers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:nMarkers-val is deprecated.  Use NatRosPkg-msg:nMarkers instead.")
  (nMarkers m))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <markers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader NatRosPkg-msg:markers-val is deprecated.  Use NatRosPkg-msg:markers instead.")
  (markers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <markers>) ostream)
  "Serializes a message object of type '<markers>"
  (cl:let* ((signed (cl:slot-value msg 'nMarkers)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'markers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <markers>) istream)
  "Deserializes a message object of type '<markers>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nMarkers) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'NatRosPkg-msg:marker))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<markers>)))
  "Returns string type for a message object of type '<markers>"
  "NatRosPkg/markers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'markers)))
  "Returns string type for a message object of type 'markers"
  "NatRosPkg/markers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<markers>)))
  "Returns md5sum for a message object of type '<markers>"
  "a1ca0ae52443593a08f786db6e001040")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'markers)))
  "Returns md5sum for a message object of type 'markers"
  "a1ca0ae52443593a08f786db6e001040")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<markers>)))
  "Returns full string definition for message of type '<markers>"
  (cl:format cl:nil "int32 nMarkers~%marker[] markers~%================================================================================~%MSG: NatRosPkg/marker~%int32 ID~%int32 modelID~%geometry_msgs/Point position~%float64 size~%int16 params~%float64 residual~%~%~%bool oclluded ~%bool PCSolved ~%bool ModelSolved ~%bool HasModel ~%bool Unlabled ~%bool ActiveMarker ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'markers)))
  "Returns full string definition for message of type 'markers"
  (cl:format cl:nil "int32 nMarkers~%marker[] markers~%================================================================================~%MSG: NatRosPkg/marker~%int32 ID~%int32 modelID~%geometry_msgs/Point position~%float64 size~%int16 params~%float64 residual~%~%~%bool oclluded ~%bool PCSolved ~%bool ModelSolved ~%bool HasModel ~%bool Unlabled ~%bool ActiveMarker ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <markers>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <markers>))
  "Converts a ROS message object to a list"
  (cl:list 'markers
    (cl:cons ':nMarkers (nMarkers msg))
    (cl:cons ':markers (markers msg))
))
