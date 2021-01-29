//
//  main.swift
//  BOJ11021
//
//  Created by 이영재 on 2021/01/30.
//

var testCase = Int(readLine()!)!
var count = 0
while testCase > 0 {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    count += 1
    print("Case #\(count): \(input[0] + input[1])")
    testCase -= 1
}

