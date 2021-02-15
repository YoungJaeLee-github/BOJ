//
//  main.swift
//  BOJ17413
//
//  Created by 이영재 on 2021/02/15.
//
//
if let input = readLine() {
    var S = input
    S += "\n"

    var stack: [Character] = []
    var isTag: Bool = false
    var answer: String = ""
    for i in S {
        if i == "<" {
            isTag = true
            while stack.count != 0 {
                answer.append(stack.remove(at: stack.count - 1))
            }
            answer.append(i)
        } else if i == ">" {
            isTag = false
            answer.append(i)
        } else if isTag {
            answer.append(i)
        } else {
            if i == " " || i == "\n" {
                while stack.count != 0 {
                    answer.append(stack.remove(at: stack.count - 1))
                }
                answer.append(i)
            } else {
                stack.append(i)
            }
        }
    }
    print(answer)
}