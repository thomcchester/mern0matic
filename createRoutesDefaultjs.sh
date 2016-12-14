#!/bin/bash

cat >./$@/routes/default.js <<EOL
var express = require('express');
var router = express.Router();
var Default = require("../models/default.js");

router.route('/')
	.get(function(req,res){
		Default.find(function(err, defaults){
			if(err){console.log(err);}
			res.send(defaults);
		});
	})
	.post(function(req,res){
		var defaults = new Default({
			testVal:10001
		});
		defaults.save(function(err,defaults){
			if(err) console.log(err);
			res.send(defaults);
		})
	});


module.exports = router;

EOL

cat ./$@/routes/default.js
