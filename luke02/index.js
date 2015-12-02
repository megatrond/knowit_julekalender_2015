"use strict;"
var data = require('./data/luke02');

var result = data.reduce((curr, now) => {
	var low = curr.low;
	var high = curr.high;
	var diff = curr.diff;
	if (now < low) {
		low = now;
		high = now;
	}
	if (now > high) {
		high = now;
		diff = Math.max(diff, high - low);
	}
	return {
		low: low,
		high: high,
		diff: diff
	}
}, {low: Infinity, high: 0, diff: 0});

console.log(result.diff);