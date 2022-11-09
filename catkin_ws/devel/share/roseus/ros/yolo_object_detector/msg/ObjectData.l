;; Auto-generated. Do not edit!


(when (boundp 'yolo_object_detector::ObjectData)
  (if (not (find-package "YOLO_OBJECT_DETECTOR"))
    (make-package "YOLO_OBJECT_DETECTOR"))
  (shadow 'ObjectData (find-package "YOLO_OBJECT_DETECTOR")))
(unless (find-package "YOLO_OBJECT_DETECTOR::OBJECTDATA")
  (make-package "YOLO_OBJECT_DETECTOR::OBJECTDATA"))

(in-package "ROS")
;;//! \htmlinclude ObjectData.msg.html


(defclass yolo_object_detector::ObjectData
  :super ros::object
  :slots (_object _x _y _h _w _coordinates ))

(defmethod yolo_object_detector::ObjectData
  (:init
   (&key
    ((:object __object) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:h __h) 0.0)
    ((:w __w) 0.0)
    ((:coordinates __coordinates) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _object (string __object))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _h (float __h))
   (setq _w (float __w))
   (setq _coordinates __coordinates)
   self)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:coordinates
   (&optional __coordinates)
   (if __coordinates (setq _coordinates __coordinates)) _coordinates)
  (:serialization-length
   ()
   (+
    ;; string _object
    4 (length _object)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _h
    8
    ;; float64 _w
    8
    ;; float64[] _coordinates
    (* 8    (length _coordinates)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _h
       (sys::poke _h (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _coordinates
     (write-long (length _coordinates) s)
     (dotimes (i (length _coordinates))
       (sys::poke (elt _coordinates i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _h
     (setq _h (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _coordinates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coordinates (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _coordinates i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get yolo_object_detector::ObjectData :md5sum-) "1697bb930fbdf9f628efe9e7ab39f859")
(setf (get yolo_object_detector::ObjectData :datatype-) "yolo_object_detector/ObjectData")
(setf (get yolo_object_detector::ObjectData :definition-)
      "string object
float64 x
float64 y
float64 h
float64 w
float64[] coordinates

")



(provide :yolo_object_detector/ObjectData "1697bb930fbdf9f628efe9e7ab39f859")


