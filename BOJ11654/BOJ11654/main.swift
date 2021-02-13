//
//  main.swift
//  BOJ11654
//
//  Created by 이영재 on 2021/02/13.
//
//

if let input = readLine() {
    if let ascii = UnicodeScalar(input) {
        print(ascii.value)
    }
}