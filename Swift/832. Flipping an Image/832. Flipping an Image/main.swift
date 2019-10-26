//
//  main.swift
//  832. Flipping an Image
//
//  Created by Sky on 10/25/19.
//  Copyright © 2019 Andy. All rights reserved.
//

import Foundation

func flippingImage(_ A: [[Int]]) -> [[Int]] {
    var nums = A
    for (i, arr) in A.enumerated() {
        for (j, item) in arr.reversed().enumerated() {
            nums[i][j] = item ^ 1
        }
    }
    
    //TODO
    return nums
}

var nums =  [[1,1,0],[1,0,1],[0,0,0]]
var result = flippingImage(nums)
print(result)

print(1 ^ 0)
print(0 ^ 0)
print(0 ^ 1)
print(1 ^ 1)
