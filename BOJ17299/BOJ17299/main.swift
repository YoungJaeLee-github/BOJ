//
//  main.swift
//  BOJ17299
//
//  Created by 이영재 on 2021/02/20.
//
//
if let N = readLine() {
    if let array = readLine() {
        let A = array.split(separator: " ").map({ Int($0)! })
        var stack: Array<Int> = []
        var frequency: Array<Int> = []
        var answer: Array<Int> = []
        var max = A[0]
        var output: String = ""

        for i in A {
            max = max < i ? i : max
        }
        for _ in 0..<max {
            frequency.append(0)
        }
        for _ in 0..<Int(N)! {
            answer.append(0)
        }
        for i in A {
            frequency[i - 1] += 1
        }

        stack.append(0)
        for i in 1..<Int(N)! {
            while stack.count != 0 && frequency[A[stack[stack.count - 1]] - 1] < frequency[A[i] - 1] {
                answer[stack.remove(at: stack.count - 1)] = A[i]
            }
            stack.append(i)
        }
        while stack.count != 0 {
            answer[stack.remove(at: stack.count - 1)] = -1
        }

        for i in 0..<answer.count - 1 {
            output = output + String(answer[i]) + " "
        }
        output += String(answer[answer.count - 1])
        print(output)
    }
}