//
//  main.swift
//  BOJ10951
//
//  Created by 이영재 on 2021/01/30.
//

while let input = readLine() {
    let temp = input.split(separator: " ").map({Int($0)!})
    print(temp[0] + temp[1])
}


