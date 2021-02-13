//
//  main.swift
//  BOJ1065
//
//  Created by 이영재 on 2021/02/13.
//
//

func solution(number: Int) -> Int {
    var count: Int = 0
    for i in 1...number {
        if i / 100 < 1 {
            count += 1
        } else {
            var temp = i
            var case1: Int = 0
            var case2: Int = 0
            while temp / 10 > 0 {
                case1 = (temp / 10 % 10) - (temp % 10)
                temp /= 10
                case2 = (temp / 10 % 10) - (temp % 10)
                temp /= 10
            }
            count = case1 == case2 ? count + 1 : count
        }
    }
    return count
}

if let number = readLine() {
    print(solution(number: Int(number)!))
}