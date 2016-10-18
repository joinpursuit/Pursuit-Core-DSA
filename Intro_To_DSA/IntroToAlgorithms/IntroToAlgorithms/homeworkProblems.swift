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
    return (0,0,0)
    var negNum = 0
    var zeroNum = 0
    var posNum = 0
    
    for number in myArr {
        if number > 0 {
            posNum += 1
        } else if number == 0 {
            posNum += 1
        } else {
            negNum += 1
        }
    }
    return (negNum, zeroNum, posNum)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    var int: Int = 0
    if myArr.count <= 2 {
    return nil
    } else if myArr.count > 2 {
        let newArr = myArr.sorted()
        int = newArr[1]
    }
    return int
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    if x <= 1 {
        return false
    }
    var i = 2
    while i*i <= x {
        if x % i == 0 {
            return false
        }
    }
    if x <= 3 {
        i = i + 1
        return true
    }
    return true
}


//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    return String(s.characters.filter({ $0 != c }))
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var myString = String()
     for chars in s.characters {
         for i in arr {
              if i == chars {
                   continue
                    }
              }
      myString += String(chars)
     }
    
    return ""
}

