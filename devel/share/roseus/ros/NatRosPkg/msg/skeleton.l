;; Auto-generated. Do not edit!


(when (boundp 'NatRosPkg::skeleton)
  (if (not (find-package "NATROSPKG"))
    (make-package "NATROSPKG"))
  (shadow 'skeleton (find-package "NATROSPKG")))
(unless (find-package "NATROSPKG::SKELETON")
  (make-package "NATROSPKG::SKELETON"))

(in-package "ROS")
;;//! \htmlinclude skeleton.msg.html


(defclass NatRosPkg::skeleton
  :super ros::object
  :slots (_name _ID _nRigidBodies _bodies ))

(defmethod NatRosPkg::skeleton
  (:init
   (&key
    ((:name __name) "")
    ((:ID __ID) 0)
    ((:nRigidBodies __nRigidBodies) 0)
    ((:bodies __bodies) ())
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _ID (round __ID))
   (setq _nRigidBodies (round __nRigidBodies))
   (setq _bodies __bodies)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:nRigidBodies
   (&optional __nRigidBodies)
   (if __nRigidBodies (setq _nRigidBodies __nRigidBodies)) _nRigidBodies)
  (:bodies
   (&rest __bodies)
   (if (keywordp (car __bodies))
       (send* _bodies __bodies)
     (progn
       (if __bodies (setq _bodies (car __bodies)))
       _bodies)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _ID
    4
    ;; int32 _nRigidBodies
    4
    ;; NatRosPkg/body[] _bodies
    (apply #'+ (send-all _bodies :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _ID
       (write-long _ID s)
     ;; int32 _nRigidBodies
       (write-long _nRigidBodies s)
     ;; NatRosPkg/body[] _bodies
     (write-long (length _bodies) s)
     (dolist (elem _bodies)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _nRigidBodies
     (setq _nRigidBodies (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; NatRosPkg/body[] _bodies
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bodies (let (r) (dotimes (i n) (push (instance NatRosPkg::body :init) r)) r))
     (dolist (elem- _bodies)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get NatRosPkg::skeleton :md5sum-) "73a2dfd70dd6f12dc399c5f89d405659")
(setf (get NatRosPkg::skeleton :datatype-) "NatRosPkg/skeleton")
(setf (get NatRosPkg::skeleton :definition-)
      "string name
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



(provide :NatRosPkg/skeleton "73a2dfd70dd6f12dc399c5f89d405659")


