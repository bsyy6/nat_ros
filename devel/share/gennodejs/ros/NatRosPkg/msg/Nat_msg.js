// Auto-generated. Do not edit!

// (in-package NatRosPkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let markers = require('./markers.js');
let bodies = require('./bodies.js');
let skeletons = require('./skeletons.js');
let devices = require('./devices.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Nat_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Nat_server_systemLatencyMillisec = null;
      this.Nat_server_clientLatencyMillisec = null;
      this.Nat_server_transitLatencyMillisec = null;
      this.Nat_server_timeStamp = null;
      this.Nat_server_timeCode = null;
      this.Nat_server_frameID = null;
      this.markers = null;
      this.bodies = null;
      this.skeletons = null;
      this.devices = null;
      this.forcePlates = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Nat_server_systemLatencyMillisec')) {
        this.Nat_server_systemLatencyMillisec = initObj.Nat_server_systemLatencyMillisec
      }
      else {
        this.Nat_server_systemLatencyMillisec = 0.0;
      }
      if (initObj.hasOwnProperty('Nat_server_clientLatencyMillisec')) {
        this.Nat_server_clientLatencyMillisec = initObj.Nat_server_clientLatencyMillisec
      }
      else {
        this.Nat_server_clientLatencyMillisec = 0.0;
      }
      if (initObj.hasOwnProperty('Nat_server_transitLatencyMillisec')) {
        this.Nat_server_transitLatencyMillisec = initObj.Nat_server_transitLatencyMillisec
      }
      else {
        this.Nat_server_transitLatencyMillisec = 0.0;
      }
      if (initObj.hasOwnProperty('Nat_server_timeStamp')) {
        this.Nat_server_timeStamp = initObj.Nat_server_timeStamp
      }
      else {
        this.Nat_server_timeStamp = 0.0;
      }
      if (initObj.hasOwnProperty('Nat_server_timeCode')) {
        this.Nat_server_timeCode = initObj.Nat_server_timeCode
      }
      else {
        this.Nat_server_timeCode = '';
      }
      if (initObj.hasOwnProperty('Nat_server_frameID')) {
        this.Nat_server_frameID = initObj.Nat_server_frameID
      }
      else {
        this.Nat_server_frameID = 0;
      }
      if (initObj.hasOwnProperty('markers')) {
        this.markers = initObj.markers
      }
      else {
        this.markers = new markers();
      }
      if (initObj.hasOwnProperty('bodies')) {
        this.bodies = initObj.bodies
      }
      else {
        this.bodies = new bodies();
      }
      if (initObj.hasOwnProperty('skeletons')) {
        this.skeletons = initObj.skeletons
      }
      else {
        this.skeletons = new skeletons();
      }
      if (initObj.hasOwnProperty('devices')) {
        this.devices = initObj.devices
      }
      else {
        this.devices = new devices();
      }
      if (initObj.hasOwnProperty('forcePlates')) {
        this.forcePlates = initObj.forcePlates
      }
      else {
        this.forcePlates = new devices();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Nat_msg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Nat_server_systemLatencyMillisec]
    bufferOffset = _serializer.float64(obj.Nat_server_systemLatencyMillisec, buffer, bufferOffset);
    // Serialize message field [Nat_server_clientLatencyMillisec]
    bufferOffset = _serializer.float64(obj.Nat_server_clientLatencyMillisec, buffer, bufferOffset);
    // Serialize message field [Nat_server_transitLatencyMillisec]
    bufferOffset = _serializer.float64(obj.Nat_server_transitLatencyMillisec, buffer, bufferOffset);
    // Serialize message field [Nat_server_timeStamp]
    bufferOffset = _serializer.float64(obj.Nat_server_timeStamp, buffer, bufferOffset);
    // Serialize message field [Nat_server_timeCode]
    bufferOffset = _serializer.string(obj.Nat_server_timeCode, buffer, bufferOffset);
    // Serialize message field [Nat_server_frameID]
    bufferOffset = _serializer.int32(obj.Nat_server_frameID, buffer, bufferOffset);
    // Serialize message field [markers]
    bufferOffset = markers.serialize(obj.markers, buffer, bufferOffset);
    // Serialize message field [bodies]
    bufferOffset = bodies.serialize(obj.bodies, buffer, bufferOffset);
    // Serialize message field [skeletons]
    bufferOffset = skeletons.serialize(obj.skeletons, buffer, bufferOffset);
    // Serialize message field [devices]
    bufferOffset = devices.serialize(obj.devices, buffer, bufferOffset);
    // Serialize message field [forcePlates]
    bufferOffset = devices.serialize(obj.forcePlates, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Nat_msg
    let len;
    let data = new Nat_msg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Nat_server_systemLatencyMillisec]
    data.Nat_server_systemLatencyMillisec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Nat_server_clientLatencyMillisec]
    data.Nat_server_clientLatencyMillisec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Nat_server_transitLatencyMillisec]
    data.Nat_server_transitLatencyMillisec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Nat_server_timeStamp]
    data.Nat_server_timeStamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Nat_server_timeCode]
    data.Nat_server_timeCode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Nat_server_frameID]
    data.Nat_server_frameID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [markers]
    data.markers = markers.deserialize(buffer, bufferOffset);
    // Deserialize message field [bodies]
    data.bodies = bodies.deserialize(buffer, bufferOffset);
    // Deserialize message field [skeletons]
    data.skeletons = skeletons.deserialize(buffer, bufferOffset);
    // Deserialize message field [devices]
    data.devices = devices.deserialize(buffer, bufferOffset);
    // Deserialize message field [forcePlates]
    data.forcePlates = devices.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.Nat_server_timeCode);
    length += markers.getMessageSize(object.markers);
    length += bodies.getMessageSize(object.bodies);
    length += skeletons.getMessageSize(object.skeletons);
    length += devices.getMessageSize(object.devices);
    length += devices.getMessageSize(object.forcePlates);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'NatRosPkg/Nat_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9aee2c807a0b367d51433da0cfa4687e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 Nat_server_systemLatencyMillisec
    float64 Nat_server_clientLatencyMillisec
    float64 Nat_server_transitLatencyMillisec
    
    float64 Nat_server_timeStamp
    string Nat_server_timeCode
    
    int32 Nat_server_frameID
    
    markers markers
    bodies bodies
    skeletons skeletons
    devices devices
    devices forcePlates
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
    MSG: NatRosPkg/markers
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
    
    ================================================================================
    MSG: NatRosPkg/bodies
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: NatRosPkg/skeletons
    int32 nSkeletons
    skeleton[] skeletons
    ================================================================================
    MSG: NatRosPkg/skeleton
    string name
    int32 ID
    int32 nRigidBodies
    body[] bodies
    ================================================================================
    MSG: NatRosPkg/devices
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
    const resolved = new Nat_msg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Nat_server_systemLatencyMillisec !== undefined) {
      resolved.Nat_server_systemLatencyMillisec = msg.Nat_server_systemLatencyMillisec;
    }
    else {
      resolved.Nat_server_systemLatencyMillisec = 0.0
    }

    if (msg.Nat_server_clientLatencyMillisec !== undefined) {
      resolved.Nat_server_clientLatencyMillisec = msg.Nat_server_clientLatencyMillisec;
    }
    else {
      resolved.Nat_server_clientLatencyMillisec = 0.0
    }

    if (msg.Nat_server_transitLatencyMillisec !== undefined) {
      resolved.Nat_server_transitLatencyMillisec = msg.Nat_server_transitLatencyMillisec;
    }
    else {
      resolved.Nat_server_transitLatencyMillisec = 0.0
    }

    if (msg.Nat_server_timeStamp !== undefined) {
      resolved.Nat_server_timeStamp = msg.Nat_server_timeStamp;
    }
    else {
      resolved.Nat_server_timeStamp = 0.0
    }

    if (msg.Nat_server_timeCode !== undefined) {
      resolved.Nat_server_timeCode = msg.Nat_server_timeCode;
    }
    else {
      resolved.Nat_server_timeCode = ''
    }

    if (msg.Nat_server_frameID !== undefined) {
      resolved.Nat_server_frameID = msg.Nat_server_frameID;
    }
    else {
      resolved.Nat_server_frameID = 0
    }

    if (msg.markers !== undefined) {
      resolved.markers = markers.Resolve(msg.markers)
    }
    else {
      resolved.markers = new markers()
    }

    if (msg.bodies !== undefined) {
      resolved.bodies = bodies.Resolve(msg.bodies)
    }
    else {
      resolved.bodies = new bodies()
    }

    if (msg.skeletons !== undefined) {
      resolved.skeletons = skeletons.Resolve(msg.skeletons)
    }
    else {
      resolved.skeletons = new skeletons()
    }

    if (msg.devices !== undefined) {
      resolved.devices = devices.Resolve(msg.devices)
    }
    else {
      resolved.devices = new devices()
    }

    if (msg.forcePlates !== undefined) {
      resolved.forcePlates = devices.Resolve(msg.forcePlates)
    }
    else {
      resolved.forcePlates = new devices()
    }

    return resolved;
    }
};

module.exports = Nat_msg;
