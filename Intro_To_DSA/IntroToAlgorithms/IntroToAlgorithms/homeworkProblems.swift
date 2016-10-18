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
    var negative = 0
    var zero = 0
    var positive = 0
    
    for num in myArr {
        if num < 0 {
            negative += 1
        } else if num == 0 {
            zero += 1
        } else if num > 0 {
            positive += 1
        }
    }
    
    
    return (negative, zero, positive)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    let secondSmallestInt: Int
    let orderedArr = myArr.sorted{ $0 < $1 }
    
    if orderedArr.count > 2 {
        secondSmallestInt = orderedArr[1]
    } else {
        return nil
    }
    
    return secondSmallestInt
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    
    for num in 2..<x{
        if x % num == 0{
            return false
        }
    }
    return true
    
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    
    let removedChar = s.characters.filter({ $0 != c })
    
    return String(removedChar)
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var newString: String = ""
    
    for char in s.characters {
        if !arr.contains(char) {
            newString.append(char)
        }
    }
    
    return newString
}

