//
//  main.swift
//  BOJ9012
//
//  Created by 이영재 on 2021/01/31.
//
//
var testCase = Int(readLine()!)!
while testCase != 0 {
    let input = readLine()!
    var openBracket: Int = 0

    for i in input {
        openBracket = i == "(" ? openBracket + 1 : openBracket - 1
        if openBracket < 0 {
            break
        }
    }
    print(openBracket == 0 ? "YES" : "NO")
    testCase -= 1
}