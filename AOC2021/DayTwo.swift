////
////  DayOne.swift
////  AOC2021
////
////  Created by Eduard Levshteyn on 12/2/21.
////  Copyright © 2021 Eduard Levshteyn. All rights reserved.
////
//
//import Foundation
//
//final class Position {
//  var aim: Int = 0
//  var horizontal: Int = 0 // Positive is to the right
//  var vertical: Int = 0 // Positive is to the bottom
//}
//
//struct Command {
//  let direction: Direction
//  let value: Int
//}
//
//enum Direction: String {
//  case forward
//  case down
//  case up
//}
//
//enum DayTwo {
//  static func partOne() -> Int {
//    let position = Position()
//
//    let typedInstructions = instructions
//      .map { $0.components(separatedBy: " ")}
//      .map { Command(direction: Direction(rawValue: $0.first!)!, value: Int($0.last!)!) }
//    
//    typedInstructions.forEach {
//      switch $0.direction {
//      case .forward:
//        position.horizontal += $0.value
//      case .down:
//        position.vertical += $0.value
//      case .up:
//        position.vertical -= $0.value
//      }
//    }
//  
//    return position.horizontal * position.vertical
//  }
//
//  static func partTwo() -> Int {
//    let position = Position()
//
//    let typedInstructions = instructions
//      .map { $0.components(separatedBy: " ")}
//      .map { Command(direction: Direction(rawValue: $0.first!)!, value: Int($0.last!)!) }
//    
//    typedInstructions.forEach {
//      switch $0.direction {
//      case .forward:
//        position.horizontal += $0.value
//        position.vertical += ($0.value * position.aim)
//      case .down:
//        position.aim += $0.value
//      case .up:
//        position.aim -= $0.value
//      }
//    }
//  
//    return position.horizontal * position.vertical
//  }
//}
