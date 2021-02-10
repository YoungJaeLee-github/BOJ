//
//  main.swift
//  BOJ1850
//
//  Created by 이영재 on 2021/02/10.
//
//

func gcd(A: Int, B: Int) -> Int {
    var tempA: Int = A
    var tempB: Int = B
    var modulo: Int = 0
    while tempB != 0 {
        modulo = tempA % tempB
        tempA = tempB
        tempB = modulo
    }
    return tempA
}

func gcdRecursive(A: Int, B: Int) -> Int {
    A % B == 0 ? B : gcdRecursive(A: B, B: A % B)
}

func solution(size: Int) -> Void {
    var count = size
    while count != 0 {
        print(1, terminator: "")
        count -= 1
    }
}

if let numbers = readLine() {
    let parse = numbers.split(separator: " ")
//    let result = gcd(A: Int(String(parse[0]))!, B: Int(String(parse[1]))!)
    let result = gcdRecursive(A: Int(String(parse[0]))!, B: Int(String(parse[1]))!)

    solution(size: result)
}