//
//  main.swift
//  BOJ2884
//
//  Created by 이영재 on 2021/01/27.
//
import Foundation

let time = readLine()!.components(separatedBy: " ").map{Int($0)!}
var hour : Int = time[0]
var minute : Int = time[1]

if(minute < 45){
    hour = hour == 0 ? 23 : hour-1
    minute = minute + 60 - 45
} else{
    minute -= 45
}
print(hour, minute)
