//
//  main.swift
//  BOJ2562
//
//  Created by 이영재 on 2021/02/09.
//
//

var count: Int = 9
var numbers: Array<Int> = []
var max: Int = 0
var index: Int = 0
while count != 0 {
    numbers.append(Int(readLine()!)!)
    count -= 1
}

for i in numbers {
    if max < i {
        max = i
    }
}

for i in numbers {
    if i == max {
        break
    } else {
        index += 1
    }
}

print("\(max)\n\(index + 1)")