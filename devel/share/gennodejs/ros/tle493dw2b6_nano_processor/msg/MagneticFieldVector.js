// Auto-generated. Do not edit!

// (in-package tle493dw2b6_nano_processor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MagneticFieldVector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.magnetic_x = null;
      this.magnetic_y = null;
      this.magnetic_z = null;
    }
    else {
      if (initObj.hasOwnProperty('magnetic_x')) {
        this.magnetic_x = initObj.magnetic_x
      }
      else {
        this.magnetic_x = 0.0;
      }
      if (initObj.hasOwnProperty('magnetic_y')) {
        this.magnetic_y = initObj.magnetic_y
      }
      else {
        this.magnetic_y = 0.0;
      }
      if (initObj.hasOwnProperty('magnetic_z')) {
        this.magnetic_z = initObj.magnetic_z
      }
      else {
        this.magnetic_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MagneticFieldVector
    // Serialize message field [magnetic_x]
    bufferOffset = _serializer.float32(obj.magnetic_x, buffer, bufferOffset);
    // Serialize message field [magnetic_y]
    bufferOffset = _serializer.float32(obj.magnetic_y, buffer, bufferOffset);
    // Serialize message field [magnetic_z]
    bufferOffset = _serializer.float32(obj.magnetic_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MagneticFieldVector
    let len;
    let data = new MagneticFieldVector(null);
    // Deserialize message field [magnetic_x]
    data.magnetic_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [magnetic_y]
    data.magnetic_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [magnetic_z]
    data.magnetic_z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tle493dw2b6_nano_processor/MagneticFieldVector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e76124847d3adf8d4ad3f79fa60629ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 magnetic_x
    float32 magnetic_y
    float32 magnetic_z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MagneticFieldVector(null);
    if (msg.magnetic_x !== undefined) {
      resolved.magnetic_x = msg.magnetic_x;
    }
    else {
      resolved.magnetic_x = 0.0
    }

    if (msg.magnetic_y !== undefined) {
      resolved.magnetic_y = msg.magnetic_y;
    }
    else {
      resolved.magnetic_y = 0.0
    }

    if (msg.magnetic_z !== undefined) {
      resolved.magnetic_z = msg.magnetic_z;
    }
    else {
      resolved.magnetic_z = 0.0
    }

    return resolved;
    }
};

module.exports = MagneticFieldVector;
