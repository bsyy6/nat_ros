// Auto-generated. Do not edit!

// (in-package NatRosPkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class channel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nFrames = null;
      this.Values = null;
      this.isEmpty = null;
      this.isPartial = null;
    }
    else {
      if (initObj.hasOwnProperty('nFrames')) {
        this.nFrames = initObj.nFrames
      }
      else {
        this.nFrames = 0;
      }
      if (initObj.hasOwnProperty('Values')) {
        this.Values = initObj.Values
      }
      else {
        this.Values = [];
      }
      if (initObj.hasOwnProperty('isEmpty')) {
        this.isEmpty = initObj.isEmpty
      }
      else {
        this.isEmpty = false;
      }
      if (initObj.hasOwnProperty('isPartial')) {
        this.isPartial = initObj.isPartial
      }
      else {
        this.isPartial = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type channel
    // Serialize message field [nFrames]
    bufferOffset = _serializer.int32(obj.nFrames, buffer, bufferOffset);
    // Serialize message field [Values]
    bufferOffset = _arraySerializer.float64(obj.Values, buffer, bufferOffset, null);
    // Serialize message field [isEmpty]
    bufferOffset = _serializer.bool(obj.isEmpty, buffer, bufferOffset);
    // Serialize message field [isPartial]
    bufferOffset = _serializer.bool(obj.isPartial, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type channel
    let len;
    let data = new channel(null);
    // Deserialize message field [nFrames]
    data.nFrames = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Values]
    data.Values = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [isEmpty]
    data.isEmpty = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isPartial]
    data.isPartial = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.Values.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'NatRosPkg/channel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fa6a6187541c2c904521c296745a24b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new channel(null);
    if (msg.nFrames !== undefined) {
      resolved.nFrames = msg.nFrames;
    }
    else {
      resolved.nFrames = 0
    }

    if (msg.Values !== undefined) {
      resolved.Values = msg.Values;
    }
    else {
      resolved.Values = []
    }

    if (msg.isEmpty !== undefined) {
      resolved.isEmpty = msg.isEmpty;
    }
    else {
      resolved.isEmpty = false
    }

    if (msg.isPartial !== undefined) {
      resolved.isPartial = msg.isPartial;
    }
    else {
      resolved.isPartial = false
    }

    return resolved;
    }
};

module.exports = channel;
