//
//  main.swift
//  BOJ1330
//
//  Created by 이영재 on 2021/01/27.
//

import Foundation

if let input = readLine(){
    let parse = input.split(separator: " ")
    if (Int(parse[0])! == Int(parse[1])!) {
        print("==")
    }
    else {
        print(Int(parse[0])! > Int(parse[1])! ? ">" : "<")
    }
}
