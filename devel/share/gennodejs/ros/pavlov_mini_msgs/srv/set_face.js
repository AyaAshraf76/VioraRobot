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

class set_faceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.style = null;
      this.blink_prob = null;
    }
    else {
      if (initObj.hasOwnProperty('style')) {
        this.style = initObj.style
      }
      else {
        this.style = '';
      }
      if (initObj.hasOwnProperty('blink_prob')) {
        this.blink_prob = initObj.blink_prob
      }
      else {
        this.blink_prob = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_faceRequest
    // Serialize message field [style]
    bufferOffset = _serializer.string(obj.style, buffer, bufferOffset);
    // Serialize message field [blink_prob]
    bufferOffset = _serializer.float32(obj.blink_prob, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_faceRequest
    let len;
    let data = new set_faceRequest(null);
    // Deserialize message field [style]
    data.style = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [blink_prob]
    data.blink_prob = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.style);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pavlov_mini_msgs/set_faceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec7fd37ba165f460fe63840aafdb14b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request constants
    string  style
    float32 blink_prob
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_faceRequest(null);
    if (msg.style !== undefined) {
      resolved.style = msg.style;
    }
    else {
      resolved.style = ''
    }

    if (msg.blink_prob !== undefined) {
      resolved.blink_prob = msg.blink_prob;
    }
    else {
      resolved.blink_prob = 0.0
    }

    return resolved;
    }
};

class set_faceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_faceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_faceResponse
    let len;
    let data = new set_faceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pavlov_mini_msgs/set_faceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response constants
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_faceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: set_faceRequest,
  Response: set_faceResponse,
  md5sum() { return 'ec7fd37ba165f460fe63840aafdb14b4'; },
  datatype() { return 'pavlov_mini_msgs/set_face'; }
};
