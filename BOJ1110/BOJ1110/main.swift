//
//  main.swift
//  BOJ1110
//
//  Created by 이영재 on 2021/01/30.
//

if let N = readLine() {
    var newNumber: Int = 0
    var cycle: Int = 0
    var temp: Int = 0
    temp = Int(N)! / 10 + Int(N)! % 10
    newNumber = (Int(N)! % 10) * 10 + temp % 10
    
    while Int(N) != newNumber {
        temp = newNumber / 10 + newNumber % 10
        newNumber = (Int(newNumber) % 10) * 10 + temp % 10
        cycle += 1
    }
    print(cycle + 1)
}


