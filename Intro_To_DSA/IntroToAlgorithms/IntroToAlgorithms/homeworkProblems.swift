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
    var negCounter = 0
    var zeroCounter = 0
    var posCounter = 0
    
    for num in myArr {
        if num < 0 {
            negCounter += 1
        }
        else if num == 0 {
            zeroCounter += 1
        }
        else {
            posCounter += 1
        }
    }
    return (negCounter,zeroCounter,posCounter)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    return myArr.sorted()[1]
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    var prime = Bool()
    if x == 0 || x == 1 {
        prime = false
    }
    else if x == 2 {
        prime = true
    }
    else {
        for i in 2..<x {
            if x % i == 0 {
                prime = false
                break
            }
            else {
                prime = true
            }
        }
    }
    return prime
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    let sArray = s.characters
    var removedArray = [Character]()
    
    for char in sArray {
        if char != c {
            removedArray.append(char)
        }
    }
    return String(removedArray)
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    let sArray = s.characters
    var removedArray = [Character]()
    
    for aCharacter in sArray {
            if !arr.contains(aCharacter) {
                removedArray.append(aCharacter)
            }
        
    }
        return String(removedArray)
}

