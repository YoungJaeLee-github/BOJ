//
//  main.swift
//  BOJ8958
//
//  Created by 이영재 on 2021/02/10.
//
//
if let testCase = readLine() {
    var t = Int(testCase)!
    while t != 0 {
        var score: Int = 0
        var zeroCount: Int = 0
        if let quiz = readLine() {
            for i in quiz {
                if i == "O" {
                    zeroCount += 1
                    score += zeroCount
                } else {
                    zeroCount = 0
                }
            }
        }
        print(score)
        t -= 1
    }
}