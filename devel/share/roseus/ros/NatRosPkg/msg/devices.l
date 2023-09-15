;; Auto-generated. Do not edit!


(when (boundp 'NatRosPkg::devices)
  (if (not (find-package "NATROSPKG"))
    (make-package "NATROSPKG"))
  (shadow 'devices (find-package "NATROSPKG")))
(unless (find-package "NATROSPKG::DEVICES")
  (make-package "NATROSPKG::DEVICES"))

(in-package "ROS")
;;//! \htmlinclude devices.msg.html


(defclass NatRosPkg::devices
  :super ros::object
  :slots (_nDevices _devices ))

(defmethod NatRosPkg::devices
  (:init
   (&key
    ((:nDevices __nDevices) 0)
    ((:devices __devices) ())
    )
   (send-super :init)
   (setq _nDevices (round __nDevices))
   (setq _devices __devices)
   self)
  (:nDevices
   (&optional __nDevices)
   (if __nDevices (setq _nDevices __nDevices)) _nDevices)
  (:devices
   (&rest __devices)
   (if (keywordp (car __devices))
       (send* _devices __devices)
     (progn
       (if __devices (setq _devices (car __devices)))
       _devices)))
  (:serialization-length
   ()
   (+
    ;; int32 _nDevices
    4
    ;; NatRosPkg/device[] _devices
    (apply #'+ (send-all _devices :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _nDevices
       (write-long _nDevices s)
     ;; NatRosPkg/device[] _devices
     (write-long (length _devices) s)
     (dolist (elem _devices)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _nDevices
     (setq _nDevices (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; NatRosPkg/device[] _devices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _devices (let (r) (dotimes (i n) (push (instance NatRosPkg::device :init) r)) r))
     (dolist (elem- _devices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get NatRosPkg::devices :md5sum-) "08d9ab4027fd2d063225bde907f29977")
(setf (get NatRosPkg::devices :datatype-) "NatRosPkg/devices")
(setf (get NatRosPkg::devices :definition-)
      "int32 nDevices
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



(provide :NatRosPkg/devices "08d9ab4027fd2d063225bde907f29977")


