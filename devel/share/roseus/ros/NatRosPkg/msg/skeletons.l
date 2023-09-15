;; Auto-generated. Do not edit!


(when (boundp 'NatRosPkg::skeletons)
  (if (not (find-package "NATROSPKG"))
    (make-package "NATROSPKG"))
  (shadow 'skeletons (find-package "NATROSPKG")))
(unless (find-package "NATROSPKG::SKELETONS")
  (make-package "NATROSPKG::SKELETONS"))

(in-package "ROS")
;;//! \htmlinclude skeletons.msg.html


(defclass NatRosPkg::skeletons
  :super ros::object
  :slots (_nSkeletons _skeletons ))

(defmethod NatRosPkg::skeletons
  (:init
   (&key
    ((:nSkeletons __nSkeletons) 0)
    ((:skeletons __skeletons) ())
    )
   (send-super :init)
   (setq _nSkeletons (round __nSkeletons))
   (setq _skeletons __skeletons)
   self)
  (:nSkeletons
   (&optional __nSkeletons)
   (if __nSkeletons (setq _nSkeletons __nSkeletons)) _nSkeletons)
  (:skeletons
   (&rest __skeletons)
   (if (keywordp (car __skeletons))
       (send* _skeletons __skeletons)
     (progn
       (if __skeletons (setq _skeletons (car __skeletons)))
       _skeletons)))
  (:serialization-length
   ()
   (+
    ;; int32 _nSkeletons
    4
    ;; NatRosPkg/skeleton[] _skeletons
    (apply #'+ (send-all _skeletons :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _nSkeletons
       (write-long _nSkeletons s)
     ;; NatRosPkg/skeleton[] _skeletons
     (write-long (length _skeletons) s)
     (dolist (elem _skeletons)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _nSkeletons
     (setq _nSkeletons (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; NatRosPkg/skeleton[] _skeletons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _skeletons (let (r) (dotimes (i n) (push (instance NatRosPkg::skeleton :init) r)) r))
     (dolist (elem- _skeletons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get NatRosPkg::skeletons :md5sum-) "498018be8091f821b47e752d2a3c0e29")
(setf (get NatRosPkg::skeletons :datatype-) "NatRosPkg/skeletons")
(setf (get NatRosPkg::skeletons :definition-)
      "int32 nSkeletons
skeleton[] skeletons
================================================================================
MSG: NatRosPkg/skeleton
string name
int32 ID
int32 nRigidBodies
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :NatRosPkg/skeletons "498018be8091f821b47e752d2a3c0e29")


