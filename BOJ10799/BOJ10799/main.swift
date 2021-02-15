//
//  main.swift
//  BOJ10799 - 쇠막대기
//
//  Created by 이영재 on 2021/02/15.
//
//

if let input = readLine() {
    var stack: Array<Int> = []
    var count: Int = 0
    var answer: Int = 0

    for i in input {
        if i == "(" {
            stack.append(count)
        } else {
            if count - stack[stack.count - 1] == 1 {
                stack.remove(at: stack.count - 1)
                answer += stack.count
            } else {
                stack.remove(at: stack.count - 1)
                answer += 1
            }
        }
        count += 1
    }
    print(answer)
}
