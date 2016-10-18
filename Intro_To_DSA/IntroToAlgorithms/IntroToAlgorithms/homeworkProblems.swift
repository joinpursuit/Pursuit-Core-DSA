//
//  homeworkProblems.swift
//  IntroToAlgorithms
//
//  Created by C4Q  on 10/14/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Given an array of Ints, return a tuple where:
//The first element is the number of negative values
//The second element is the number of zeros
//The third element is the number of positive values.


func posZeroNeg(myArr: [Int]) -> (Int, Int, Int) {
    var dataTuple = (neg: 0, zero: 0, pos: 0)
    for i in myArr {
        switch i {
        case let i where i < 0:
            dataTuple.neg += 1
        case let i where i > 0:
            dataTuple.pos += 1
        case let i where i == 0:
            dataTuple.zero += 1
        default:
            break;
        }
    }
    return (dataTuple)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    var orderedArr = myArr.sorted{$0 < $1}
    return orderedArr[1]
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    for i in 2...x {
        if x % i == 0 && i != x {
            return false
        }
    }
    return true
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    let filtered = s.replacingOccurrences(of: String(c), with: "")
    return filtered
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var filteredString = s
    for char in arr {
        filteredString = removeCharacter(s: filteredString, c: char)
    }
    return filteredString
}

