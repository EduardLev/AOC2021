import Foundation
////
////  main.swift
////  AOC2020

// Turn Input into readable format
let url = URL(fileURLWithPath: "/Users/elevshte/repos/AOC2021/AOC2021/input.txt")
let input = try! String(contentsOf: url)
var instructions: [[Int]] = input
  .split(separator: "\n")
  .map { String($0) }
  .map {
    $0.map { element in
      Int(String(element))!
    }
  }

//print(DayOne.partOne())
//print(DayOne.partTwo())
//print(DayTwo.partOne())
//print(DayTwo.partTwo())
//print(DayThree.partOne())
print(DayThree.partTwo())
//print(DayFour.partOne())
//print(DayFour.partTwo())
//print(DayFive.partOne())
//print(DayFive.partTwo())
//print(DaySix.partOne())
//print(DaySix.partTwo())
//print(DaySeven.partOne())
//print(DaySeven.partTwo())
//print(DayEight.partOne())
//print(DayEight.partTwo())
//print(DayNine.partOne())
//print(DayNine.partTwo())
//print(DayTen.partOne())
//print(DayTen.partTwo())
//print(DayEleven.partOne())
//print(DayEleven.partTwo())
//print(DayTwelve.partOne())
//print(DayTwelve.partTwo())
//print(DayThirteen.partOne())
//print(DayThirteen.partTwo())

