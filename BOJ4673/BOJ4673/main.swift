//
//  main.swift
//  BOJ4673
//
//  Created by 이영재 on 2021/02/10.
//
//

func solution1() -> Void {
    func d(n: Int) -> Int {
        var constructor = n
        var result = n

        while constructor != 0 {
            result += constructor % 10
            constructor /= 10
        }
        return result
    }

    var someArray: Set<Int> = Set<Int>()
    var nonSelfNumbers: Set<Int> = Set<Int>()

    for i in 1...10000 {
        someArray.insert(i)
        nonSelfNumbers.insert(d(n: i))
    }
    let selfNumbers:[Int] = someArray.subtracting(nonSelfNumbers).sorted()
    for i in selfNumbers {
        print(i)
    }
}

func solution2() -> Void {
    func d(n: String) -> Int {
        var result = Int(n)!
        for i in n {
            result += Int(String(i))!
        }
        return result
    }

    var selfNumbers: Array<Int> = []
    for _ in 0..<10001 {
        selfNumbers.append(1)
    }

    for i in 1...10000 {
        let nonSelfNumber = d(n: String(i))
        if nonSelfNumber < 10001 {
            selfNumbers[nonSelfNumber] = 0
        }
    }

    for i in 1...10000 {
        if selfNumbers[i] == 1 {
            print(i)
        }
    }
}

solution1()
solution2()