//
//  main.swift
//  BOJ2753
//
//  Created by 이영재 on 2021/01/27.
//

import Foundation

if let input = readLine() {
    if(Int(input)! % 400 == 0){
        print(1)
    }
    else if(Int(input)! % 4 == 0 && Int(input)! % 100 != 0) {
        print(1)
    }
    else {
        print(0)
    }
}


