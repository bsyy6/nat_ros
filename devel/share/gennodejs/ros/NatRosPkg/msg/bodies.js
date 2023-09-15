// Auto-generated. Do not edit!

// (in-package NatRosPkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let body = require('./body.js');

//-----------------------------------------------------------

class bodies {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nBodies = null;
      this.bodies = null;
    }
    else {
      if (initObj.hasOwnProperty('nBodies')) {
        this.nBodies = initObj.nBodies
      }
      else {
        this.nBodies = 0;
      }
      if (initObj.hasOwnProperty('bodies')) {
        this.bodies = initObj.bodies
      }
      else {
        this.bodies = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bodies
    // Serialize message field [nBodies]
    bufferOffset = _serializer.uint8(obj.nBodies, buffer, bufferOffset);
    // Serialize message field [bodies]
    // Serialize the length for message field [bodies]
    bufferOffset = _serializer.uint32(obj.bodies.length, buffer, bufferOffset);
    obj.bodies.forEach((val) => {
      bufferOffset = body.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bodies
    let len;
    let data = new bodies(null);
    // Deserialize message field [nBodies]
    data.nBodies = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bodies]
    // Deserialize array length for message field [bodies]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bodies = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bodies[i] = body.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 71 * object.bodies.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'NatRosPkg/bodies';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11f3573350a1db22abb9f03f08ef9e79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header header
    uint8 nBodies
    body[] bodies
    
    
    
    ================================================================================
    MSG: NatRosPkg/body
    int32 id
    geometry_msgs/Pose pose
    float64 meanError
    bool isValid
    int16 params
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bodies(null);
    if (msg.nBodies !== undefined) {
      resolved.nBodies = msg.nBodies;
    }
    else {
      resolved.nBodies = 0
    }

    if (msg.bodies !== undefined) {
      resolved.bodies = new Array(msg.bodies.length);
      for (let i = 0; i < resolved.bodies.length; ++i) {
        resolved.bodies[i] = body.Resolve(msg.bodies[i]);
      }
    }
    else {
      resolved.bodies = []
    }

    return resolved;
    }
};

module.exports = bodies;
