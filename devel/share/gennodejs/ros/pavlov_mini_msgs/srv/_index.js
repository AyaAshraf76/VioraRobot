
"use strict";

let set_face = require('./set_face.js')
let set_motor_calibration = require('./set_motor_calibration.js')
let connect_servos = require('./connect_servos.js')
let set_gait = require('./set_gait.js')

module.exports = {
  set_face: set_face,
  set_motor_calibration: set_motor_calibration,
  connect_servos: connect_servos,
  set_gait: set_gait,
};
