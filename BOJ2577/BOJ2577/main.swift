//
//  main.swift
//  BOJ2577
//
//  Created by 이영재 on 2021/02/09.
//
//
let A: Int = Int(readLine()!)!
let B: Int = Int(readLine()!)!
let C: Int = Int(readLine()!)!
let multiple: String = String(A * B * C)
var result: Array<Int> = []

for _ in 0...9 {
    result.append(0)
}

for i in multiple {
    let value: Int = Int(String(i))!
    switch value {
    case 0...9:
        result[value] += 1
    default:
        break
    }
}

for i in result {
    print(i)
}