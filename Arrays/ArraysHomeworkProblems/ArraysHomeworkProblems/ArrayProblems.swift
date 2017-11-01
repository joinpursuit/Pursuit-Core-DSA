//
//  ArrayProblems.swift
//  ArraysHomeworkProblems
//
//  Created by C4Q  on 10/20/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Problem One
//Write an algorithm that moves every element in an array of Ints one space to the left

//Sample input: [0,1,2,3,4,5]
//Sample output: [1,2,3,4,5,0]

func problemOne(arr: [Int]) -> [Int] {
    //move first element to the last, and then all the elements are in -1 space
    //maybe save the first element, shift the rest, then put the first in the last?
    let firstElement = arr[0]
    var newArr = arr
    newArr.remove(at: 0)
    newArr.append(firstElement)

    return newArr
}


//Problem Two
//Write an algorithm that moves every element in an array of Ints (x) spaces to the left

//Sample input: [0,1,2,3,4,5], 3
//Sample output: [3,4,5,0,1,2]

func problemTwo(arr: [Int], x: Int) -> [Int] {
    var newArr = arr
    for _ in 0..<x {
        newArr = problemOne(arr: newArr)
    }
    return newArr
}

//Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
// A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

//Sample input 1: "abcde”, “eabcd"
//Sample output 1: true

//Sample input 2: "abcde", "abced"
//Sample output 2: false

//Sample input 3: "abc", "a"
//Sample output 3: false

func problemThree(strOne: String, strTwo: String) -> Bool {
    //if counts are different, then they're not equal
    if strOne.count != strTwo.count {
        return false
    }
    
    //create a closure that does what problem one does, where you shift every element to left by one space, but for strings; put it in a closure because i didn't need to make another function (only had one purpose)
    let shiftingClosure = {(stringArr: [Character]) -> [Character] in
        let firstElement = stringArr[0]
        var newArr = stringArr
        newArr.remove(at: 0)
        newArr.append(firstElement)
        return newArr
    }
    
    //turned string into an array of characters
    var strArrOne = Array(strOne)
    
    //shifted all the letters at least once, since the rotated is still in order
    for _ in 0..<strOne.count {
        strArrOne = shiftingClosure(strArrOne)
        if String(strArrOne) == strTwo {
            return true
        }
    }
    
    //false if not rotated
    return false
}


//Problem Four
//Given a square matrix of size 3 x 3 , calculate the absolute value of the difference between the sums of its diagonals.
//the difference of the sums of the diagonals -> return |sumOfDiagonalTwo - sumOfDiagonalTwo|

//Input visualization
/*
  1  2  3
  4  5  6
 11  8  9
 */


//Sample Input: [[1,2,3],
//               [4,5,6],
//               [11,8,9]]
//Sample Output: 4

//|(1 + 5 + 9) - (3 + 5 + 11)| = |15 - 19| = |-4| = 4

func problemFour(arr: [[Int]]) -> Int {
    var sumOfDiagonalOne = 0
    var sumOfDiagonalTwo = 0
    
    for index in 0..<arr.count {
        sumOfDiagonalOne += arr[index][index]
        sumOfDiagonalTwo += arr[index][arr[index].count - 1 - index]
    }
    
    let differenceOfDiagonals = Int(abs(Int32(sumOfDiagonalOne) - Int32(sumOfDiagonalTwo)))
    
    return differenceOfDiagonals
}


//Problem Five
//Given a square matrix of size n x n , calculate the absolute value of the difference between the sums of its diagonals.

//Input visualization
/*
 4 1 2 5 
 3 1 9 2
 4 1 3 8
 9 2 4 3
 */

//Sample Input: [[4,1,2,5],[3,1,9,2],[4,1,3,8],[9,2,4,3]]
//Sample Output: 13

//|(4 + 1 + 3 + 3) - (5 + 9 + 1 + 9)| = |11 - 24| = |-13| = 13

func problemFive(arr: [[Int]]) -> Int {
    return problemFour(arr: arr)
}

