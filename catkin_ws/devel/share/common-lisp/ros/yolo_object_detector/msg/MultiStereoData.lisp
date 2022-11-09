; Auto-generated. Do not edit!


(cl:in-package yolo_object_detector-msg)


;//! \htmlinclude MultiStereoData.msg.html

(cl:defclass <MultiStereoData> (roslisp-msg-protocol:ros-message)
  ((object_distance
    :reader object_distance
    :initarg :object_distance
    :type (cl:vector yolo_object_detector-msg:StereoData)
   :initform (cl:make-array 0 :element-type 'yolo_object_detector-msg:StereoData :initial-element (cl:make-instance 'yolo_object_detector-msg:StereoData))))
)

(cl:defclass MultiStereoData (<MultiStereoData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiStereoData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiStereoData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolo_object_detector-msg:<MultiStereoData> is deprecated: use yolo_object_detector-msg:MultiStereoData instead.")))

(cl:ensure-generic-function 'object_distance-val :lambda-list '(m))
(cl:defmethod object_distance-val ((m <MultiStereoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_object_detector-msg:object_distance-val is deprecated.  Use yolo_object_detector-msg:object_distance instead.")
  (object_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiStereoData>) ostream)
  "Serializes a message object of type '<MultiStereoData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_distance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiStereoData>) istream)
  "Deserializes a message object of type '<MultiStereoData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_distance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_distance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'yolo_object_detector-msg:StereoData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiStereoData>)))
  "Returns string type for a message object of type '<MultiStereoData>"
  "yolo_object_detector/MultiStereoData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiStereoData)))
  "Returns string type for a message object of type 'MultiStereoData"
  "yolo_object_detector/MultiStereoData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiStereoData>)))
  "Returns md5sum for a message object of type '<MultiStereoData>"
  "c6ceca52144a9fa61205d857ffcfa332")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiStereoData)))
  "Returns md5sum for a message object of type 'MultiStereoData"
  "c6ceca52144a9fa61205d857ffcfa332")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiStereoData>)))
  "Returns full string definition for message of type '<MultiStereoData>"
  (cl:format cl:nil "StereoData[] object_distance~%~%================================================================================~%MSG: yolo_object_detector/StereoData~%string object~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiStereoData)))
  "Returns full string definition for message of type 'MultiStereoData"
  (cl:format cl:nil "StereoData[] object_distance~%~%================================================================================~%MSG: yolo_object_detector/StereoData~%string object~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiStereoData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_distance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiStereoData>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiStereoData
    (cl:cons ':object_distance (object_distance msg))
))
