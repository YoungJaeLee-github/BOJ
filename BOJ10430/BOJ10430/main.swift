//
//  main.swift
//  BOJ10430
//
//  Created by 이영재 on 2021/01/28.
//

import Foundation
let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
let A = input[0]
let B = input[1]
let C = input[2]
print("\((A+B)%C)\n\(((A%C)+(B%C))%C)\n\((A*B)%C)\n\((((A%C)*(B%C))%C))")
