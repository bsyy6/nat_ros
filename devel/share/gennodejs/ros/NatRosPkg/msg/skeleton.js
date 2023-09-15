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

class skeleton {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.ID = null;
      this.nRigidBodies = null;
      this.bodies = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('nRigidBodies')) {
        this.nRigidBodies = initObj.nRigidBodies
      }
      else {
        this.nRigidBodies = 0;
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
    // Serializes a message object of type skeleton
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.int32(obj.ID, buffer, bufferOffset);
    // Serialize message field [nRigidBodies]
    bufferOffset = _serializer.int32(obj.nRigidBodies, buffer, bufferOffset);
    // Serialize message field [bodies]
    // Serialize the length for message field [bodies]
    bufferOffset = _serializer.uint32(obj.bodies.length, buffer, bufferOffset);
    obj.bodies.forEach((val) => {
      bufferOffset = body.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type skeleton
    let len;
    let data = new skeleton(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nRigidBodies]
    data.nRigidBodies = _deserializer.int32(buffer, bufferOffset);
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
    length += _getByteLength(object.name);
    length += 71 * object.bodies.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'NatRosPkg/skeleton';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73a2dfd70dd6f12dc399c5f89d405659';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new skeleton(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.nRigidBodies !== undefined) {
      resolved.nRigidBodies = msg.nRigidBodies;
    }
    else {
      resolved.nRigidBodies = 0
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

module.exports = skeleton;
