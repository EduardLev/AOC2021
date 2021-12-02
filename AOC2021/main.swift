import Foundation
////
////  main.swift
////  AOC2020

// Turn Input into readable format
let url = URL(fileURLWithPath: "/Users/elevshte/repos/AOC2021/AOC2021/input.txt")
let input = try! String(contentsOf: url)
var instructions = input
  .split(separator: "\n")
  .map { String($0) }

//print(DayOne.partOne())
//print(DayOne.partTwo())
print(DayTwo.partOne())
print(DayTwo.partTwo())
