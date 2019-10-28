//
//  main.swift
//  MatchingString
//
//  Created by Sky on 10/27/19.
//  Copyright © 2019 Andy. All rights reserved.
//

import Foundation
/*
 Coding Challenge: Return the first index of every time a pattern is matched in a String. I.E. string: "This is a TEST flow TEST" pattern: "TEST" -> [10, 17]
 */

func matchingString(_ string: String, _ pattern: String) -> [Int] {
    var count = 0
    var result : [Int] = []
    var arrOfString = string.split(separator: " ")
    for e in arrOfString {
        
        if e.contains(pattern) {
            result.append(count)
        }
        count += e.count + 1
    }
    return result
}

var str = "This is a TEST flow TEST"
var result = matchingString(str, "TEST")

print(result)
