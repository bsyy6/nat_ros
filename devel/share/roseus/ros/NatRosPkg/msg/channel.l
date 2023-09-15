;; Auto-generated. Do not edit!


(when (boundp 'NatRosPkg::channel)
  (if (not (find-package "NATROSPKG"))
    (make-package "NATROSPKG"))
  (shadow 'channel (find-package "NATROSPKG")))
(unless (find-package "NATROSPKG::CHANNEL")
  (make-package "NATROSPKG::CHANNEL"))

(in-package "ROS")
;;//! \htmlinclude channel.msg.html


(defclass NatRosPkg::channel
  :super ros::object
  :slots (_nFrames _Values _isEmpty _isPartial ))

(defmethod NatRosPkg::channel
  (:init
   (&key
    ((:nFrames __nFrames) 0)
    ((:Values __Values) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:isEmpty __isEmpty) nil)
    ((:isPartial __isPartial) nil)
    )
   (send-super :init)
   (setq _nFrames (round __nFrames))
   (setq _Values __Values)
   (setq _isEmpty __isEmpty)
   (setq _isPartial __isPartial)
   self)
  (:nFrames
   (&optional __nFrames)
   (if __nFrames (setq _nFrames __nFrames)) _nFrames)
  (:Values
   (&optional __Values)
   (if __Values (setq _Values __Values)) _Values)
  (:isEmpty
   (&optional (__isEmpty :null))
   (if (not (eq __isEmpty :null)) (setq _isEmpty __isEmpty)) _isEmpty)
  (:isPartial
   (&optional (__isPartial :null))
   (if (not (eq __isPartial :null)) (setq _isPartial __isPartial)) _isPartial)
  (:serialization-length
   ()
   (+
    ;; int32 _nFrames
    4
    ;; float64[] _Values
    (* 8    (length _Values)) 4
    ;; bool _isEmpty
    1
    ;; bool _isPartial
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _nFrames
       (write-long _nFrames s)
     ;; float64[] _Values
     (write-long (length _Values) s)
     (dotimes (i (length _Values))
       (sys::poke (elt _Values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _isEmpty
       (if _isEmpty (write-byte -1 s) (write-byte 0 s))
     ;; bool _isPartial
       (if _isPartial (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _nFrames
     (setq _nFrames (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _Values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _isEmpty
     (setq _isEmpty (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isPartial
     (setq _isPartial (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get NatRosPkg::channel :md5sum-) "3fa6a6187541c2c904521c296745a24b")
(setf (get NatRosPkg::channel :datatype-) "NatRosPkg/channel")
(setf (get NatRosPkg::channel :definition-)
      "int32 nFrames
float64[] Values
bool isEmpty
bool isPartial

")



(provide :NatRosPkg/channel "3fa6a6187541c2c904521c296745a24b")


