//
//  main.swift
//  BOJ9498
//
//  Created by 이영재 on 2021/01/28.
//
if let score = readLine() {
    switch Int(score)!/10 {
    case 10:
        fallthrough
    case 9:
        print("A")
    case 8:
        print("B")
    case 7:
        print("C")
    case 6:
        print("D")
    default:
        print("F")
    }
}
