# Install script for directory: /home/fgvt/jenkins-test/catkin_ws/src/fgvt-object-detection/yolo_object_detector

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/fgvt/jenkins-test/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolo_object_detector/msg" TYPE FILE FILES
    "/home/fgvt/jenkins-test/catkin_ws/src/fgvt-object-detection/yolo_object_detector/msg/ObjectData.msg"
    "/home/fgvt/jenkins-test/catkin_ws/src/fgvt-object-detection/yolo_object_detector/msg/StereoData.msg"
    "/home/fgvt/jenkins-test/catkin_ws/src/fgvt-object-detection/yolo_object_detector/msg/coordinates.msg"
    "/home/fgvt/jenkins-test/catkin_ws/src/fgvt-object-detection/yolo_object_detector/msg/MultiObjectData.msg"
    "/home/fgvt/jenkins-test/catkin_ws/src/fgvt-object-detection/yolo_object_detector/msg/MultiStereoData.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolo_object_detector/cmake" TYPE FILE FILES "/home/fgvt/jenkins-test/catkin_ws/build/fgvt-object-detection/yolo_object_detector/catkin_generated/installspace/yolo_object_detector-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/fgvt/jenkins-test/catkin_ws/devel/include/yolo_object_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/fgvt/jenkins-test/catkin_ws/devel/share/roseus/ros/yolo_object_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/fgvt/jenkins-test/catkin_ws/devel/share/common-lisp/ros/yolo_object_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/fgvt/jenkins-test/catkin_ws/devel/share/gennodejs/ros/yolo_object_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/fgvt/jenkins-test/catkin_ws/devel/lib/python3/dist-packages/yolo_object_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/fgvt/jenkins-test/catkin_ws/devel/lib/python3/dist-packages/yolo_object_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/fgvt/jenkins-test/catkin_ws/build/fgvt-object-detection/yolo_object_detector/catkin_generated/installspace/yolo_object_detector.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolo_object_detector/cmake" TYPE FILE FILES "/home/fgvt/jenkins-test/catkin_ws/build/fgvt-object-detection/yolo_object_detector/catkin_generated/installspace/yolo_object_detector-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolo_object_detector/cmake" TYPE FILE FILES
    "/home/fgvt/jenkins-test/catkin_ws/build/fgvt-object-detection/yolo_object_detector/catkin_generated/installspace/yolo_object_detectorConfig.cmake"
    "/home/fgvt/jenkins-test/catkin_ws/build/fgvt-object-detection/yolo_object_detector/catkin_generated/installspace/yolo_object_detectorConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolo_object_detector" TYPE FILE FILES "/home/fgvt/jenkins-test/catkin_ws/src/fgvt-object-detection/yolo_object_detector/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/yolo_object_detector" TYPE PROGRAM FILES "/home/fgvt/jenkins-test/catkin_ws/build/fgvt-object-detection/yolo_object_detector/catkin_generated/installspace/stereo_camera.py")
endif()

