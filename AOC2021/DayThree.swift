//
//  DayOne.swift
//  AOC2021
//
//  Created by Eduard Levshteyn on 12/2/21.
//  Copyright © 2021 Eduard Levshteyn. All rights reserved.
//

import Foundation

enum DayThree {
  static func partOne() -> Int {
    var sums: [Int] = [0,0,0,0,0,0,0,0,0,0,0,0]
  
    instructions.forEach { binary in
      for (index, bit) in binary.enumerated() {
        sums[index] += bit
      }
    }
    
    let mostCommonBits = sums.map {
      return $0 <= (instructions.count / 2) ? 0 : 1
    }

    print(mostCommonBits)
    
    var gammaRate: UInt16 = 0
    
    for bit in mostCommonBits {
      switch bit {
      case 1: gammaRate = gammaRate << 1 + 1
      case 0: gammaRate = gammaRate << 1
      default: fatalError("Expecting only 1's and 0's here")
      }
    }
    
    let epsilonRate = gammaRate ^ (0b0000111111111111)
    return Int(epsilonRate) * Int(gammaRate)
  }

  static func partTwo() -> Int {
    var ogrInstructions = instructions
    var ogr: [Int] = []
    
    for i in 0..<12 {
      var ogrSums: [Int] = [0,0,0,0,0,0,0,0,0,0,0,0]
      ogrInstructions.forEach { binary in
        for (index, bit) in binary.enumerated() {
          ogrSums[index] += bit
        }
      }
      
      let mostCommonBits = ogrSums.map { val -> Int in
        if ogrInstructions.count == 2 { return val == 1 ? 1 : 0 }
        return val <= (ogrInstructions.count / 2) ? 0 : 1
      }

      //print("Most common bits", mostCommonBits)
      ogrInstructions = ogrInstructions.filter { $0[i] == mostCommonBits[i] }
      //print(ogrInstructions)

      if ogrInstructions.count == 1 {
        ogr = ogrInstructions.first!
        break
      }
    }
    
    print("ogr is", ogr)
    
    var oxygenGeneratorRating: UInt16 = 0
    for bit in ogr {
      switch bit {
      case 1: oxygenGeneratorRating = oxygenGeneratorRating << 1 + 1
      case 0: oxygenGeneratorRating = oxygenGeneratorRating << 1
      default: fatalError("Expecting only 1's and 0's here")
      }
    }
    
    print("Oxygen Generator Rating Is", oxygenGeneratorRating)
    
    var csrInstructions = instructions
    var csr: [Int] = []
    
    for i in 0..<12 {
      var csrSums: [Int] = [0,0,0,0,0,0,0,0,0,0,0,0]
      csrInstructions.forEach { binary in
        for (index, bit) in binary.enumerated() {
          csrSums[index] += bit
        }
      }
      
      let leastCommonBits = csrSums.map { val -> Int in
        if (csrInstructions.count % 2 == 0) { // even
          return val < (csrInstructions.count/2) ? 1 : 0
        } else { // odd
          return val <= (csrInstructions.count/2) ? 1 : 0
        }
//        if csrInstructions.count = 2 { return val == 1 ? 0 : 1 }
//        return val <= (csrInstructions.count / 2) ? 1 : 0
      }

      print("Least common bits", leastCommonBits)
      csrInstructions = csrInstructions.filter { $0[i] == leastCommonBits[i] }
      print(csrInstructions)

      if csrInstructions.count == 1 {
        csr = csrInstructions.first!
        break
      }
    }
    
    print("csr is", csr)
    
    var co2ScrubberRating: UInt16 = 0
    for bit in csr {
      switch bit {
      case 1: co2ScrubberRating = co2ScrubberRating << 1 + 1
      case 0: co2ScrubberRating = co2ScrubberRating << 1
      default: fatalError("Expecting only 1's and 0's here")
      }
    }
    
    print("C02 Scrubber Rating Is", co2ScrubberRating)
  
    return Int(co2ScrubberRating) * Int(oxygenGeneratorRating)
  }
}
