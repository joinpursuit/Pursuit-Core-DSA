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
    var neg = 0
    var zeros = 0
    var pos = 0
    for i in myArr {
        if i < 0 {
            neg += 1
        } else if i > 0 {
            pos += 1
        } else {
            zeros += 1
        }
    }
    return (neg, zeros, pos)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements


func secondSmallest(myArr: [Int]) -> Int? {
    guard myArr.count > 2 else { return nil }
    var smallest = myArr[0]
    var secondSmallest = myArr[0]
    for x in myArr {
        if x < smallest {
            secondSmallest = smallest
            smallest = x
        } else if x < secondSmallest {
            secondSmallest = x
        }
    }
    return secondSmallest
    //    var sortedArr = myArr.sorted()
    //    return sortedArr[1]
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    for i in 2..<x {
        if x % i == 0 {
            return false
        }
    }
    return true

//    for i in 2..<x {
//        for j in 2..<x {
//            if i * j == x {
//                return false
//            }
//        }
//    }
//    return true
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
//    var t = ""
//    for d in s.characters {
//        if d != c {
//            t += String(d)
//        }
//    }
//    return t
    return s.replacingOccurrences(of: String(c), with: "")
}



//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var newString = ""
    for x in s.characters {
        var xInInputArray = false
        for y in arr {
            if x == y {
                xInInputArray = true
            }
        }
        if !xInInputArray {
            newString += String(x)
        }
    }
    return newString
}

