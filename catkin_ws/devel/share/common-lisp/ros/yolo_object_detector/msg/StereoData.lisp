; Auto-generated. Do not edit!


(cl:in-package yolo_object_detector-msg)


;//! \htmlinclude StereoData.msg.html

(cl:defclass <StereoData> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type cl:string
    :initform "")
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass StereoData (<StereoData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StereoData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StereoData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolo_object_detector-msg:<StereoData> is deprecated: use yolo_object_detector-msg:StereoData instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <StereoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_object_detector-msg:object-val is deprecated.  Use yolo_object_detector-msg:object instead.")
  (object m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <StereoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_object_detector-msg:distance-val is deprecated.  Use yolo_object_detector-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StereoData>) ostream)
  "Serializes a message object of type '<StereoData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StereoData>) istream)
  "Deserializes a message object of type '<StereoData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StereoData>)))
  "Returns string type for a message object of type '<StereoData>"
  "yolo_object_detector/StereoData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StereoData)))
  "Returns string type for a message object of type 'StereoData"
  "yolo_object_detector/StereoData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StereoData>)))
  "Returns md5sum for a message object of type '<StereoData>"
  "7cdbf2e1e849e4bcb4a9b0ed1e65ca0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StereoData)))
  "Returns md5sum for a message object of type 'StereoData"
  "7cdbf2e1e849e4bcb4a9b0ed1e65ca0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StereoData>)))
  "Returns full string definition for message of type '<StereoData>"
  (cl:format cl:nil "string object~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StereoData)))
  "Returns full string definition for message of type 'StereoData"
  (cl:format cl:nil "string object~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StereoData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StereoData>))
  "Converts a ROS message object to a list"
  (cl:list 'StereoData
    (cl:cons ':object (object msg))
    (cl:cons ':distance (distance msg))
))
