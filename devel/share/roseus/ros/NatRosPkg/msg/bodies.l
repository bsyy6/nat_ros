;; Auto-generated. Do not edit!


(when (boundp 'NatRosPkg::bodies)
  (if (not (find-package "NATROSPKG"))
    (make-package "NATROSPKG"))
  (shadow 'bodies (find-package "NATROSPKG")))
(unless (find-package "NATROSPKG::BODIES")
  (make-package "NATROSPKG::BODIES"))

(in-package "ROS")
;;//! \htmlinclude bodies.msg.html


(defclass NatRosPkg::bodies
  :super ros::object
  :slots (_nBodies _bodies ))

(defmethod NatRosPkg::bodies
  (:init
   (&key
    ((:nBodies __nBodies) 0)
    ((:bodies __bodies) ())
    )
   (send-super :init)
   (setq _nBodies (round __nBodies))
   (setq _bodies __bodies)
   self)
  (:nBodies
   (&optional __nBodies)
   (if __nBodies (setq _nBodies __nBodies)) _nBodies)
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
    ;; uint8 _nBodies
    1
    ;; NatRosPkg/body[] _bodies
    (apply #'+ (send-all _bodies :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _nBodies
       (write-byte _nBodies s)
     ;; NatRosPkg/body[] _bodies
     (write-long (length _bodies) s)
     (dolist (elem _bodies)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _nBodies
     (setq _nBodies (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(setf (get NatRosPkg::bodies :md5sum-) "11f3573350a1db22abb9f03f08ef9e79")
(setf (get NatRosPkg::bodies :datatype-) "NatRosPkg/bodies")
(setf (get NatRosPkg::bodies :definition-)
      "# Header header
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



(provide :NatRosPkg/bodies "11f3573350a1db22abb9f03f08ef9e79")


