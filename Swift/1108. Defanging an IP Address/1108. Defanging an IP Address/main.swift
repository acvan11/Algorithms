//
//  main.swift
//  1108. Defanging an IP Address
//
//  Created by Sky on 10/25/19.
//  Copyright © 2019 Andy. All rights reserved.
//

import Foundation

//Solution 1
func defangIpAddress(_ address: String) -> String {
    let result = address.replacingOccurrences(of: ".", with: "[.]")
    //TODO
    return result
}

//Solution2
func defangIpAddress2(_ address: String) -> String {
    var result = ""
    for c in address {
        c == "." ? result.append("[.]") : result.append(c)
    }
    return result
}

let address = "1.1.1.1"
let result = defangIpAddress2(address)
print(result)

