// Auto-generated. Do not edit!

// (in-package NatRosPkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let device = require('./device.js');

//-----------------------------------------------------------

class devices {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nDevices = null;
      this.devices = null;
    }
    else {
      if (initObj.hasOwnProperty('nDevices')) {
        this.nDevices = initObj.nDevices
      }
      else {
        this.nDevices = 0;
      }
      if (initObj.hasOwnProperty('devices')) {
        this.devices = initObj.devices
      }
      else {
        this.devices = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type devices
    // Serialize message field [nDevices]
    bufferOffset = _serializer.int32(obj.nDevices, buffer, bufferOffset);
    // Serialize message field [devices]
    // Serialize the length for message field [devices]
    bufferOffset = _serializer.uint32(obj.devices.length, buffer, bufferOffset);
    obj.devices.forEach((val) => {
      bufferOffset = device.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type devices
    let len;
    let data = new devices(null);
    // Deserialize message field [nDevices]
    data.nDevices = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [devices]
    // Deserialize array length for message field [devices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.devices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.devices[i] = device.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.devices.forEach((val) => {
      length += device.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'NatRosPkg/devices';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08d9ab4027fd2d063225bde907f29977';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 nDevices
    device[] devices 
    ================================================================================
    MSG: NatRosPkg/device
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
    const resolved = new devices(null);
    if (msg.nDevices !== undefined) {
      resolved.nDevices = msg.nDevices;
    }
    else {
      resolved.nDevices = 0
    }

    if (msg.devices !== undefined) {
      resolved.devices = new Array(msg.devices.length);
      for (let i = 0; i < resolved.devices.length; ++i) {
        resolved.devices[i] = device.Resolve(msg.devices[i]);
      }
    }
    else {
      resolved.devices = []
    }

    return resolved;
    }
};

module.exports = devices;
