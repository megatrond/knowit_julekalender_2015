var data = require('./data/luke01.js');

var regex = new RegExp("^[a-z]{0,3}[0-9]{2,8}[A-Z]{3,}$");

var count = data.reduce((curr, string) => {
	if (regex.test(string)) {
		return curr + 1;
	}
	return curr;
}, 0)

console.log(count);