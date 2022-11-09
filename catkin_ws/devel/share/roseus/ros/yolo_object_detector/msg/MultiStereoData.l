;; Auto-generated. Do not edit!


(when (boundp 'yolo_object_detector::MultiStereoData)
  (if (not (find-package "YOLO_OBJECT_DETECTOR"))
    (make-package "YOLO_OBJECT_DETECTOR"))
  (shadow 'MultiStereoData (find-package "YOLO_OBJECT_DETECTOR")))
(unless (find-package "YOLO_OBJECT_DETECTOR::MULTISTEREODATA")
  (make-package "YOLO_OBJECT_DETECTOR::MULTISTEREODATA"))

(in-package "ROS")
;;//! \htmlinclude MultiStereoData.msg.html


(defclass yolo_object_detector::MultiStereoData
  :super ros::object
  :slots (_object_distance ))

(defmethod yolo_object_detector::MultiStereoData
  (:init
   (&key
    ((:object_distance __object_distance) ())
    )
   (send-super :init)
   (setq _object_distance __object_distance)
   self)
  (:object_distance
   (&rest __object_distance)
   (if (keywordp (car __object_distance))
       (send* _object_distance __object_distance)
     (progn
       (if __object_distance (setq _object_distance (car __object_distance)))
       _object_distance)))
  (:serialization-length
   ()
   (+
    ;; yolo_object_detector/StereoData[] _object_distance
    (apply #'+ (send-all _object_distance :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; yolo_object_detector/StereoData[] _object_distance
     (write-long (length _object_distance) s)
     (dolist (elem _object_distance)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; yolo_object_detector/StereoData[] _object_distance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_distance (let (r) (dotimes (i n) (push (instance yolo_object_detector::StereoData :init) r)) r))
     (dolist (elem- _object_distance)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get yolo_object_detector::MultiStereoData :md5sum-) "c6ceca52144a9fa61205d857ffcfa332")
(setf (get yolo_object_detector::MultiStereoData :datatype-) "yolo_object_detector/MultiStereoData")
(setf (get yolo_object_detector::MultiStereoData :definition-)
      "StereoData[] object_distance

================================================================================
MSG: yolo_object_detector/StereoData
string object
float32 distance

")



(provide :yolo_object_detector/MultiStereoData "c6ceca52144a9fa61205d857ffcfa332")


