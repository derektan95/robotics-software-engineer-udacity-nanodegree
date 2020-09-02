
"use strict";

let GetMap = require('./GetMap.js')
let ListLabels = require('./ListLabels.js')
let GetNodeData = require('./GetNodeData.js')
let AddLink = require('./AddLink.js')
let ResetPose = require('./ResetPose.js')
let SetLabel = require('./SetLabel.js')
let PublishMap = require('./PublishMap.js')
let GetMap2 = require('./GetMap2.js')
let SetGoal = require('./SetGoal.js')
let GetPlan = require('./GetPlan.js')

module.exports = {
  GetMap: GetMap,
  ListLabels: ListLabels,
  GetNodeData: GetNodeData,
  AddLink: AddLink,
  ResetPose: ResetPose,
  SetLabel: SetLabel,
  PublishMap: PublishMap,
  GetMap2: GetMap2,
  SetGoal: SetGoal,
  GetPlan: GetPlan,
};
