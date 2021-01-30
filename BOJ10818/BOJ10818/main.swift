//
//  main.swift
//  BOJ10818
//
//  Created by 이영재 on 2021/01/30.
//

if let N = readLine() {
    if let input = readLine() {
        let array = input.split(separator: " ")
        var minimum = Int(array[0])!
        var maximum = Int(array[0])!
        for i in array {
            minimum = Int(i)! < minimum ? Int(i)! : minimum
            maximum = Int(i)! > maximum ? Int(i)! : maximum
        }
        print(minimum, maximum)
    }
}
