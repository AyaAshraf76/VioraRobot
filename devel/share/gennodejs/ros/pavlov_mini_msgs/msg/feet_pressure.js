// Auto-generated. Do not edit!

// (in-package pavlov_mini_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class feet_pressure {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.leg_name = null;
      this.pressure_vector = null;
      this.feet_pos = null;
      this.feet_stance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('leg_name')) {
        this.leg_name = initObj.leg_name
      }
      else {
        this.leg_name = [];
      }
      if (initObj.hasOwnProperty('pressure_vector')) {
        this.pressure_vector = initObj.pressure_vector
      }
      else {
        this.pressure_vector = [];
      }
      if (initObj.hasOwnProperty('feet_pos')) {
        this.feet_pos = initObj.feet_pos
      }
      else {
        this.feet_pos = [];
      }
      if (initObj.hasOwnProperty('feet_stance')) {
        this.feet_stance = initObj.feet_stance
      }
      else {
        this.feet_stance = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type feet_pressure
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [leg_name]
    bufferOffset = _arraySerializer.string(obj.leg_name, buffer, bufferOffset, null);
    // Serialize message field [pressure_vector]
    // Serialize the length for message field [pressure_vector]
    bufferOffset = _serializer.uint32(obj.pressure_vector.length, buffer, bufferOffset);
    obj.pressure_vector.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [feet_pos]
    // Serialize the length for message field [feet_pos]
    bufferOffset = _serializer.uint32(obj.feet_pos.length, buffer, bufferOffset);
    obj.feet_pos.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [feet_stance]
    bufferOffset = _arraySerializer.bool(obj.feet_stance, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type feet_pressure
    let len;
    let data = new feet_pressure(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [leg_name]
    data.leg_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [pressure_vector]
    // Deserialize array length for message field [pressure_vector]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pressure_vector = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pressure_vector[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [feet_pos]
    // Deserialize array length for message field [feet_pos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.feet_pos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.feet_pos[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [feet_stance]
    data.feet_stance = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.leg_name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 24 * object.pressure_vector.length;
    length += 24 * object.feet_pos.length;
    length += object.feet_stance.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pavlov_mini_msgs/feet_pressure';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30847eb632b3914317fa2e135cd9287a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string[] leg_name
    geometry_msgs/Point[] pressure_vector
    geometry_msgs/Point[] feet_pos
    bool[] feet_stance
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new feet_pressure(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.leg_name !== undefined) {
      resolved.leg_name = msg.leg_name;
    }
    else {
      resolved.leg_name = []
    }

    if (msg.pressure_vector !== undefined) {
      resolved.pressure_vector = new Array(msg.pressure_vector.length);
      for (let i = 0; i < resolved.pressure_vector.length; ++i) {
        resolved.pressure_vector[i] = geometry_msgs.msg.Point.Resolve(msg.pressure_vector[i]);
      }
    }
    else {
      resolved.pressure_vector = []
    }

    if (msg.feet_pos !== undefined) {
      resolved.feet_pos = new Array(msg.feet_pos.length);
      for (let i = 0; i < resolved.feet_pos.length; ++i) {
        resolved.feet_pos[i] = geometry_msgs.msg.Point.Resolve(msg.feet_pos[i]);
      }
    }
    else {
      resolved.feet_pos = []
    }

    if (msg.feet_stance !== undefined) {
      resolved.feet_stance = msg.feet_stance;
    }
    else {
      resolved.feet_stance = []
    }

    return resolved;
    }
};

module.exports = feet_pressure;
