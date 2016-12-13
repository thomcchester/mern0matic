var mongoose = require("mongoose");
var Schema = mongoose.Schema;
var Default_Values = new Schema({
	testVal: {type:Number},
});

module.exports = mongoose.model("Default_Values", Default_Values);
