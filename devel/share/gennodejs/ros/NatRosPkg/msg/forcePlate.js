// Auto-generated. Do not edit!

// (in-package NatRosPkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let channel = require('./channel.js');

//-----------------------------------------------------------

class forcePlate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.nChannels = null;
      this.params = null;
      this.channels = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('nChannels')) {
        this.nChannels = initObj.nChannels
      }
      else {
        this.nChannels = 0;
      }
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = 0;
      }
      if (initObj.hasOwnProperty('channels')) {
        this.channels = initObj.channels
      }
      else {
        this.channels = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type forcePlate
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [nChannels]
    bufferOffset = _serializer.int32(obj.nChannels, buffer, bufferOffset);
    // Serialize message field [params]
    bufferOffset = _serializer.int16(obj.params, buffer, bufferOffset);
    // Serialize message field [channels]
    // Serialize the length for message field [channels]
    bufferOffset = _serializer.uint32(obj.channels.length, buffer, bufferOffset);
    obj.channels.forEach((val) => {
      bufferOffset = channel.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type forcePlate
    let len;
    let data = new forcePlate(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nChannels]
    data.nChannels = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [params]
    data.params = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [channels]
    // Deserialize array length for message field [channels]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.channels = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.channels[i] = channel.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.channels.forEach((val) => {
      length += channel.getMessageSize(val);
    });
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'NatRosPkg/forcePlate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78b6575faa3bd78870aadb6231f51303';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    int32 nChannels 
    int16 params
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
    const resolved = new forcePlate(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.nChannels !== undefined) {
      resolved.nChannels = msg.nChannels;
    }
    else {
      resolved.nChannels = 0
    }

    if (msg.params !== undefined) {
      resolved.params = msg.params;
    }
    else {
      resolved.params = 0
    }

    if (msg.channels !== undefined) {
      resolved.channels = new Array(msg.channels.length);
      for (let i = 0; i < resolved.channels.length; ++i) {
        resolved.channels[i] = channel.Resolve(msg.channels[i]);
      }
    }
    else {
      resolved.channels = []
    }

    return resolved;
    }
};

module.exports = forcePlate;
