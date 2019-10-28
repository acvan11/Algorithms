/*
["50", "40", "Aaron"] 
*/

var convertStringArrayToIntArray = function(arr) {
	var result = [];
	for (var i = 0; i < arr.length; i++) {
		if (!isNaN(arr[i])) {
			var num = parseInt(arr[i]);
			result.push(num);
		}
	}
	return result;
};

var arr = ["23", "aa", "46"];
var b = convertStringArrayToIntArray(arr);
console.log(b);
