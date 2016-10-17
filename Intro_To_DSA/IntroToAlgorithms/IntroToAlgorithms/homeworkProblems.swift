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
  let a = myArr.filter{ $0 < 0 }.count
  let b = myArr.filter{ $0 == 0 }.count
  let c = myArr.filter{ $0 > 0 }.count
  return (a,b,c)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
  guard myArr.count > 1 else { return nil }
  return myArr.sorted()[1]
}

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
    i += 1
  }
  return true
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
  var returnThis = ""
  for char in s.characters {
    if char != c {
      returnThis.append(char)
    }
  }
  return returnThis
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
  var buffer = ""
  var returningString = ""
  for i in arr {
    if !buffer.contains(String(i)) {
      buffer.append(i)
    }
  }
  
  for i in s.characters {
    if !buffer.contains(String(i)) {
      returningString.append(i)
    }
  }
  return returningString
}

