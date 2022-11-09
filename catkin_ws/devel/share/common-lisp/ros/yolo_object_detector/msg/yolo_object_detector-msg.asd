
(cl:in-package :asdf)

(defsystem "yolo_object_detector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MultiObjectData" :depends-on ("_package_MultiObjectData"))
    (:file "_package_MultiObjectData" :depends-on ("_package"))
    (:file "MultiStereoData" :depends-on ("_package_MultiStereoData"))
    (:file "_package_MultiStereoData" :depends-on ("_package"))
    (:file "ObjectData" :depends-on ("_package_ObjectData"))
    (:file "_package_ObjectData" :depends-on ("_package"))
    (:file "StereoData" :depends-on ("_package_StereoData"))
    (:file "_package_StereoData" :depends-on ("_package"))
    (:file "coordinates" :depends-on ("_package_coordinates"))
    (:file "_package_coordinates" :depends-on ("_package"))
  ))