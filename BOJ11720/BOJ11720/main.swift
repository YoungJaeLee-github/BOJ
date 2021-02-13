//
//  main.swift
//  BOJ11720
//
//  Created by 이영재 on 2021/02/13.
//
//
readLine()
if let numbers = readLine() {
    var sum: Int = 0
    for i in numbers {
        sum += Int(String(i))!
    }
    print(sum)
}