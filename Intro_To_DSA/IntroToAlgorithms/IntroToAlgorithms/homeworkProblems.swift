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
    return myArr.sort { $0 < $1 < $2 }
}

//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    if myArr.count >= 2 {
        var Smallest = 0
        var secondSmallest = 0
        for num in myArr {
            if num < Smallest {
                Smallest = num
            }
    
      
        }
        for num in myArr {
            if num > Smallest && num < secondSmallest {
                secondSmallest = num
            }
        }
        
    } else {
    return nil
    }
    
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
     let i = 1
    while (i < x) {
        if x / i != 0 {
            return true
        } else {
           return false
        }
    
    }
}

//Write an anglorithm that removes all characters from a String matching an input character
var Array = [Character]()
func removeCharacter(s: String, c: Character) -> String {
   return s.characters.filter({ $0 != c})
}



//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    
    return ""
}

