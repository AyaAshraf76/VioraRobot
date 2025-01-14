// Auto-generated. Do not edit!

// (in-package pavlov_mini_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class set_gaitRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gait_filename = null;
    }
    else {
      if (initObj.hasOwnProperty('gait_filename')) {
        this.gait_filename = initObj.gait_filename
      }
      else {
        this.gait_filename = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_gaitRequest
    // Serialize message field [gait_filename]
    bufferOffset = _serializer.string(obj.gait_filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_gaitRequest
    let len;
    let data = new set_gaitRequest(null);
    // Deserialize message field [gait_filename]
    data.gait_filename = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.gait_filename);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pavlov_mini_msgs/set_gaitRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '748de5a12429f1dcd60c676528b23aa2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request constants
    string gait_filename
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_gaitRequest(null);
    if (msg.gait_filename !== undefined) {
      resolved.gait_filename = msg.gait_filename;
    }
    else {
      resolved.gait_filename = ''
    }

    return resolved;
    }
};

class set_gaitResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_gaitResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_gaitResponse
    let len;
    let data = new set_gaitResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.info);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pavlov_mini_msgs/set_gaitResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '929b8c0d7b68510a3f501a60258c746e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response constants
    bool result
    string info
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_gaitResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: set_gaitRequest,
  Response: set_gaitResponse,
  md5sum() { return '4fcd3db9d0e7c7728fccbf1980f97de1'; },
  datatype() { return 'pavlov_mini_msgs/set_gait'; }
};
