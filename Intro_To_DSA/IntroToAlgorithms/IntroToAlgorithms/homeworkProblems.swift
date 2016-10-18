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
    var x = 0
    var y = 0
    var z = 0
    for num in myArr {
        if num < 0 {
            x += 1
        } else if num == 0 {
            y += 1
        } else {
            z += 1
        }
    }
    return (x,y,z)
}



//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    var sorted = myArr.sorted{$0 < $1}
    if sorted.count > 2 {
        return sorted[1]
    }
    
    return nil
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    let denominator = [2,3,4,5,7]
    for i in denominator {
        if x % i == 0 {
            return false
        }
    }
    return true
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    //    var newString: String = ""
    //    for x in s.characters {
    //        if x != c {
    //        newString.append(x)
    //        }
    //    }
    //
    //    return newString
    let char = s.characters.filter{$0 != c }
    return String(char)
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
