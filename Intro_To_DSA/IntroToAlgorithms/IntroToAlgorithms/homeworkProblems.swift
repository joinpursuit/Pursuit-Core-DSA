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
    var negativeValuesCount: Int = 0
    var zeroCount: Int = 0
    var positiveValueCount: Int = 0
    for i in myArr {
        if i < 0 {
            negativeValuesCount += 1
        } else if i == 0 {
            zeroCount += 1
        } else {
            positiveValueCount += 1
        }
    }
    return (negativeValuesCount, zeroCount, positiveValueCount)
}

func posZeroNeg2(myArr: [Int]) -> (Int, Int, Int) {
    var negativeValuesCount = myArr.filter{($0 < 0)}.count
    var zeroCount = myArr.filter{($0 == 0)}.count
    var positiveValueCount = myArr.filter{($0 > 0)}.count
    return (negativeValuesCount, zeroCount, positiveValueCount)
}

//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest1(myArr: [Int]) -> Int? {
    if myArr.count < 2 {
        return nil
    }
    let sortedArr = myArr.sorted(by: { $0 < $1 })
    return sortedArr[1]
}

func secondSmallest(myArr: [Int]) -> Int? {
    var myArray = myArr
    var swapped = true
    while swapped {
        swapped = false
        for i in 0..<myArray.count {
            if i+1 == myArray.count {
                continue
            } else if myArray[i] > myArray[i+1]{
                let temp = myArray[i]
                myArray[i] = myArray[i+1]
                myArray[i+1] = temp
                swapped = true
            }
        }
    }
    return myArray[1]
}
//    var sortedArray =
//    var smallest = myArr[0]
//    var secondSmallest = myArr[1]
//    for i in myArr {
//        if i < smallest {
//            smallest = i
//        }
//        if i < secondSmallest && i != smallest {
//            secondSmallest = i
//        }
//    }
//    return secondSmallest



//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    var denominator = [2,3,4,5,7]
    for i in denominator {
        if x % i == 0 {
            return false
        }
    }
    return true
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    var str: String = ""
    for i in s.characters {
        if i != c{
            str += String(i)
        }
    }
    return str
}

func removeCharacter2(s: String, c: Character) -> String {
    var str: String = ""
    for i in s.characters {
        if i != c{
            str += String(i)
        }
    }
    return str
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var removedMultipleCharactersArray = [Character]()
    var string: String = ""
    var firstFilter = true
    for i in arr{
        //print(i)
        if firstFilter {
            removedMultipleCharactersArray = s.characters.filter({$0 != i})
            firstFilter = false
        } else {
            removedMultipleCharactersArray = removedMultipleCharactersArray.filter({$0 != i})
        }
        //print(arr)
    }
    //print(removedMultipleCharactersArray)
    for j in removedMultipleCharactersArray{
        string += String(j)
    }
    //print(removedMultipleCharactersArray)
    return string
    
//    var string: String = ""
//    for character in s.characters{
//        if !arr.contains(character){
//            string.append(character)
//        }
//    }
//    return string
}

