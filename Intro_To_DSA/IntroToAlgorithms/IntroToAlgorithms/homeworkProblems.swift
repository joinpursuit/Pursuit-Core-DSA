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
var placeholderTuple = (0, 0, 0)
	for num in myArr {
		switch num {
		case _ where num < 0: placeholderTuple.0 += 1
		case 0: placeholderTuple.1 += 1
		case _ where num > 0: placeholderTuple.2 += 1
		default: break
		}
	}
	
	return placeholderTuple
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
	guard myArr.count >= 2 else { return nil }
	let myNewArr = myArr.sorted()
	return myNewArr[1]
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(withIf x: Int) -> Bool {
	for all in 2..<x {
		if x % all == 0 {
			return false
		}
	}
	return true
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
	return String(s.characters.filter({ $0 != c }))
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
	var newString = String()
	outer: for value in s.characters {
		for x in arr {
			if x == value {
				continue outer
			}
		}
		newString += String(value)
	}
	return newString
}

