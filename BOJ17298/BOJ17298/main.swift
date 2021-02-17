//
//  main.swift
//  BOJ17298 - 오큰수
//
//  Created by 이영재 on 2021/02/16.
//
//
if let N = readLine() {
    if let input = readLine() {
        let numbers = input.split(separator: " ").map{Int($0)!}
        var stack: Array<Int> = []
        var answer: Array<Int> = []
        var output: String = ""

        for _ in 0..<Int(N)! {
            answer.append(0)
        }

        stack.append(0)
        for i in 1..<Int(N)! {
            while stack.count != 0 && numbers[stack[stack.count - 1]] < numbers[i] {
                answer[stack[stack.count - 1]] = numbers[i]
                stack.remove(at: stack.count - 1)
            }
            stack.append(i)
        }
        while stack.count != 0 {
            answer[stack[stack.count - 1]] = -1
            stack.remove(at: stack.count - 1)
        }
        for i in 0..<answer.count - 1 {
            output.append("\(String(answer[i])) ")
        }
        output.append(String(answer[answer.count - 1]))
        print(output)
    }
}