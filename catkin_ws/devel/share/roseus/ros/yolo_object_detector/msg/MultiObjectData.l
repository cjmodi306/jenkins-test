;; Auto-generated. Do not edit!


(when (boundp 'yolo_object_detector::MultiObjectData)
  (if (not (find-package "YOLO_OBJECT_DETECTOR"))
    (make-package "YOLO_OBJECT_DETECTOR"))
  (shadow 'MultiObjectData (find-package "YOLO_OBJECT_DETECTOR")))
(unless (find-package "YOLO_OBJECT_DETECTOR::MULTIOBJECTDATA")
  (make-package "YOLO_OBJECT_DETECTOR::MULTIOBJECTDATA"))

(in-package "ROS")
;;//! \htmlinclude MultiObjectData.msg.html


(defclass yolo_object_detector::MultiObjectData
  :super ros::object
  :slots (_objects ))

(defmethod yolo_object_detector::MultiObjectData
  (:init
   (&key
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _objects __objects)
   self)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; yolo_object_detector/coordinates[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; yolo_object_detector/coordinates[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; yolo_object_detector/coordinates[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance yolo_object_detector::coordinates :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get yolo_object_detector::MultiObjectData :md5sum-) "acf6d7f5e28f00c5f92b9bb909386535")
(setf (get yolo_object_detector::MultiObjectData :datatype-) "yolo_object_detector/MultiObjectData")
(setf (get yolo_object_detector::MultiObjectData :definition-)
      "coordinates[] objects

================================================================================
MSG: yolo_object_detector/coordinates
string object
float64 x
float64 y
float64 w
float64 h

")



(provide :yolo_object_detector/MultiObjectData "acf6d7f5e28f00c5f92b9bb909386535")


