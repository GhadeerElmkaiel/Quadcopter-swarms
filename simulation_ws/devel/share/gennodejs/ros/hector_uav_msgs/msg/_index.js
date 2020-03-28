
"use strict";

let MotorCommand = require('./MotorCommand.js');
let RawImu = require('./RawImu.js');
let Compass = require('./Compass.js');
let RuddersCommand = require('./RuddersCommand.js');
let AttitudeCommand = require('./AttitudeCommand.js');
let ControllerState = require('./ControllerState.js');
let VelocityXYCommand = require('./VelocityXYCommand.js');
let RawMagnetic = require('./RawMagnetic.js');
let MotorPWM = require('./MotorPWM.js');
let ServoCommand = require('./ServoCommand.js');
let RawRC = require('./RawRC.js');
let RC = require('./RC.js');
let VelocityZCommand = require('./VelocityZCommand.js');
let Altimeter = require('./Altimeter.js');
let MotorStatus = require('./MotorStatus.js');
let HeightCommand = require('./HeightCommand.js');
let YawrateCommand = require('./YawrateCommand.js');
let Supply = require('./Supply.js');
let ThrustCommand = require('./ThrustCommand.js');
let PositionXYCommand = require('./PositionXYCommand.js');
let HeadingCommand = require('./HeadingCommand.js');

module.exports = {
  MotorCommand: MotorCommand,
  RawImu: RawImu,
  Compass: Compass,
  RuddersCommand: RuddersCommand,
  AttitudeCommand: AttitudeCommand,
  ControllerState: ControllerState,
  VelocityXYCommand: VelocityXYCommand,
  RawMagnetic: RawMagnetic,
  MotorPWM: MotorPWM,
  ServoCommand: ServoCommand,
  RawRC: RawRC,
  RC: RC,
  VelocityZCommand: VelocityZCommand,
  Altimeter: Altimeter,
  MotorStatus: MotorStatus,
  HeightCommand: HeightCommand,
  YawrateCommand: YawrateCommand,
  Supply: Supply,
  ThrustCommand: ThrustCommand,
  PositionXYCommand: PositionXYCommand,
  HeadingCommand: HeadingCommand,
};
