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
    var counterTuple = (0, 0, 0)
    
    
    for i in myArr {
        switch i {
        case 0:
            counterTuple.1 += 1
        case _ where i < 0:
            counterTuple.0 += 1
        default:
            counterTuple.2 += 1
        }
    }
    
    
    return counterTuple
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    if myArr.count > 1 {
        return myArr.sorted()[1]
    } else {
        return myArr[0]
    }
    //    var smallest = myArr[0]
    //    var secondSmallest: Int?
    //
    //    if myArr.count > 2 {
    //    for i in 2..<myArr.count {
    //        if myArr[i] > myArr [i - 1] {
    //            smallest = myArr[i]
    //            myArr[i - 1] = smallest
    //
    //            for
    //
    //        }
    //        }
    //        else {
    //
    //        }
    //    }else {
    //        if myArr[0] > myArr[1] {
    //            smallest = myArr[1]
    //        }
    //    return smallest
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime



func isPrime(x: Int) -> Bool {
    if x <= 1 {
        return false
    }
        
    else if x <= 3 {
        return false
    }
    var i = 2
    
    while i * i <= x {
        if x % i == 0 {
            return false
        }
        i += 1

    }
    return true
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    var appendedString = ""
    
    for char in s.characters {
        if char != c {
            appendedString += String(char)
        }
    }
    return appendedString
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var appendedString = ""
    
    outer: for char in s.characters {
        for c in arr {
            if c != char {
                appendedString += String(char)
                continue outer
            }
        }
    }
    return appendedString
}

