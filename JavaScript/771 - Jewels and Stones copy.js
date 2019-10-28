
/*
 Coding Challenge: Return the first index of every time a pattern is matched in a String. I.E. string: "This is a TEST flow TEST" pattern: "TEST" -> [10, 17]
 */


var matchingString = function(str, pattern) {
  var arrOfString = str.split(" ")
  var result = []
  var count = 0

  for (var i = 0; i < arrOfString.length; i++){
    if (arrOfString[i].includes(pattern)){
      result.push(count)
    }
    count += arrOfString[i].length + 1
  }

  return result
}

var str = "This is a TEST flow TEST"
var result = matchingString(str, "TEST")

console.log(result)