//
//  main.swift
//  BOJ1874
//
//  Created by 이영재 on 2021/01/31.
//
//

func solution() -> Void {
    var n = Int(readLine()!)!
    var m = 0;
    var answer: String = ""
    var stack: Array<Int> = []

    while n != 0 {
        let number = Int(readLine()!)!
        if m < number {
            while m < number {
                m += 1
                stack.append(m)
                answer.append("+\n")
            }
            stack.remove(at: stack.count - 1)
            answer.append("-\n")
        } else {
            var found: Bool = false
            if !stack.isEmpty {
                let top = stack[stack.count - 1]
                stack.remove(at: stack.count - 1)
                answer.append("-\n")
                if top == number {
                    found = true
                }
            }
            if !found {
                print("NO", separator: "", terminator: "")
                return
            }
        }
        n -= 1
    }
    print(answer, separator: "", terminator: "")
}
solution()