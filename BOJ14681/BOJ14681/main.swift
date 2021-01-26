//
//  main.swift
//  BOJ14681
//
//  Created by 이영재 on 2021/01/27.
//

if let x = readLine(){
    if let y = readLine() {
        // x > 0 일때, y > 0 || y < 0
        if(Int(x)! > 0) {
            print(Int(y)! > 0 ? 1 : 4)
        }
        // x < 0 일때, y > 0 || y < 0
        else {
            print(Int(y)! > 0 ? 2 : 3)
        }
    }
}
