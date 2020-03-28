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

let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetQuadcopterDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.quadcopter_name = null;
    }
    else {
      if (initObj.hasOwnProperty('quadcopter_name')) {
        this.quadcopter_name = initObj.quadcopter_name
      }
      else {
        this.quadcopter_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetQuadcopterDataRequest
    // Serialize message field [quadcopter_name]
    bufferOffset = _serializer.string(obj.quadcopter_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetQuadcopterDataRequest
    let len;
    let data = new GetQuadcopterDataRequest(null);
    // Deserialize message field [quadcopter_name]
    data.quadcopter_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.quadcopter_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulation_control/GetQuadcopterDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'feef7da8de7a859f1c884d77c36bb7e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string quadcopter_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetQuadcopterDataRequest(null);
    if (msg.quadcopter_name !== undefined) {
      resolved.quadcopter_name = msg.quadcopter_name;
    }
    else {
      resolved.quadcopter_name = ''
    }

    return resolved;
    }
};

class GetQuadcopterDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.imu = null;
      this.magnetic = null;
      this.sonar = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new sensor_msgs.msg.Imu();
      }
      if (initObj.hasOwnProperty('magnetic')) {
        this.magnetic = initObj.magnetic
      }
      else {
        this.magnetic = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('sonar')) {
        this.sonar = initObj.sonar
      }
      else {
        this.sonar = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetQuadcopterDataResponse
    // Serialize message field [state]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [imu]
    bufferOffset = sensor_msgs.msg.Imu.serialize(obj.imu, buffer, bufferOffset);
    // Serialize message field [magnetic]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.magnetic, buffer, bufferOffset);
    // Serialize message field [sonar]
    bufferOffset = _serializer.float32(obj.sonar, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetQuadcopterDataResponse
    let len;
    let data = new GetQuadcopterDataResponse(null);
    // Deserialize message field [state]
    data.state = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [imu]
    data.imu = sensor_msgs.msg.Imu.deserialize(buffer, bufferOffset);
    // Deserialize message field [magnetic]
    data.magnetic = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [sonar]
    data.sonar = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Imu.getMessageSize(object.imu);
    return length + 84;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulation_control/GetQuadcopterDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11c48fac5a9fde0bc6a969a66522b5e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose state
    sensor_msgs/Imu imu
    geometry_msgs/Vector3 magnetic
    float32 sonar
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: sensor_msgs/Imu
    # This is a message to hold data from an IMU (Inertial Measurement Unit)
    #
    # Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
    #
    # If the covariance of the measurement is known, it should be filled in (if all you know is the 
    # variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
    # A covariance matrix of all zeros will be interpreted as "covariance unknown", and to use the
    # data a covariance will have to be assumed or gotten from some other source
    #
    # If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
    # estimate), please set element 0 of the associated covariance matrix to -1
    # If you are interpreting this message, please check for a value of -1 in the first element of each 
    # covariance matrix, and disregard the associated estimate.
    
    Header header
    
    geometry_msgs/Quaternion orientation
    float64[9] orientation_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 angular_velocity
    float64[9] angular_velocity_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 linear_acceleration
    float64[9] linear_acceleration_covariance # Row major x, y z 
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new GetQuadcopterDataResponse(null);
    if (msg.state !== undefined) {
      resolved.state = geometry_msgs.msg.Pose.Resolve(msg.state)
    }
    else {
      resolved.state = new geometry_msgs.msg.Pose()
    }

    if (msg.imu !== undefined) {
      resolved.imu = sensor_msgs.msg.Imu.Resolve(msg.imu)
    }
    else {
      resolved.imu = new sensor_msgs.msg.Imu()
    }

    if (msg.magnetic !== undefined) {
      resolved.magnetic = geometry_msgs.msg.Vector3.Resolve(msg.magnetic)
    }
    else {
      resolved.magnetic = new geometry_msgs.msg.Vector3()
    }

    if (msg.sonar !== undefined) {
      resolved.sonar = msg.sonar;
    }
    else {
      resolved.sonar = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetQuadcopterDataRequest,
  Response: GetQuadcopterDataResponse,
  md5sum() { return 'bda7fb9bcb992692c1da67536514aeb3'; },
  datatype() { return 'simulation_control/GetQuadcopterData'; }
};
