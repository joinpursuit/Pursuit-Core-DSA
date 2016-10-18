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
    var numOfNegatives = 0
    var numOfZeros = 0
    var numOfPositives = 0

    for num in myArr {
        
        if num < 0 {
            numOfNegatives += 1
        } else if num == 0 {
            numOfZeros += 1
        } else if num > 0 {
            numOfPositives += 1
        }

    }
    return (numOfNegatives, numOfZeros, numOfPositives)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    guard myArr.count >= 2 else {return nil}
    let sortedArr = myArr.sorted{$0 < $1}
    return sortedArr[1]
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    let lessThanTwo = x < 2
    let divisibleByTwo = x % 2 == 0
    let divisibleByThree = x % 3 == 0 && x != 3
    let divibleByFive = x % 5 == 0 && x != 5
    let divisibleBySeven = x % 7 == 0 && x != 7
    let isSieve = (divisibleByTwo && !lessThanTwo) || divisibleByThree || divibleByFive || divisibleBySeven
    
    return !isSieve
    // Algorithm based off of https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
}


//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    let stringChar = s.characters.filter{$0 != c}
//    var newString = ""
//    for char in stringChar {
//        if char != c {
//            newString.append(char)
//        }
//    }
//    return newString
    return String(stringChar)
}



//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    let stringChar = s.characters.filter{!arr.contains($0)}
    
    return String(stringChar)
}

