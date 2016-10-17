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
    var negCount = 0
    var zerosCount = 0
    var posCount = 0
    
    for i in myArr {
        switch i {
        case let x where x < 0:
            negCount += 1
        case let x where x == 0:
            zerosCount += 1
        case let x where x > 0:
            posCount += 1
        default: break
        }
    }
    
    return (negCount, zerosCount, posCount)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    guard myArr.count >= 2 else { return nil }
    
    var smallest = myArr[0]
    var secondSmallest = myArr[1]
    
    for i in myArr {
        if i < smallest {
            secondSmallest = smallest
            smallest = i
        } else if i != smallest && i < secondSmallest {
            secondSmallest = i
        }
    }
    return secondSmallest
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    guard x >= 2 else { return false }
    if x == 2 {
        return true
    } else if x % 2 == 0 {
        return false
    } else {
        var counter = 3
        let sqRoot = Int(sqrt(Double(x)))
        while counter <= sqRoot {
            if x % counter == 0 {
                return false
            }
            counter += 2
        }
    }
    return true
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    var newString = ""
    for stringChar in s.characters {
        if stringChar != c {
            newString.append(stringChar)
        }
    }
    return newString
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var newString = ""
    outerLoop: for stringChar in s.characters {
        for (index, letter) in arr.enumerated() {
            if stringChar == letter {
                continue outerLoop
            }
            if index == arr.count - 1 {
                newString.append(stringChar)
            }
        }
    }
    return newString
}
