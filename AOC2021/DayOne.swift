//
//  DayOne.swift
//  AOC2021
//
//  Created by Eduard Levshteyn on 12/2/21.
//  Copyright © 2021 Eduard Levshteyn. All rights reserved.
//

import Foundation

enum DayOne {
  static func partOne() -> Int {
    return zip(instructions, instructions.dropFirst()).filter({ $0.0 < $0.1 }).count
  }

  static func partTwo() -> Int {
    let one = instructions
    let two = instructions.dropFirst(1)
    let three = instructions.dropFirst(2)
    var sums: [Int] = []
    for (uno, (dos, tres)) in zip(one, zip(two, three)) {
      let sum = Int(uno)! + Int(dos)! + Int(tres)!
      sums.append(sum)
    }
    return zip(sums, sums.dropFirst()).filter({ $0.0 < $0.1 }).count
  }
}
