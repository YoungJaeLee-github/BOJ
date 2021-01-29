//
//  main.swift
//  BOJ2439
//
//  Created by 이영재 on 2021/01/30.
//

let N = Int(readLine()!)!

for i in 1...N {
    for _ in 0..<(N-i) {
        print(" ", separator: "", terminator: "")
    }
    for _ in 0..<i {
        print("*", separator: "", terminator: "")
    }
    print("")
}
