// Auto-generated. Do not edit!

// (in-package NatRosPkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let marker = require('./marker.js');

//-----------------------------------------------------------

class markers {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nMarkers = null;
      this.markers = null;
    }
    else {
      if (initObj.hasOwnProperty('nMarkers')) {
        this.nMarkers = initObj.nMarkers
      }
      else {
        this.nMarkers = 0;
      }
      if (initObj.hasOwnProperty('markers')) {
        this.markers = initObj.markers
      }
      else {
        this.markers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type markers
    // Serialize message field [nMarkers]
    bufferOffset = _serializer.int32(obj.nMarkers, buffer, bufferOffset);
    // Serialize message field [markers]
    // Serialize the length for message field [markers]
    bufferOffset = _serializer.uint32(obj.markers.length, buffer, bufferOffset);
    obj.markers.forEach((val) => {
      bufferOffset = marker.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type markers
    let len;
    let data = new markers(null);
    // Deserialize message field [nMarkers]
    data.nMarkers = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [markers]
    // Deserialize array length for message field [markers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.markers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.markers[i] = marker.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.markers.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'NatRosPkg/markers';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1ca0ae52443593a08f786db6e001040';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 nMarkers
    marker[] markers
    ================================================================================
    MSG: NatRosPkg/marker
    int32 ID
    int32 modelID
    geometry_msgs/Point position
    float64 size
    int16 params
    float64 residual
    
    
    bool oclluded 
    bool PCSolved 
    bool ModelSolved 
    bool HasModel 
    bool Unlabled 
    bool ActiveMarker 
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
    const resolved = new markers(null);
    if (msg.nMarkers !== undefined) {
      resolved.nMarkers = msg.nMarkers;
    }
    else {
      resolved.nMarkers = 0
    }

    if (msg.markers !== undefined) {
      resolved.markers = new Array(msg.markers.length);
      for (let i = 0; i < resolved.markers.length; ++i) {
        resolved.markers[i] = marker.Resolve(msg.markers[i]);
      }
    }
    else {
      resolved.markers = []
    }

    return resolved;
    }
};

module.exports = markers;
