//
//  main.swift
//  BOJ15552
//
//  Created by 이영재 on 2021/01/30.
//

var testCase = Int(readLine()!)!

while testCase > 0 {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    print(input[0] + input[1])
    testCase -= 1
}
