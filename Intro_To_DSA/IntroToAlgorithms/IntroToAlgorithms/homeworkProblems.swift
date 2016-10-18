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
    var numberOfNegatives = 0
    var numberOfZeroes = 0
    var numberOfPositives = 0
    
    for i in myArr {
        if i < 0 {
            numberOfNegatives += 1
        }
        else if i == 0 {
            numberOfZeroes += 1
        }
        else if i > 0 {
            numberOfPositives += 1
        }
    }
    return (numberOfNegatives, numberOfZeroes, numberOfPositives)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    guard myArr.count >= 2 else { return nil }
    var smallestElement = myArr[0]
    var secondSmallestElement = myArr[1]
    for i in myArr {
        if i < smallestElement {
            secondSmallestElement = smallestElement
            smallestElement = i
        }
        else if i != smallestElement && i < secondSmallestElement {
            secondSmallestElement = i
        }
    }
    return secondSmallestElement
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    for i in 2..<x {
        if x % i == 0 {
            return false
        }
    }
    return true
}

//Write an algorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    var outputString = String()
    let stringArray = s.characters.map{ String($0) }
    for i in stringArray {
        if i != String(c) {
            outputString += i
        }
        else {
            continue
        }
    }
    return outputString
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var outputString = String()
    let stringArray = s.characters.map{ String($0) }
    for i in stringArray {
        if arr.contains(Character(i)) {
            continue
        }
        else {
            outputString += i
        }
    }
    return outputString
}

