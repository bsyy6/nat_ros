;; Auto-generated. Do not edit!


(when (boundp 'NatRosPkg::forcePlate)
  (if (not (find-package "NATROSPKG"))
    (make-package "NATROSPKG"))
  (shadow 'forcePlate (find-package "NATROSPKG")))
(unless (find-package "NATROSPKG::FORCEPLATE")
  (make-package "NATROSPKG::FORCEPLATE"))

(in-package "ROS")
;;//! \htmlinclude forcePlate.msg.html


(defclass NatRosPkg::forcePlate
  :super ros::object
  :slots (_id _nChannels _params _channels ))

(defmethod NatRosPkg::forcePlate
  (:init
   (&key
    ((:id __id) 0)
    ((:nChannels __nChannels) 0)
    ((:params __params) 0)
    ((:channels __channels) ())
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _nChannels (round __nChannels))
   (setq _params (round __params))
   (setq _channels __channels)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:nChannels
   (&optional __nChannels)
   (if __nChannels (setq _nChannels __nChannels)) _nChannels)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:channels
   (&rest __channels)
   (if (keywordp (car __channels))
       (send* _channels __channels)
     (progn
       (if __channels (setq _channels (car __channels)))
       _channels)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _nChannels
    4
    ;; int16 _params
    2
    ;; NatRosPkg/channel[] _channels
    (apply #'+ (send-all _channels :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _nChannels
       (write-long _nChannels s)
     ;; int16 _params
       (write-word _params s)
     ;; NatRosPkg/channel[] _channels
     (write-long (length _channels) s)
     (dolist (elem _channels)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _nChannels
     (setq _nChannels (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _params
     (setq _params (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; NatRosPkg/channel[] _channels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channels (let (r) (dotimes (i n) (push (instance NatRosPkg::channel :init) r)) r))
     (dolist (elem- _channels)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get NatRosPkg::forcePlate :md5sum-) "78b6575faa3bd78870aadb6231f51303")
(setf (get NatRosPkg::forcePlate :datatype-) "NatRosPkg/forcePlate")
(setf (get NatRosPkg::forcePlate :definition-)
      "int32 id
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



(provide :NatRosPkg/forcePlate "78b6575faa3bd78870aadb6231f51303")


