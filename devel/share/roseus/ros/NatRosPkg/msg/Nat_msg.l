;; Auto-generated. Do not edit!


(when (boundp 'NatRosPkg::Nat_msg)
  (if (not (find-package "NATROSPKG"))
    (make-package "NATROSPKG"))
  (shadow 'Nat_msg (find-package "NATROSPKG")))
(unless (find-package "NATROSPKG::NAT_MSG")
  (make-package "NATROSPKG::NAT_MSG"))

(in-package "ROS")
;;//! \htmlinclude Nat_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass NatRosPkg::Nat_msg
  :super ros::object
  :slots (_header _Nat_server_systemLatencyMillisec _Nat_server_clientLatencyMillisec _Nat_server_transitLatencyMillisec _Nat_server_timeStamp _Nat_server_timeCode _Nat_server_frameID _markers _bodies _skeletons _devices _forcePlates ))

(defmethod NatRosPkg::Nat_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Nat_server_systemLatencyMillisec __Nat_server_systemLatencyMillisec) 0.0)
    ((:Nat_server_clientLatencyMillisec __Nat_server_clientLatencyMillisec) 0.0)
    ((:Nat_server_transitLatencyMillisec __Nat_server_transitLatencyMillisec) 0.0)
    ((:Nat_server_timeStamp __Nat_server_timeStamp) 0.0)
    ((:Nat_server_timeCode __Nat_server_timeCode) "")
    ((:Nat_server_frameID __Nat_server_frameID) 0)
    ((:markers __markers) (instance NatRosPkg::markers :init))
    ((:bodies __bodies) (instance NatRosPkg::bodies :init))
    ((:skeletons __skeletons) (instance NatRosPkg::skeletons :init))
    ((:devices __devices) (instance NatRosPkg::devices :init))
    ((:forcePlates __forcePlates) (instance NatRosPkg::devices :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _Nat_server_systemLatencyMillisec (float __Nat_server_systemLatencyMillisec))
   (setq _Nat_server_clientLatencyMillisec (float __Nat_server_clientLatencyMillisec))
   (setq _Nat_server_transitLatencyMillisec (float __Nat_server_transitLatencyMillisec))
   (setq _Nat_server_timeStamp (float __Nat_server_timeStamp))
   (setq _Nat_server_timeCode (string __Nat_server_timeCode))
   (setq _Nat_server_frameID (round __Nat_server_frameID))
   (setq _markers __markers)
   (setq _bodies __bodies)
   (setq _skeletons __skeletons)
   (setq _devices __devices)
   (setq _forcePlates __forcePlates)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Nat_server_systemLatencyMillisec
   (&optional __Nat_server_systemLatencyMillisec)
   (if __Nat_server_systemLatencyMillisec (setq _Nat_server_systemLatencyMillisec __Nat_server_systemLatencyMillisec)) _Nat_server_systemLatencyMillisec)
  (:Nat_server_clientLatencyMillisec
   (&optional __Nat_server_clientLatencyMillisec)
   (if __Nat_server_clientLatencyMillisec (setq _Nat_server_clientLatencyMillisec __Nat_server_clientLatencyMillisec)) _Nat_server_clientLatencyMillisec)
  (:Nat_server_transitLatencyMillisec
   (&optional __Nat_server_transitLatencyMillisec)
   (if __Nat_server_transitLatencyMillisec (setq _Nat_server_transitLatencyMillisec __Nat_server_transitLatencyMillisec)) _Nat_server_transitLatencyMillisec)
  (:Nat_server_timeStamp
   (&optional __Nat_server_timeStamp)
   (if __Nat_server_timeStamp (setq _Nat_server_timeStamp __Nat_server_timeStamp)) _Nat_server_timeStamp)
  (:Nat_server_timeCode
   (&optional __Nat_server_timeCode)
   (if __Nat_server_timeCode (setq _Nat_server_timeCode __Nat_server_timeCode)) _Nat_server_timeCode)
  (:Nat_server_frameID
   (&optional __Nat_server_frameID)
   (if __Nat_server_frameID (setq _Nat_server_frameID __Nat_server_frameID)) _Nat_server_frameID)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:bodies
   (&rest __bodies)
   (if (keywordp (car __bodies))
       (send* _bodies __bodies)
     (progn
       (if __bodies (setq _bodies (car __bodies)))
       _bodies)))
  (:skeletons
   (&rest __skeletons)
   (if (keywordp (car __skeletons))
       (send* _skeletons __skeletons)
     (progn
       (if __skeletons (setq _skeletons (car __skeletons)))
       _skeletons)))
  (:devices
   (&rest __devices)
   (if (keywordp (car __devices))
       (send* _devices __devices)
     (progn
       (if __devices (setq _devices (car __devices)))
       _devices)))
  (:forcePlates
   (&rest __forcePlates)
   (if (keywordp (car __forcePlates))
       (send* _forcePlates __forcePlates)
     (progn
       (if __forcePlates (setq _forcePlates (car __forcePlates)))
       _forcePlates)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _Nat_server_systemLatencyMillisec
    8
    ;; float64 _Nat_server_clientLatencyMillisec
    8
    ;; float64 _Nat_server_transitLatencyMillisec
    8
    ;; float64 _Nat_server_timeStamp
    8
    ;; string _Nat_server_timeCode
    4 (length _Nat_server_timeCode)
    ;; int32 _Nat_server_frameID
    4
    ;; NatRosPkg/markers _markers
    (send _markers :serialization-length)
    ;; NatRosPkg/bodies _bodies
    (send _bodies :serialization-length)
    ;; NatRosPkg/skeletons _skeletons
    (send _skeletons :serialization-length)
    ;; NatRosPkg/devices _devices
    (send _devices :serialization-length)
    ;; NatRosPkg/devices _forcePlates
    (send _forcePlates :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _Nat_server_systemLatencyMillisec
       (sys::poke _Nat_server_systemLatencyMillisec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Nat_server_clientLatencyMillisec
       (sys::poke _Nat_server_clientLatencyMillisec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Nat_server_transitLatencyMillisec
       (sys::poke _Nat_server_transitLatencyMillisec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Nat_server_timeStamp
       (sys::poke _Nat_server_timeStamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _Nat_server_timeCode
       (write-long (length _Nat_server_timeCode) s) (princ _Nat_server_timeCode s)
     ;; int32 _Nat_server_frameID
       (write-long _Nat_server_frameID s)
     ;; NatRosPkg/markers _markers
       (send _markers :serialize s)
     ;; NatRosPkg/bodies _bodies
       (send _bodies :serialize s)
     ;; NatRosPkg/skeletons _skeletons
       (send _skeletons :serialize s)
     ;; NatRosPkg/devices _devices
       (send _devices :serialize s)
     ;; NatRosPkg/devices _forcePlates
       (send _forcePlates :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _Nat_server_systemLatencyMillisec
     (setq _Nat_server_systemLatencyMillisec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Nat_server_clientLatencyMillisec
     (setq _Nat_server_clientLatencyMillisec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Nat_server_transitLatencyMillisec
     (setq _Nat_server_transitLatencyMillisec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Nat_server_timeStamp
     (setq _Nat_server_timeStamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _Nat_server_timeCode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Nat_server_timeCode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _Nat_server_frameID
     (setq _Nat_server_frameID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; NatRosPkg/markers _markers
     (send _markers :deserialize buf ptr-) (incf ptr- (send _markers :serialization-length))
   ;; NatRosPkg/bodies _bodies
     (send _bodies :deserialize buf ptr-) (incf ptr- (send _bodies :serialization-length))
   ;; NatRosPkg/skeletons _skeletons
     (send _skeletons :deserialize buf ptr-) (incf ptr- (send _skeletons :serialization-length))
   ;; NatRosPkg/devices _devices
     (send _devices :deserialize buf ptr-) (incf ptr- (send _devices :serialization-length))
   ;; NatRosPkg/devices _forcePlates
     (send _forcePlates :deserialize buf ptr-) (incf ptr- (send _forcePlates :serialization-length))
   ;;
   self)
  )

(setf (get NatRosPkg::Nat_msg :md5sum-) "9aee2c807a0b367d51433da0cfa4687e")
(setf (get NatRosPkg::Nat_msg :datatype-) "NatRosPkg/Nat_msg")
(setf (get NatRosPkg::Nat_msg :definition-)
      "Header header

float64 Nat_server_systemLatencyMillisec
float64 Nat_server_clientLatencyMillisec
float64 Nat_server_transitLatencyMillisec

float64 Nat_server_timeStamp
string Nat_server_timeCode

int32 Nat_server_frameID

markers markers
bodies bodies
skeletons skeletons
devices devices
devices forcePlates
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: NatRosPkg/markers
int32 nMarkers
marker[] markers
================================================================================
MSG: NatRosPkg/marker
int32 ID
int32 modelID
geometry_msgs/Point position
float64 size
int16 params
float64 residual


bool oclluded 
bool PCSolved 
bool ModelSolved 
bool HasModel 
bool Unlabled 
bool ActiveMarker 
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: NatRosPkg/bodies
# Header header
uint8 nBodies
body[] bodies



================================================================================
MSG: NatRosPkg/body
int32 id
geometry_msgs/Pose pose
float64 meanError
bool isValid
int16 params

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: NatRosPkg/skeletons
int32 nSkeletons
skeleton[] skeletons
================================================================================
MSG: NatRosPkg/skeleton
string name
int32 ID
int32 nRigidBodies
body[] bodies
================================================================================
MSG: NatRosPkg/devices
int32 nDevices
device[] devices 
================================================================================
MSG: NatRosPkg/device
int32 id
int32 nChannels 
int16 params
channel[] channels
================================================================================
MSG: NatRosPkg/channel
int32 nFrames
float64[] Values
bool isEmpty
bool isPartial

")



(provide :NatRosPkg/Nat_msg "9aee2c807a0b367d51433da0cfa4687e")


