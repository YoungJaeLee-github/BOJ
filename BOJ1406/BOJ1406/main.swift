//
//  main.swift
//  BOJ1406
//
//  Created by 이영재 on 2021/01/31.
//
//
var leftStack: Array<Character> = []
var rightStack: Array<Character> = []

let input = readLine()!
for i in input {
    leftStack.append(i)
}

var M = Int(readLine()!)!
while M != 0 {
    let command = readLine()!
    switch command {
    case "L":
        if leftStack.count != 0 {
            rightStack.append(leftStack[leftStack.count - 1])
            leftStack.remove(at: leftStack.count - 1)
        }
    case "D":
        if rightStack.count != 0 {
            leftStack.append(rightStack[rightStack.count - 1])
            rightStack.remove(at: rightStack.count - 1)
        }
    case "B":
        if leftStack.count != 0 {
            leftStack.remove(at: leftStack.count - 1)
        }
    default:
        let temp = Array(command)
        leftStack.append(temp[2])
    }
    M -= 1
}
for i in 0..<leftStack.count {
    rightStack.append(leftStack[(leftStack.count - 1) - i])
}
var answer: String = ""
for i in 0..<rightStack.count {
    answer.append(rightStack[(rightStack.count - 1) - i])
}
print(answer)