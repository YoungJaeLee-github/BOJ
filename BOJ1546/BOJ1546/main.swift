//
//  main.swift
//  BOJ1546
//
//  Created by 이영재 on 2021/02/09.
//
//
if let count = readLine() {
    if let input = readLine() {
        let numbers = input.split(separator: " ")
        var max: Double = 0
        var sum: Double = 0
        for i in numbers {
            max = max < Double(String(i))! ? Double(String(i))! : max
        }

        for i in numbers {
            sum += Double(String(i))! / max * 100
        }

        print(sum / Double(String(count))!)
    }
}