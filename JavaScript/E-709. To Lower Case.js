/*
709. To Lower Case
Implement function ToLowerCase() that has a string parameter str, and returns the same string in lowercase.

Example 1:

Input: "Hello"
Output: "hello"
Example 2:

Input: "here"
Output: "here"
Example 3:

Input: "LOVELY"
Output: "lovely"
*/

var toLowerCase = function(str) {
	var lowerString = [];

	for (var i = 0; i < str.length; i++) {
		var characterStr = str.charAt(i);
		var charCode = characterStr.charCodeAt();

		if (charCode >= 65 && charCode <= 90) {
			charCode += 32;
		}
		var lower = String.fromCharCode(charCode);
		lowerString.push(lower);
	}
	return lowerString.join("");
};