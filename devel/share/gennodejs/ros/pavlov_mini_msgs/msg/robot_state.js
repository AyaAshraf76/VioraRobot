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

class robot_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pose = null;
      this.angular_velocity = null;
      this.linear_velocity = null;
      this.linear_acceleration = null;
      this.feet_fl_position = null;
      this.feet_fr_position = null;
      this.feet_bl_position = null;
      this.feet_br_position = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('feet_fl_position')) {
        this.feet_fl_position = initObj.feet_fl_position
      }
      else {
        this.feet_fl_position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('feet_fr_position')) {
        this.feet_fr_position = initObj.feet_fr_position
      }
      else {
        this.feet_fr_position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('feet_bl_position')) {
        this.feet_bl_position = initObj.feet_bl_position
      }
      else {
        this.feet_bl_position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('feet_br_position')) {
        this.feet_br_position = initObj.feet_br_position
      }
      else {
        this.feet_br_position = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_state
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [feet_fl_position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.feet_fl_position, buffer, bufferOffset);
    // Serialize message field [feet_fr_position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.feet_fr_position, buffer, bufferOffset);
    // Serialize message field [feet_bl_position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.feet_bl_position, buffer, bufferOffset);
    // Serialize message field [feet_br_position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.feet_br_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_state
    let len;
    let data = new robot_state(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [feet_fl_position]
    data.feet_fl_position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [feet_fr_position]
    data.feet_fr_position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [feet_bl_position]
    data.feet_bl_position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [feet_br_position]
    data.feet_br_position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 224;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pavlov_mini_msgs/robot_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd00fcf8a1266c18340ee5163d127a2db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Pose    pose
    geometry_msgs/Vector3 angular_velocity
    geometry_msgs/Vector3 linear_velocity
    geometry_msgs/Vector3 linear_acceleration
    geometry_msgs/Vector3 feet_fl_position
    geometry_msgs/Vector3 feet_fr_position
    geometry_msgs/Vector3 feet_bl_position
    geometry_msgs/Vector3 feet_br_position
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new robot_state(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = geometry_msgs.msg.Vector3.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = geometry_msgs.msg.Vector3.Resolve(msg.linear_velocity)
    }
    else {
      resolved.linear_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.feet_fl_position !== undefined) {
      resolved.feet_fl_position = geometry_msgs.msg.Vector3.Resolve(msg.feet_fl_position)
    }
    else {
      resolved.feet_fl_position = new geometry_msgs.msg.Vector3()
    }

    if (msg.feet_fr_position !== undefined) {
      resolved.feet_fr_position = geometry_msgs.msg.Vector3.Resolve(msg.feet_fr_position)
    }
    else {
      resolved.feet_fr_position = new geometry_msgs.msg.Vector3()
    }

    if (msg.feet_bl_position !== undefined) {
      resolved.feet_bl_position = geometry_msgs.msg.Vector3.Resolve(msg.feet_bl_position)
    }
    else {
      resolved.feet_bl_position = new geometry_msgs.msg.Vector3()
    }

    if (msg.feet_br_position !== undefined) {
      resolved.feet_br_position = geometry_msgs.msg.Vector3.Resolve(msg.feet_br_position)
    }
    else {
      resolved.feet_br_position = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = robot_state;
