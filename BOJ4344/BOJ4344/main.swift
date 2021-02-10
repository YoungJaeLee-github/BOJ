//
//  main.swift
//  BOJ4344
//
//  Created by 이영재 on 2021/02/10.
//
//
import Foundation
if let testCase = readLine() {
    var t = Int(testCase)!
    while t != 0 {
        if let input = readLine() {
            let parse = input.split(separator: " ")
            let studentCount = Int(String(parse[0]))!
            var sum: Float = 0
            for i in 1...studentCount {
                sum += Float(String(parse[i]))!
            }

            let average: Float = sum / Float(studentCount)
            var count: Int = 0
            for i in 1...studentCount{
                count = Float(String(parse[i]))! > average ? count + 1 : count
            }
            print("\(String(format: "%.3f", Float(count) / Float(studentCount) * 100))%")
        }
        t -= 1
    }
}
