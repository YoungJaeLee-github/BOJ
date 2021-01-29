//
//  main.swift
//  BOJ11022
//
//  Created by 이영재 on 2021/01/30.
//

var testCase = Int(readLine()!)!
var count = 1
while testCase > 0 {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    print("Case #\(count): \(input[0]) + \(input[1]) = \(input[0] + input[1])")
    count += 1
    testCase -= 1
}

