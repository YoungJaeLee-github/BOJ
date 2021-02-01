//
//  main.swift
//  BOJ10845
//
//  Created by 이영재 on 2021/02/01.
//
//
var queue: Array<Int> = []
var begin: Int = 0
var end: Int = 0

var N = Int(readLine()!)!
while N != 0 {
    let input = readLine()!.split(separator: " ")
    switch String(input[0]) {
    case "pop" :
        if (end - begin) != 0 {
            print(queue[begin])
            queue[0] = 0
            begin += 1
        } else {
            print(-1)
        }
    case "size" :
        print(end - begin)
    case "empty" :
        print((end - begin) == 0 ? 1 : 0)
    case "front" :
        if (end - begin) != 0 {
            print(queue[begin])
        } else {
            print(-1)
        }
    case "back" :
        if (end - begin) != 0 {
            print(queue[end - 1])
        } else {
            print(-1)
        }
    default :
        queue.append(Int(input[1])!)
        end += 1
    }
    N -= 1
}