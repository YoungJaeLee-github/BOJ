//
//  main.swift
//  BOJ1000
//
//  Created by 이영재 on 2021/01/27.
//

import Foundation

//method1
if let input = readLine() {
    let parse = input.split(separator: " ")
    print(Int(parse[0])! + Int(parse[1])!)
}

////method2
let input2 : Array<Int> = readLine()!.components(separatedBy: " ").map{Int($0)!}
print(input2[0] + input2[1])
