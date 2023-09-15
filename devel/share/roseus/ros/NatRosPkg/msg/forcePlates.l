;; Auto-generated. Do not edit!


(when (boundp 'NatRosPkg::forcePlates)
  (if (not (find-package "NATROSPKG"))
    (make-package "NATROSPKG"))
  (shadow 'forcePlates (find-package "NATROSPKG")))
(unless (find-package "NATROSPKG::FORCEPLATES")
  (make-package "NATROSPKG::FORCEPLATES"))

(in-package "ROS")
;;//! \htmlinclude forcePlates.msg.html


(defclass NatRosPkg::forcePlates
  :super ros::object
  :slots (_nForcePlates _forcePlates ))

(defmethod NatRosPkg::forcePlates
  (:init
   (&key
    ((:nForcePlates __nForcePlates) 0)
    ((:forcePlates __forcePlates) ())
    )
   (send-super :init)
   (setq _nForcePlates (round __nForcePlates))
   (setq _forcePlates __forcePlates)
   self)
  (:nForcePlates
   (&optional __nForcePlates)
   (if __nForcePlates (setq _nForcePlates __nForcePlates)) _nForcePlates)
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
    ;; int32 _nForcePlates
    4
    ;; NatRosPkg/forcePlate[] _forcePlates
    (apply #'+ (send-all _forcePlates :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _nForcePlates
       (write-long _nForcePlates s)
     ;; NatRosPkg/forcePlate[] _forcePlates
     (write-long (length _forcePlates) s)
     (dolist (elem _forcePlates)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _nForcePlates
     (setq _nForcePlates (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; NatRosPkg/forcePlate[] _forcePlates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _forcePlates (let (r) (dotimes (i n) (push (instance NatRosPkg::forcePlate :init) r)) r))
     (dolist (elem- _forcePlates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get NatRosPkg::forcePlates :md5sum-) "d6f3fd8a71f67b5c7a481fa68f4cea97")
(setf (get NatRosPkg::forcePlates :datatype-) "NatRosPkg/forcePlates")
(setf (get NatRosPkg::forcePlates :definition-)
      "int32 nForcePlates
forcePlate[] forcePlates
================================================================================
MSG: NatRosPkg/forcePlate
int32 id
int32 nChannels 
int32 params
channel[] channels
================================================================================
MSG: NatRosPkg/channel
int32 nFrames
float64[] Values
bool isEmpty
bool isPartial

")



(provide :NatRosPkg/forcePlates "d6f3fd8a71f67b5c7a481fa68f4cea97")


