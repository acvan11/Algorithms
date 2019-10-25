//
//  main.swift
//  905. SortParityArray
//
//  Created by Sky on 10/25/19.
//  Copyright © 2019 Andy. All rights reserved.
//

import Foundation

/*
 Given an array A of non-negative integers, return an array consisting of all the even elements of A, followed by all the odd elements of A.

 You may return any answer array that satisfies this condition.

  

 Example 1:

 Input: [3,1,2,4]
 Output: [2,4,3,1]
 The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.
  

 Note:

 1 <= A.length <= 5000
 0 <= A[i] <= 5000
 */

func sortParityArray(_ arr: [Int]) -> [Int] {
    var evenArr: [Int] = []
    var oddArr: [Int] = []
    
    for i in arr {
        if i % 2 == 0 {
            evenArr.append(i)
        } else {
            oddArr.append(i)
        }
    }

    return evenArr + oddArr
}

var arr1 = [3,1,2,4]
var result = sortParityArray(arr1)
print(result)
