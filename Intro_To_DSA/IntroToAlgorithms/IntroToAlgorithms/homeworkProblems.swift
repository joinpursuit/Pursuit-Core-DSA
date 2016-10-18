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


  var myArray = [ 1, -2, -1, 0, 0, 0 ]

func posZeroNeg(myArr: [Int]) -> (Int, Int, Int) {
    var negativeCounter = 0
    var zeroCounter = 0
    var positiveCounter = 0
    
    for number in myArr {
        if number  == 0 {
            zeroCounter += 1
        }else if number > 0 {
            positiveCounter += 1
        }else {
            negativeCounter += 1
        }
    }
    
    
    return (negativeCounter,zeroCounter,positiveCounter)
}

// print(posZeroNeg(myArr:myArray))





//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    let sortedArray = myArr.sorted(by: <)
    if sortedArray.count >= 2 {
        return sortedArray[1]
    }else {
    return nil
    }
}
//print(secondSmallest(myArr: myArray))




//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime



func isPrime(x: Int) -> Bool {
    if x <= 1 {
        return false
    }
    if x <= 3 {
        return true
    }
    var i = 2
    while i*i <= x {
        if x % i == 0 {
            return false
        }
        i = i + 1
    }
    return true
}

//isPrime(x: 37)

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    return String(s.characters.filter({ $0 != c }))
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var emptyString = String()
    for characters in s.characters {
        for i in arr {
            if i == characters {
                continue
            }
        }
        emptyString += String(characters)
    }

    return ""
}

