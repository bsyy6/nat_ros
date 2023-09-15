;; Auto-generated. Do not edit!


(when (boundp 'NatRosPkg::body)
  (if (not (find-package "NATROSPKG"))
    (make-package "NATROSPKG"))
  (shadow 'body (find-package "NATROSPKG")))
(unless (find-package "NATROSPKG::BODY")
  (make-package "NATROSPKG::BODY"))

(in-package "ROS")
;;//! \htmlinclude body.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass NatRosPkg::body
  :super ros::object
  :slots (_id _pose _meanError _isValid _params ))

(defmethod NatRosPkg::body
  (:init
   (&key
    ((:id __id) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:meanError __meanError) 0.0)
    ((:isValid __isValid) nil)
    ((:params __params) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _pose __pose)
   (setq _meanError (float __meanError))
   (setq _isValid __isValid)
   (setq _params (round __params))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:meanError
   (&optional __meanError)
   (if __meanError (setq _meanError __meanError)) _meanError)
  (:isValid
   (&optional (__isValid :null))
   (if (not (eq __isValid :null)) (setq _isValid __isValid)) _isValid)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _meanError
    8
    ;; bool _isValid
    1
    ;; int16 _params
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64 _meanError
       (sys::poke _meanError (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _isValid
       (if _isValid (write-byte -1 s) (write-byte 0 s))
     ;; int16 _params
       (write-word _params s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _meanError
     (setq _meanError (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _isValid
     (setq _isValid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _params
     (setq _params (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get NatRosPkg::body :md5sum-) "647dbfe684b15d34fa5bec37c45720ac")
(setf (get NatRosPkg::body :datatype-) "NatRosPkg/body")
(setf (get NatRosPkg::body :definition-)
      "int32 id
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



(provide :NatRosPkg/body "647dbfe684b15d34fa5bec37c45720ac")


