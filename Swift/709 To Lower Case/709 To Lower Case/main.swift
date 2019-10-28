//
//  main.swift
//  709 To Lower Case
//
//  Created by Sky on 10/26/19.
//  Copyright © 2019 Andy. All rights reserved.
//

import Foundation
//
//func toLowerCase(_ string: String) -> String {
//    var lowerString = ""
//    for i in string {
//        if Int(i.asciiValue) > 65 && Int(i.asciiValue) <=90 {
//
//        }
//    }
//    return lowerString
//}

//print("a".asciiValue)
print(Character("a").asciiValue)
print(Character(UnicodeScalar(100)))
for s in "Hello" {
    print(Int(s.asciiValue))
}
