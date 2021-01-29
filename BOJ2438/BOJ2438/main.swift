//
//  main.swift
//  BOJ2438
//
//  Created by 이영재 on 2021/01/30.
//

let N = Int(readLine()!)!

for i in 1...N {
    for _ in 1...i {
        print("*", separator: "", terminator: "")
    }
    print("")
}
