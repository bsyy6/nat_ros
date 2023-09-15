// Auto-generated. Do not edit!

// (in-package NatRosPkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let forcePlate = require('./forcePlate.js');

//-----------------------------------------------------------

class forcePlates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nForcePlates = null;
      this.forcePlates = null;
    }
    else {
      if (initObj.hasOwnProperty('nForcePlates')) {
        this.nForcePlates = initObj.nForcePlates
      }
      else {
        this.nForcePlates = 0;
      }
      if (initObj.hasOwnProperty('forcePlates')) {
        this.forcePlates = initObj.forcePlates
      }
      else {
        this.forcePlates = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type forcePlates
    // Serialize message field [nForcePlates]
    bufferOffset = _serializer.int32(obj.nForcePlates, buffer, bufferOffset);
    // Serialize message field [forcePlates]
    // Serialize the length for message field [forcePlates]
    bufferOffset = _serializer.uint32(obj.forcePlates.length, buffer, bufferOffset);
    obj.forcePlates.forEach((val) => {
      bufferOffset = forcePlate.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type forcePlates
    let len;
    let data = new forcePlates(null);
    // Deserialize message field [nForcePlates]
    data.nForcePlates = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [forcePlates]
    // Deserialize array length for message field [forcePlates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.forcePlates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.forcePlates[i] = forcePlate.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.forcePlates.forEach((val) => {
      length += forcePlate.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'NatRosPkg/forcePlates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6f3fd8a71f67b5c7a481fa68f4cea97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 nForcePlates
    forcePlate[] forcePlates
    ================================================================================
    MSG: NatRosPkg/forcePlate
    int32 id
    int32 nChannels 
    int32 params
    channel[] channels
    ================================================================================
    MSG: NatRosPkg/channel
    int32 nFrames
    float64[] Values
    bool isEmpty
    bool isPartial
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new forcePlates(null);
    if (msg.nForcePlates !== undefined) {
      resolved.nForcePlates = msg.nForcePlates;
    }
    else {
      resolved.nForcePlates = 0
    }

    if (msg.forcePlates !== undefined) {
      resolved.forcePlates = new Array(msg.forcePlates.length);
      for (let i = 0; i < resolved.forcePlates.length; ++i) {
        resolved.forcePlates[i] = forcePlate.Resolve(msg.forcePlates[i]);
      }
    }
    else {
      resolved.forcePlates = []
    }

    return resolved;
    }
};

module.exports = forcePlates;
