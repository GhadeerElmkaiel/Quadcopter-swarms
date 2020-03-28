// Auto-generated. Do not edit!

// (in-package simulation_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TakeOffAndLandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_prefix = null;
    }
    else {
      if (initObj.hasOwnProperty('model_prefix')) {
        this.model_prefix = initObj.model_prefix
      }
      else {
        this.model_prefix = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TakeOffAndLandRequest
    // Serialize message field [model_prefix]
    bufferOffset = _serializer.string(obj.model_prefix, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TakeOffAndLandRequest
    let len;
    let data = new TakeOffAndLandRequest(null);
    // Deserialize message field [model_prefix]
    data.model_prefix = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.model_prefix.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulation_control/TakeOffAndLandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '318f069335e84d20f7af479a87c22959';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string model_prefix
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TakeOffAndLandRequest(null);
    if (msg.model_prefix !== undefined) {
      resolved.model_prefix = msg.model_prefix;
    }
    else {
      resolved.model_prefix = ''
    }

    return resolved;
    }
};

class TakeOffAndLandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TakeOffAndLandResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TakeOffAndLandResponse
    let len;
    let data = new TakeOffAndLandResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulation_control/TakeOffAndLandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TakeOffAndLandResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: TakeOffAndLandRequest,
  Response: TakeOffAndLandResponse,
  md5sum() { return '318f069335e84d20f7af479a87c22959'; },
  datatype() { return 'simulation_control/TakeOffAndLand'; }
};
