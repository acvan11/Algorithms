/*
Given a valid (IPv4) IP address, return a defanged version of that IP address.

A defanged IP address replaces every period "." with "[.]".

 

Example 1:

Input: address = "1.1.1.1"
Output: "1[.]1[.]1[.]1"
Example 2:

Input: address = "255.100.50.0"
Output: "255[.]100[.]50[.]0"
*/ 

var defangIpAddress = function(s) {
  var result = ""
  for (var i = 0; i < s.length ; i++){
     s[i] == "." ? result += "[.]" : result += s[i]
  }
  return result
}

s = "1.1.1.1"
var result = defangIpAddress(s)
console.log(result)
