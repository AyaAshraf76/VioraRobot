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

class set_motor_calibrationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo_index = null;
      this.setCalibration_servo = null;
      this.min_calAngle = null;
      this.max_calAngle = null;
      this.min_posServo = null;
      this.max_posServo = null;
      this.min_posAngle = null;
      this.max_posAngle = null;
      this.min_lim_angle = null;
      this.max_lim_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('servo_index')) {
        this.servo_index = initObj.servo_index
      }
      else {
        this.servo_index = 0;
      }
      if (initObj.hasOwnProperty('setCalibration_servo')) {
        this.setCalibration_servo = initObj.setCalibration_servo
      }
      else {
        this.setCalibration_servo = false;
      }
      if (initObj.hasOwnProperty('min_calAngle')) {
        this.min_calAngle = initObj.min_calAngle
      }
      else {
        this.min_calAngle = 0.0;
      }
      if (initObj.hasOwnProperty('max_calAngle')) {
        this.max_calAngle = initObj.max_calAngle
      }
      else {
        this.max_calAngle = 0.0;
      }
      if (initObj.hasOwnProperty('min_posServo')) {
        this.min_posServo = initObj.min_posServo
      }
      else {
        this.min_posServo = 0.0;
      }
      if (initObj.hasOwnProperty('max_posServo')) {
        this.max_posServo = initObj.max_posServo
      }
      else {
        this.max_posServo = 0.0;
      }
      if (initObj.hasOwnProperty('min_posAngle')) {
        this.min_posAngle = initObj.min_posAngle
      }
      else {
        this.min_posAngle = 0.0;
      }
      if (initObj.hasOwnProperty('max_posAngle')) {
        this.max_posAngle = initObj.max_posAngle
      }
      else {
        this.max_posAngle = 0.0;
      }
      if (initObj.hasOwnProperty('min_lim_angle')) {
        this.min_lim_angle = initObj.min_lim_angle
      }
      else {
        this.min_lim_angle = 0.0;
      }
      if (initObj.hasOwnProperty('max_lim_angle')) {
        this.max_lim_angle = initObj.max_lim_angle
      }
      else {
        this.max_lim_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_motor_calibrationRequest
    // Serialize message field [servo_index]
    bufferOffset = _serializer.int32(obj.servo_index, buffer, bufferOffset);
    // Serialize message field [setCalibration_servo]
    bufferOffset = _serializer.bool(obj.setCalibration_servo, buffer, bufferOffset);
    // Serialize message field [min_calAngle]
    bufferOffset = _serializer.float32(obj.min_calAngle, buffer, bufferOffset);
    // Serialize message field [max_calAngle]
    bufferOffset = _serializer.float32(obj.max_calAngle, buffer, bufferOffset);
    // Serialize message field [min_posServo]
    bufferOffset = _serializer.float32(obj.min_posServo, buffer, bufferOffset);
    // Serialize message field [max_posServo]
    bufferOffset = _serializer.float32(obj.max_posServo, buffer, bufferOffset);
    // Serialize message field [min_posAngle]
    bufferOffset = _serializer.float32(obj.min_posAngle, buffer, bufferOffset);
    // Serialize message field [max_posAngle]
    bufferOffset = _serializer.float32(obj.max_posAngle, buffer, bufferOffset);
    // Serialize message field [min_lim_angle]
    bufferOffset = _serializer.float32(obj.min_lim_angle, buffer, bufferOffset);
    // Serialize message field [max_lim_angle]
    bufferOffset = _serializer.float32(obj.max_lim_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_motor_calibrationRequest
    let len;
    let data = new set_motor_calibrationRequest(null);
    // Deserialize message field [servo_index]
    data.servo_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [setCalibration_servo]
    data.setCalibration_servo = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [min_calAngle]
    data.min_calAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_calAngle]
    data.max_calAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_posServo]
    data.min_posServo = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_posServo]
    data.max_posServo = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_posAngle]
    data.min_posAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_posAngle]
    data.max_posAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_lim_angle]
    data.min_lim_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_lim_angle]
    data.max_lim_angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 37;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pavlov_mini_msgs/set_motor_calibrationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0600e947f1e961d431f7d8962da5e976';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request constants
    int32   servo_index
    bool    setCalibration_servo
    float32 min_calAngle
    float32 max_calAngle
    float32 min_posServo
    float32 max_posServo
    float32 min_posAngle
    float32 max_posAngle
    float32 min_lim_angle
    float32 max_lim_angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_motor_calibrationRequest(null);
    if (msg.servo_index !== undefined) {
      resolved.servo_index = msg.servo_index;
    }
    else {
      resolved.servo_index = 0
    }

    if (msg.setCalibration_servo !== undefined) {
      resolved.setCalibration_servo = msg.setCalibration_servo;
    }
    else {
      resolved.setCalibration_servo = false
    }

    if (msg.min_calAngle !== undefined) {
      resolved.min_calAngle = msg.min_calAngle;
    }
    else {
      resolved.min_calAngle = 0.0
    }

    if (msg.max_calAngle !== undefined) {
      resolved.max_calAngle = msg.max_calAngle;
    }
    else {
      resolved.max_calAngle = 0.0
    }

    if (msg.min_posServo !== undefined) {
      resolved.min_posServo = msg.min_posServo;
    }
    else {
      resolved.min_posServo = 0.0
    }

    if (msg.max_posServo !== undefined) {
      resolved.max_posServo = msg.max_posServo;
    }
    else {
      resolved.max_posServo = 0.0
    }

    if (msg.min_posAngle !== undefined) {
      resolved.min_posAngle = msg.min_posAngle;
    }
    else {
      resolved.min_posAngle = 0.0
    }

    if (msg.max_posAngle !== undefined) {
      resolved.max_posAngle = msg.max_posAngle;
    }
    else {
      resolved.max_posAngle = 0.0
    }

    if (msg.min_lim_angle !== undefined) {
      resolved.min_lim_angle = msg.min_lim_angle;
    }
    else {
      resolved.min_lim_angle = 0.0
    }

    if (msg.max_lim_angle !== undefined) {
      resolved.max_lim_angle = msg.max_lim_angle;
    }
    else {
      resolved.max_lim_angle = 0.0
    }

    return resolved;
    }
};

class set_motor_calibrationResponse {
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
    // Serializes a message object of type set_motor_calibrationResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_motor_calibrationResponse
    let len;
    let data = new set_motor_calibrationResponse(null);
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
    return 'pavlov_mini_msgs/set_motor_calibrationResponse';
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
    const resolved = new set_motor_calibrationResponse(null);
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
  Request: set_motor_calibrationRequest,
  Response: set_motor_calibrationResponse,
  md5sum() { return '7362753e9baf3d3776513533ce7093fd'; },
  datatype() { return 'pavlov_mini_msgs/set_motor_calibration'; }
};
