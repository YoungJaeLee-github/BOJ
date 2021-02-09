//
//  main.swift
//  BOJ3052
//
//  Created by 이영재 on 2021/02/09.
//
//
var inputCount: Int = 10
var moduloArray: Set<Int> = Set<Int>()

while inputCount != 0 {
    if let inputNumber = readLine() {
        if let number = Int(inputNumber) {
            moduloArray.insert(number % 42)
        }
    }
    inputCount -= 1
}
print(moduloArray.count)