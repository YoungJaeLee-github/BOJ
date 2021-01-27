//
//  main.swift
//  BOJ2588
//
//  Created by 이영재 on 2021/01/28.
//

let x = Int(readLine()!)
let y = readLine()

let first = Int(String(y![y!.startIndex]))!
let second = Int(String(y![y!.index(after: y!.startIndex)]))!
let third = Int(String(y![y!.index(before: y!.endIndex)]))!

print("\(x!*third)\n\(x!*second)\n\(x!*first)\n\(x!*first*100 + x!*second*10 + x!*third)")
