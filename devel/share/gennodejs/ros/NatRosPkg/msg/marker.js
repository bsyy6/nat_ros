// Auto-generated. Do not edit!

// (in-package NatRosPkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class marker {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID = null;
      this.modelID = null;
      this.position = null;
      this.size = null;
      this.params = null;
      this.residual = null;
      this.oclluded = null;
      this.PCSolved = null;
      this.ModelSolved = null;
      this.HasModel = null;
      this.Unlabled = null;
      this.ActiveMarker = null;
    }
    else {
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('modelID')) {
        this.modelID = initObj.modelID
      }
      else {
        this.modelID = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0.0;
      }
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = 0;
      }
      if (initObj.hasOwnProperty('residual')) {
        this.residual = initObj.residual
      }
      else {
        this.residual = 0.0;
      }
      if (initObj.hasOwnProperty('oclluded')) {
        this.oclluded = initObj.oclluded
      }
      else {
        this.oclluded = false;
      }
      if (initObj.hasOwnProperty('PCSolved')) {
        this.PCSolved = initObj.PCSolved
      }
      else {
        this.PCSolved = false;
      }
      if (initObj.hasOwnProperty('ModelSolved')) {
        this.ModelSolved = initObj.ModelSolved
      }
      else {
        this.ModelSolved = false;
      }
      if (initObj.hasOwnProperty('HasModel')) {
        this.HasModel = initObj.HasModel
      }
      else {
        this.HasModel = false;
      }
      if (initObj.hasOwnProperty('Unlabled')) {
        this.Unlabled = initObj.Unlabled
      }
      else {
        this.Unlabled = false;
      }
      if (initObj.hasOwnProperty('ActiveMarker')) {
        this.ActiveMarker = initObj.ActiveMarker
      }
      else {
        this.ActiveMarker = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type marker
    // Serialize message field [ID]
    bufferOffset = _serializer.int32(obj.ID, buffer, bufferOffset);
    // Serialize message field [modelID]
    bufferOffset = _serializer.int32(obj.modelID, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.float64(obj.size, buffer, bufferOffset);
    // Serialize message field [params]
    bufferOffset = _serializer.int16(obj.params, buffer, bufferOffset);
    // Serialize message field [residual]
    bufferOffset = _serializer.float64(obj.residual, buffer, bufferOffset);
    // Serialize message field [oclluded]
    bufferOffset = _serializer.bool(obj.oclluded, buffer, bufferOffset);
    // Serialize message field [PCSolved]
    bufferOffset = _serializer.bool(obj.PCSolved, buffer, bufferOffset);
    // Serialize message field [ModelSolved]
    bufferOffset = _serializer.bool(obj.ModelSolved, buffer, bufferOffset);
    // Serialize message field [HasModel]
    bufferOffset = _serializer.bool(obj.HasModel, buffer, bufferOffset);
    // Serialize message field [Unlabled]
    bufferOffset = _serializer.bool(obj.Unlabled, buffer, bufferOffset);
    // Serialize message field [ActiveMarker]
    bufferOffset = _serializer.bool(obj.ActiveMarker, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type marker
    let len;
    let data = new marker(null);
    // Deserialize message field [ID]
    data.ID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [modelID]
    data.modelID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [params]
    data.params = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [residual]
    data.residual = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [oclluded]
    data.oclluded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PCSolved]
    data.PCSolved = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ModelSolved]
    data.ModelSolved = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [HasModel]
    data.HasModel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Unlabled]
    data.Unlabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ActiveMarker]
    data.ActiveMarker = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'NatRosPkg/marker';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cc80e06d1d63fc9aa98d6e8f0d4490d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new marker(null);
    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.modelID !== undefined) {
      resolved.modelID = msg.modelID;
    }
    else {
      resolved.modelID = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0.0
    }

    if (msg.params !== undefined) {
      resolved.params = msg.params;
    }
    else {
      resolved.params = 0
    }

    if (msg.residual !== undefined) {
      resolved.residual = msg.residual;
    }
    else {
      resolved.residual = 0.0
    }

    if (msg.oclluded !== undefined) {
      resolved.oclluded = msg.oclluded;
    }
    else {
      resolved.oclluded = false
    }

    if (msg.PCSolved !== undefined) {
      resolved.PCSolved = msg.PCSolved;
    }
    else {
      resolved.PCSolved = false
    }

    if (msg.ModelSolved !== undefined) {
      resolved.ModelSolved = msg.ModelSolved;
    }
    else {
      resolved.ModelSolved = false
    }

    if (msg.HasModel !== undefined) {
      resolved.HasModel = msg.HasModel;
    }
    else {
      resolved.HasModel = false
    }

    if (msg.Unlabled !== undefined) {
      resolved.Unlabled = msg.Unlabled;
    }
    else {
      resolved.Unlabled = false
    }

    if (msg.ActiveMarker !== undefined) {
      resolved.ActiveMarker = msg.ActiveMarker;
    }
    else {
      resolved.ActiveMarker = false
    }

    return resolved;
    }
};

module.exports = marker;
