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
    var tuple = (0, 0, 0)
//    for num in myArr{
//        if num < 0 {
//            tuple.0 += 1
//        }else if num == 0{
//            tuple.1 += 1
//        }else if num > 0{
//            tuple.2 += 1
//        }
//    }
    tuple.0 = myArr.filter({$0 < 0}).count
    tuple.1 = myArr.filter({$0 == 0}).count
    tuple.2 = myArr.filter({$0 > 0}).count
    return tuple
    
    
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    guard myArr.count > 2 else {
        return nil
    }
    
    let tempArr = myArr.sorted(by: < )
    return tempArr[1]
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
    return String(s.characters.filter({$0 != c}))
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var tempString = Array(s.characters)
    for char in arr{
        let temp = tempString
        tempString = temp.filter({$0 != char})
    }
    return String(tempString)
}

