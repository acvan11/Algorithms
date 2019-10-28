//
//  main.swift
//  ConvertStringArrayToIntArray
//
//  Created by Sky on 10/27/19.
//  Copyright © 2019 Andy. All rights reserved.
//

import Foundation
/*
 1. Turn String Array into Int Array. ["50", "40", "Aaron"] -> [50, 40]
 2. Find Occurrences of a target
 */

func convertStringArrayToIntArray(_ arr: [String]) -> [Int] {
    var result: [Int] = []
    for i in arr {
        if let num = Int(i) {
            result.append(num)
        }
    }
    return result
}

var str = ["50", "40", "Aaron", "23k"]
var result = convertStringArrayToIntArray(str)
print(result)

