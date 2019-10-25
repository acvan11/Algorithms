//
//  main.swift
//  771. Jewels and Stones
//
//  Created by Sky on 10/25/19.
//  Copyright © 2019 Andy. All rights reserved.
//

import Foundation

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


//SOLUTION 1
func numJewelsInStones(_ J: String, _ S: String) -> Int {
    var allStoneDic: [Character : Int] = [Character : Int]()
    for s in S {
        if let stoneNum = allStoneDic[s] {
            allStoneDic[s] = stoneNum + 1
        } else {
            allStoneDic[s] = 1
        }
    }
    
    var jewelNum = 0
    for j in J {
        if let num = allStoneDic[j] {
            jewelNum += num
        }
    }
    
    return jewelNum
}


//SOLUTION 2
func numJewelsInStones2(_ J: String, _ S: String) -> Int {
    var num = 0
    for s in S {
        if (J.contains(s)){
            num += 1
        }
    }
    return num
}


let stone1 = "aAAbbbb"
let jewel1 = "aA"

let stone2 = "ZZ"
let jewel2 = "z"

print("stone = \(stone1), jewel = \(jewel1), number of jewels = \(numJewelsInStones(jewel1, stone1))")
print("stone = \(stone2), jewel = \(jewel2), number of jewels = \(numJewelsInStones(jewel2, stone2))")

