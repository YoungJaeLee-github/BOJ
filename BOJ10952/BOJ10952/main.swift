//
//  main.swift
//  BOJ10952
//
//  Created by 이영재 on 2021/01/30.
//

while true {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    if input[0] == 0 {
        break
    } else{
        print(input[0] + input[1])
    }
}

