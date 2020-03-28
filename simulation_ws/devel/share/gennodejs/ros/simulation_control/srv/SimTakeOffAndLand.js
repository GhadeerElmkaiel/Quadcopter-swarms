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

class SimTakeOffAndLandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.models_prefixs = null;
    }
    else {
      if (initObj.hasOwnProperty('models_prefixs')) {
        this.models_prefixs = initObj.models_prefixs
      }
      else {
        this.models_prefixs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimTakeOffAndLandRequest
    // Serialize message field [models_prefixs]
    bufferOffset = _arraySerializer.string(obj.models_prefixs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimTakeOffAndLandRequest
    let len;
    let data = new SimTakeOffAndLandRequest(null);
    // Deserialize message field [models_prefixs]
    data.models_prefixs = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.models_prefixs.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulation_control/SimTakeOffAndLandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05a98b9b216be82ed5a9ff071217958d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] models_prefixs
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimTakeOffAndLandRequest(null);
    if (msg.models_prefixs !== undefined) {
      resolved.models_prefixs = msg.models_prefixs;
    }
    else {
      resolved.models_prefixs = []
    }

    return resolved;
    }
};

class SimTakeOffAndLandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimTakeOffAndLandResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimTakeOffAndLandResponse
    let len;
    let data = new SimTakeOffAndLandResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulation_control/SimTakeOffAndLandResponse';
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
    const resolved = new SimTakeOffAndLandResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SimTakeOffAndLandRequest,
  Response: SimTakeOffAndLandResponse,
  md5sum() { return '05a98b9b216be82ed5a9ff071217958d'; },
  datatype() { return 'simulation_control/SimTakeOffAndLand'; }
};
