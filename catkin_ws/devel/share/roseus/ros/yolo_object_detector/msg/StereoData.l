;; Auto-generated. Do not edit!


(when (boundp 'yolo_object_detector::StereoData)
  (if (not (find-package "YOLO_OBJECT_DETECTOR"))
    (make-package "YOLO_OBJECT_DETECTOR"))
  (shadow 'StereoData (find-package "YOLO_OBJECT_DETECTOR")))
(unless (find-package "YOLO_OBJECT_DETECTOR::STEREODATA")
  (make-package "YOLO_OBJECT_DETECTOR::STEREODATA"))

(in-package "ROS")
;;//! \htmlinclude StereoData.msg.html


(defclass yolo_object_detector::StereoData
  :super ros::object
  :slots (_object _distance ))

(defmethod yolo_object_detector::StereoData
  (:init
   (&key
    ((:object __object) "")
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _object (string __object))
   (setq _distance (float __distance))
   self)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; string _object
    4 (length _object)
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yolo_object_detector::StereoData :md5sum-) "7cdbf2e1e849e4bcb4a9b0ed1e65ca0e")
(setf (get yolo_object_detector::StereoData :datatype-) "yolo_object_detector/StereoData")
(setf (get yolo_object_detector::StereoData :definition-)
      "string object
float32 distance

")



(provide :yolo_object_detector/StereoData "7cdbf2e1e849e4bcb4a9b0ed1e65ca0e")


