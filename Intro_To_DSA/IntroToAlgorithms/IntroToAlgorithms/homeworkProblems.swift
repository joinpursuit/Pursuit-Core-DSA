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
    var negativeCounter = 0
    var zeroCounter = 0
    var positiveCounter = 0
        for i in myArr {
            if i < 0 {
                negativeCounter += 1
            } else if i == 0 {
                zeroCounter += 1
            } else {
                positiveCounter += 1
        }
    }
    return(negativeCounter,zeroCounter,positiveCounter)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    if myArr.count < 2 {
        return nil
    }
    let sortedArr = myArr.sorted(by: { $0 < $1 })
    return sortedArr[1]
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
//    var arr: [Int] = []

    for i in 2..<x {
        if (x % i == 0)  {
            return false
        }
    }
    return true
}


//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    var outputString = ""
    for char in s.characters {
        if char != c {
            outputString.append(char)
    }
}
    return outputString
}

//Write an algorithm that removes all characters from a String contained within an input array of characters
//(s: "What shall we delete today?", arr: ["w", "?", "e"]) == "What shall  dlt today")

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var outputString = ""
    
    for char in s.characters {
        if !arr.contains(char) {
            outputString.append(char)
        }
    }
    return outputString
}

