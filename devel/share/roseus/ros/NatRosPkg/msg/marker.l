;; Auto-generated. Do not edit!


(when (boundp 'NatRosPkg::marker)
  (if (not (find-package "NATROSPKG"))
    (make-package "NATROSPKG"))
  (shadow 'marker (find-package "NATROSPKG")))
(unless (find-package "NATROSPKG::MARKER")
  (make-package "NATROSPKG::MARKER"))

(in-package "ROS")
;;//! \htmlinclude marker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass NatRosPkg::marker
  :super ros::object
  :slots (_ID _modelID _position _size _params _residual _oclluded _PCSolved _ModelSolved _HasModel _Unlabled _ActiveMarker ))

(defmethod NatRosPkg::marker
  (:init
   (&key
    ((:ID __ID) 0)
    ((:modelID __modelID) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:size __size) 0.0)
    ((:params __params) 0)
    ((:residual __residual) 0.0)
    ((:oclluded __oclluded) nil)
    ((:PCSolved __PCSolved) nil)
    ((:ModelSolved __ModelSolved) nil)
    ((:HasModel __HasModel) nil)
    ((:Unlabled __Unlabled) nil)
    ((:ActiveMarker __ActiveMarker) nil)
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _modelID (round __modelID))
   (setq _position __position)
   (setq _size (float __size))
   (setq _params (round __params))
   (setq _residual (float __residual))
   (setq _oclluded __oclluded)
   (setq _PCSolved __PCSolved)
   (setq _ModelSolved __ModelSolved)
   (setq _HasModel __HasModel)
   (setq _Unlabled __Unlabled)
   (setq _ActiveMarker __ActiveMarker)
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:modelID
   (&optional __modelID)
   (if __modelID (setq _modelID __modelID)) _modelID)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:residual
   (&optional __residual)
   (if __residual (setq _residual __residual)) _residual)
  (:oclluded
   (&optional (__oclluded :null))
   (if (not (eq __oclluded :null)) (setq _oclluded __oclluded)) _oclluded)
  (:PCSolved
   (&optional (__PCSolved :null))
   (if (not (eq __PCSolved :null)) (setq _PCSolved __PCSolved)) _PCSolved)
  (:ModelSolved
   (&optional (__ModelSolved :null))
   (if (not (eq __ModelSolved :null)) (setq _ModelSolved __ModelSolved)) _ModelSolved)
  (:HasModel
   (&optional (__HasModel :null))
   (if (not (eq __HasModel :null)) (setq _HasModel __HasModel)) _HasModel)
  (:Unlabled
   (&optional (__Unlabled :null))
   (if (not (eq __Unlabled :null)) (setq _Unlabled __Unlabled)) _Unlabled)
  (:ActiveMarker
   (&optional (__ActiveMarker :null))
   (if (not (eq __ActiveMarker :null)) (setq _ActiveMarker __ActiveMarker)) _ActiveMarker)
  (:serialization-length
   ()
   (+
    ;; int32 _ID
    4
    ;; int32 _modelID
    4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _size
    8
    ;; int16 _params
    2
    ;; float64 _residual
    8
    ;; bool _oclluded
    1
    ;; bool _PCSolved
    1
    ;; bool _ModelSolved
    1
    ;; bool _HasModel
    1
    ;; bool _Unlabled
    1
    ;; bool _ActiveMarker
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ID
       (write-long _ID s)
     ;; int32 _modelID
       (write-long _modelID s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _size
       (sys::poke _size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _params
       (write-word _params s)
     ;; float64 _residual
       (sys::poke _residual (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _oclluded
       (if _oclluded (write-byte -1 s) (write-byte 0 s))
     ;; bool _PCSolved
       (if _PCSolved (write-byte -1 s) (write-byte 0 s))
     ;; bool _ModelSolved
       (if _ModelSolved (write-byte -1 s) (write-byte 0 s))
     ;; bool _HasModel
       (if _HasModel (write-byte -1 s) (write-byte 0 s))
     ;; bool _Unlabled
       (if _Unlabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _ActiveMarker
       (if _ActiveMarker (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _modelID
     (setq _modelID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _size
     (setq _size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _params
     (setq _params (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _residual
     (setq _residual (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _oclluded
     (setq _oclluded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PCSolved
     (setq _PCSolved (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ModelSolved
     (setq _ModelSolved (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _HasModel
     (setq _HasModel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Unlabled
     (setq _Unlabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ActiveMarker
     (setq _ActiveMarker (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get NatRosPkg::marker :md5sum-) "1cc80e06d1d63fc9aa98d6e8f0d4490d")
(setf (get NatRosPkg::marker :datatype-) "NatRosPkg/marker")
(setf (get NatRosPkg::marker :definition-)
      "int32 ID
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

")



(provide :NatRosPkg/marker "1cc80e06d1d63fc9aa98d6e8f0d4490d")


