//
//  main.swift
//  BOJ10828
//
//  Created by 이영재 on 2021/02/01.
//
//
var stack: Array<Int> = []
var size = 0

var N = Int(readLine()!)!
while N != 0 {
    let input = readLine()!.split(separator: " ")
    switch String(input[0]) {
    case "pop" :
        if size != 0 {
            print(stack[size - 1])
            stack.remove(at: size - 1)
            size -= 1
        } else {
            print(-1)
        }
    case "top" :
        if size != 0 {
            print(stack[size - 1])
        } else {
            print(-1)
        }
    case "size" :
        print(size)
    case "empty" :
        print(size == 0 ? 1 : 0)
    default:
        stack.append(Int(input[1])!)
        size += 1
    }
    N -= 1
}