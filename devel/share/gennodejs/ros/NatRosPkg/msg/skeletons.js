// Auto-generated. Do not edit!

// (in-package NatRosPkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let skeleton = require('./skeleton.js');

//-----------------------------------------------------------

class skeletons {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nSkeletons = null;
      this.skeletons = null;
    }
    else {
      if (initObj.hasOwnProperty('nSkeletons')) {
        this.nSkeletons = initObj.nSkeletons
      }
      else {
        this.nSkeletons = 0;
      }
      if (initObj.hasOwnProperty('skeletons')) {
        this.skeletons = initObj.skeletons
      }
      else {
        this.skeletons = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type skeletons
    // Serialize message field [nSkeletons]
    bufferOffset = _serializer.int32(obj.nSkeletons, buffer, bufferOffset);
    // Serialize message field [skeletons]
    // Serialize the length for message field [skeletons]
    bufferOffset = _serializer.uint32(obj.skeletons.length, buffer, bufferOffset);
    obj.skeletons.forEach((val) => {
      bufferOffset = skeleton.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type skeletons
    let len;
    let data = new skeletons(null);
    // Deserialize message field [nSkeletons]
    data.nSkeletons = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [skeletons]
    // Deserialize array length for message field [skeletons]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.skeletons = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.skeletons[i] = skeleton.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.skeletons.forEach((val) => {
      length += skeleton.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'NatRosPkg/skeletons';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '498018be8091f821b47e752d2a3c0e29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 nSkeletons
    skeleton[] skeletons
    ================================================================================
    MSG: NatRosPkg/skeleton
    string name
    int32 ID
    int32 nRigidBodies
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
    const resolved = new skeletons(null);
    if (msg.nSkeletons !== undefined) {
      resolved.nSkeletons = msg.nSkeletons;
    }
    else {
      resolved.nSkeletons = 0
    }

    if (msg.skeletons !== undefined) {
      resolved.skeletons = new Array(msg.skeletons.length);
      for (let i = 0; i < resolved.skeletons.length; ++i) {
        resolved.skeletons[i] = skeleton.Resolve(msg.skeletons[i]);
      }
    }
    else {
      resolved.skeletons = []
    }

    return resolved;
    }
};

module.exports = skeletons;
