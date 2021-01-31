//
//  main.swift
//  BOJ9093
//
//  Created by 이영재 on 2021/01/31.
//

var testCase = Int(readLine()!)!
var stack: Array<Character> = []
var size: Int = 0

// method 1
func push(n: Character) -> Void {
    stack.append(n)
    size += 1
}

func pop() -> Character {
    if empty() {
        return " "
    } else {
        let result = stack[size - 1]
        stack.remove(at: size - 1)
        size -= 1
        return result
    }
}

func top () -> Character {
    if empty() {
        return " "
    } else {
        return stack[size - 1]
    }
}

func empty() -> Bool {
    return size == 0 ? true : false
}

func count() -> Int {
    return size
}

while testCase != 0 {
    var input = readLine()!
    input.append("\n")
    
    for i in input {
        if i == " " || i == "\n" {
            while count() != 0 {
                print("\(pop())", separator: "", terminator: "")
            }
            if i != "\n"{ print(i, separator: "", terminator: "") }
        } else {
            push(n: i)
        }
    }
    print()
    testCase -= 1
}

// method 2
while testCase != 0 {
    var input = readLine()!
    input.append("\n")
    
    for i in input {
        if i == " " || i == "\n" {
            while stack.count != 0 {
                print("\(stack[stack.count-1])", separator: "", terminator: "")
                stack.remove(at: stack.count-1)
            }
            if i != "\n"{ print(i, separator: "", terminator: "") }
        } else {
            stack.append(i)
        }
    }
    print()
    testCase -= 1
}
