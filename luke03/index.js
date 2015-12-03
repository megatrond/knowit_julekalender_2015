var fridays = 0;
var weekDay = 0;
var FRIDAY = 0;

for (var i = 1;i<=2015;i++) {
	var daysInYear = 365;
	// if (i % 4 === 0 && (i % 100 !== 0 || i % 400 === 0)) {
	// 	daysInYear++;
	// }
	for (var j = 0;j<daysInYear;j++) {
		if (weekDay === FRIDAY && j === 256) {
			// console.log('friday!');
			console.log(i, j);
			fridays++;
		}
		weekDay = (weekDay + 1) % 7;
	}
}

console.log(fridays);