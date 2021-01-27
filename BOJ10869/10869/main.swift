//
//  main.swift
//  10869
//
//  Created by 이영재 on 2021/01/28.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
print("\(input[0] + input[1])\n\(input[0] - input[1])\n\(input[0] * input[1])\n\(input[0] / input[1])\n\(input[0] % input[1])")
