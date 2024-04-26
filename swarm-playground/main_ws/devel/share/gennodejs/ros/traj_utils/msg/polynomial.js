// Auto-generated. Do not edit!

// (in-package traj_utils.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class polynomial {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drone_id = null;
      this.traj_id = null;
      this.start_time = null;
      this.totalDuration = null;
      this.pieceNum = null;
      this.order = null;
      this.Duration = null;
      this.Xcoeff = null;
      this.Ycoeff = null;
      this.Zcoeff = null;
      this.captured = null;
    }
    else {
      if (initObj.hasOwnProperty('drone_id')) {
        this.drone_id = initObj.drone_id
      }
      else {
        this.drone_id = 0;
      }
      if (initObj.hasOwnProperty('traj_id')) {
        this.traj_id = initObj.traj_id
      }
      else {
        this.traj_id = 0;
      }
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('totalDuration')) {
        this.totalDuration = initObj.totalDuration
      }
      else {
        this.totalDuration = 0.0;
      }
      if (initObj.hasOwnProperty('pieceNum')) {
        this.pieceNum = initObj.pieceNum
      }
      else {
        this.pieceNum = 0;
      }
      if (initObj.hasOwnProperty('order')) {
        this.order = initObj.order
      }
      else {
        this.order = 0;
      }
      if (initObj.hasOwnProperty('Duration')) {
        this.Duration = initObj.Duration
      }
      else {
        this.Duration = [];
      }
      if (initObj.hasOwnProperty('Xcoeff')) {
        this.Xcoeff = initObj.Xcoeff
      }
      else {
        this.Xcoeff = [];
      }
      if (initObj.hasOwnProperty('Ycoeff')) {
        this.Ycoeff = initObj.Ycoeff
      }
      else {
        this.Ycoeff = [];
      }
      if (initObj.hasOwnProperty('Zcoeff')) {
        this.Zcoeff = initObj.Zcoeff
      }
      else {
        this.Zcoeff = [];
      }
      if (initObj.hasOwnProperty('captured')) {
        this.captured = initObj.captured
      }
      else {
        this.captured = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type polynomial
    // Serialize message field [drone_id]
    bufferOffset = _serializer.int16(obj.drone_id, buffer, bufferOffset);
    // Serialize message field [traj_id]
    bufferOffset = _serializer.int32(obj.traj_id, buffer, bufferOffset);
    // Serialize message field [start_time]
    bufferOffset = _serializer.time(obj.start_time, buffer, bufferOffset);
    // Serialize message field [totalDuration]
    bufferOffset = _serializer.float64(obj.totalDuration, buffer, bufferOffset);
    // Serialize message field [pieceNum]
    bufferOffset = _serializer.int16(obj.pieceNum, buffer, bufferOffset);
    // Serialize message field [order]
    bufferOffset = _serializer.uint8(obj.order, buffer, bufferOffset);
    // Serialize message field [Duration]
    bufferOffset = _arraySerializer.float64(obj.Duration, buffer, bufferOffset, null);
    // Serialize message field [Xcoeff]
    bufferOffset = _arraySerializer.float64(obj.Xcoeff, buffer, bufferOffset, null);
    // Serialize message field [Ycoeff]
    bufferOffset = _arraySerializer.float64(obj.Ycoeff, buffer, bufferOffset, null);
    // Serialize message field [Zcoeff]
    bufferOffset = _arraySerializer.float64(obj.Zcoeff, buffer, bufferOffset, null);
    // Serialize message field [captured]
    bufferOffset = _serializer.bool(obj.captured, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type polynomial
    let len;
    let data = new polynomial(null);
    // Deserialize message field [drone_id]
    data.drone_id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [traj_id]
    data.traj_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start_time]
    data.start_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [totalDuration]
    data.totalDuration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pieceNum]
    data.pieceNum = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [order]
    data.order = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Duration]
    data.Duration = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [Xcoeff]
    data.Xcoeff = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [Ycoeff]
    data.Ycoeff = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [Zcoeff]
    data.Zcoeff = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [captured]
    data.captured = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.Duration.length;
    length += 8 * object.Xcoeff.length;
    length += 8 * object.Ycoeff.length;
    length += 8 * object.Zcoeff.length;
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'traj_utils/polynomial';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc5028b9e68e7966d83027aa556694ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 drone_id
    int32 traj_id
    time start_time
    float64 totalDuration
    int16 pieceNum
    uint8 order
    float64[] Duration
    float64[] Xcoeff
    float64[] Ycoeff
    float64[] Zcoeff
    bool captured
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new polynomial(null);
    if (msg.drone_id !== undefined) {
      resolved.drone_id = msg.drone_id;
    }
    else {
      resolved.drone_id = 0
    }

    if (msg.traj_id !== undefined) {
      resolved.traj_id = msg.traj_id;
    }
    else {
      resolved.traj_id = 0
    }

    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = {secs: 0, nsecs: 0}
    }

    if (msg.totalDuration !== undefined) {
      resolved.totalDuration = msg.totalDuration;
    }
    else {
      resolved.totalDuration = 0.0
    }

    if (msg.pieceNum !== undefined) {
      resolved.pieceNum = msg.pieceNum;
    }
    else {
      resolved.pieceNum = 0
    }

    if (msg.order !== undefined) {
      resolved.order = msg.order;
    }
    else {
      resolved.order = 0
    }

    if (msg.Duration !== undefined) {
      resolved.Duration = msg.Duration;
    }
    else {
      resolved.Duration = []
    }

    if (msg.Xcoeff !== undefined) {
      resolved.Xcoeff = msg.Xcoeff;
    }
    else {
      resolved.Xcoeff = []
    }

    if (msg.Ycoeff !== undefined) {
      resolved.Ycoeff = msg.Ycoeff;
    }
    else {
      resolved.Ycoeff = []
    }

    if (msg.Zcoeff !== undefined) {
      resolved.Zcoeff = msg.Zcoeff;
    }
    else {
      resolved.Zcoeff = []
    }

    if (msg.captured !== undefined) {
      resolved.captured = msg.captured;
    }
    else {
      resolved.captured = false
    }

    return resolved;
    }
};

module.exports = polynomial;
