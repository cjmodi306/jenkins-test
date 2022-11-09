// Auto-generated. Do not edit!

// (in-package yolo_object_detector.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StereoData = require('./StereoData.js');

//-----------------------------------------------------------

class MultiStereoData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('object_distance')) {
        this.object_distance = initObj.object_distance
      }
      else {
        this.object_distance = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiStereoData
    // Serialize message field [object_distance]
    // Serialize the length for message field [object_distance]
    bufferOffset = _serializer.uint32(obj.object_distance.length, buffer, bufferOffset);
    obj.object_distance.forEach((val) => {
      bufferOffset = StereoData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiStereoData
    let len;
    let data = new MultiStereoData(null);
    // Deserialize message field [object_distance]
    // Deserialize array length for message field [object_distance]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.object_distance = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.object_distance[i] = StereoData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.object_distance.forEach((val) => {
      length += StereoData.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yolo_object_detector/MultiStereoData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6ceca52144a9fa61205d857ffcfa332';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    StereoData[] object_distance
    
    ================================================================================
    MSG: yolo_object_detector/StereoData
    string object
    float32 distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiStereoData(null);
    if (msg.object_distance !== undefined) {
      resolved.object_distance = new Array(msg.object_distance.length);
      for (let i = 0; i < resolved.object_distance.length; ++i) {
        resolved.object_distance[i] = StereoData.Resolve(msg.object_distance[i]);
      }
    }
    else {
      resolved.object_distance = []
    }

    return resolved;
    }
};

module.exports = MultiStereoData;
