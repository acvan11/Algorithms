/*
You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.

The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive, so "a" is considered a different type of stone from "A".

Example 1:

Input: J = "aA", S = "aAAbbbb"
Output: 3
Example 2:

Input: J = "z", S = "ZZ"
Output: 0
Note:

S and J will consist of letters and have length at most 50.
The characters in J are distinct.
*/ 

// Solution 1: Do the for loop for each character in S, if J contains this character -> increase num by 1
var numJewelsInStones = function(J, S) {
    var num = 0
    for (let i = 0; i< s.length; i++){
    	if (J.indexOf(s[0]) != -1) {
    		num ++
    	}
    }
    return num
};

// Solution 2: Create an object with key and value for Stone. Do the loop in Jewel
var numJewelsInStones2 = function(J,S) {
	var dictOfS = {}
	for (let i = 0; i < S.length; i++){
		if (dictOfS[S[i]] == null) {
			dictOfS[S[i]] = 1
		} else {
			dictOfS[S[i]]++
		}
	}

	var result = 0
	for (let i = 0; i < J.length; j++){
		if (dictOfS[J[i]] != null) {
			result += dictOfS[J[i]]
		}
	}

	return result
}
