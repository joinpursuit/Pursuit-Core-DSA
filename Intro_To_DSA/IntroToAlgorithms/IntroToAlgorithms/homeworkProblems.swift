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

var tup = (one: 1, two: 2, three: 3)


let arr = [1, 2, 3]
arr[0]
arr[1]
arr[2]

func posZeroNeg(myArr: [Int]) -> (Int, Int, Int) {
    var count = 0
    var count1 = 0
    var count2 = 0
    for i in myArr {
        if i < 0 {
            print (i)
            count += 1
        }
        else if i == 0 {
            count1 += 1
        }
        else {
            count2 += 1
        }
    }
    return (count, count1, count2)
}

//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    if myArr.count < 2 {
        return nil
    }
    var Smallest = Int.max
    var secondSmallest = Int.max
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
    return secondSmallest
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    var i = 2
    while (i < x) {
        if x % i == 0 {
            return false
        }
        i += 1
    }
    return true
}

//Write an anglorithm that removes all characters from a String matching an input character
var Array = [Character]()
func removeCharacter(s: String, c: Character) -> String {
    return String(s.characters.filter({ $0 != c }))
}



//Write an algorithm that removes all characters from a String contained within an input array of characters
func removeMultipleCharacters(s: String, excludeCharacters: [Character]) -> String {
    return String(s.characters.filter { !excludeCharacters.contains($0) })
}


