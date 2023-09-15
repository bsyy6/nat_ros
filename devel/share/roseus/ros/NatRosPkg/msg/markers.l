;; Auto-generated. Do not edit!


(when (boundp 'NatRosPkg::markers)
  (if (not (find-package "NATROSPKG"))
    (make-package "NATROSPKG"))
  (shadow 'markers (find-package "NATROSPKG")))
(unless (find-package "NATROSPKG::MARKERS")
  (make-package "NATROSPKG::MARKERS"))

(in-package "ROS")
;;//! \htmlinclude markers.msg.html


(defclass NatRosPkg::markers
  :super ros::object
  :slots (_nMarkers _markers ))

(defmethod NatRosPkg::markers
  (:init
   (&key
    ((:nMarkers __nMarkers) 0)
    ((:markers __markers) ())
    )
   (send-super :init)
   (setq _nMarkers (round __nMarkers))
   (setq _markers __markers)
   self)
  (:nMarkers
   (&optional __nMarkers)
   (if __nMarkers (setq _nMarkers __nMarkers)) _nMarkers)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; int32 _nMarkers
    4
    ;; NatRosPkg/marker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _nMarkers
       (write-long _nMarkers s)
     ;; NatRosPkg/marker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _nMarkers
     (setq _nMarkers (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; NatRosPkg/marker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance NatRosPkg::marker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get NatRosPkg::markers :md5sum-) "a1ca0ae52443593a08f786db6e001040")
(setf (get NatRosPkg::markers :datatype-) "NatRosPkg/markers")
(setf (get NatRosPkg::markers :definition-)
      "int32 nMarkers
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

")



(provide :NatRosPkg/markers "a1ca0ae52443593a08f786db6e001040")


