//
//  main.swift
//  BOJ10871
//
//  Created by 이영재 on 2021/01/30.
//

let input = readLine()!.split(separator: " ").map{Int($0)!}
let array = readLine()!.split(separator: " ").map{Int($0)!}
var smllerThanX = input[1]
var result : String = ""

for i in array {
    i < smllerThanX ? result.append(String(i) + " ") : result.append("")
}
print(result)
