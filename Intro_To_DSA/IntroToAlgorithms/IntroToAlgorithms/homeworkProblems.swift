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
    
    var numOfNegValues: Int = 0
    var numOfZeros: Int = 0
    var numOfPositiveValues: Int = 0
    
    for element in myArr {
        if element < 0 {
            numOfNegValues += 1
        }
        
        if element == 0 {
            numOfZeros += 1
        }
        
        if element > 0 {
            numOfPositiveValues += 1
        }
        
    }
    
    let tuple = (numOfNegValues, numOfZeros,numOfPositiveValues)
    
    print(tuple)
    return tuple
    
}

//posZeroNeg(myArr: [-2,-3,-4,-5,-6,-7,-9])

//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    var myArrCopy = myArr.sorted {
        return $0 < $1
    }
    
    if myArr.count < 2 {
        return nil
    } else {
        myArrCopy.remove(at: 0)
        return myArrCopy[0]
    }
    
}

//secondSmallest(myArr: [59,12,4,16,23,85])
//secondSmallest(myArr: [0])

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime


func isPrime(x: Int) -> Bool {
    switch x {
    case 1:
        return true
    case 2:
        return true
    case 3:
        return true
    case 5:
        return true
    case 7:
        return true
    default:
        break
    }
    
    if x % 2 == 0 {
        return false
    } else if x % 3 == 0 {
        return false
    } else if x % 5 == 0 {
        return false
    } else if x % 7 == 0 {
        return false
    }
    return true
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    return ""
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    return ""
}

