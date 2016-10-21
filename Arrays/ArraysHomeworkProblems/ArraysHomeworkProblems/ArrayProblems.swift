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
    var output = [Int]()
    for i in 1..<arr.count {
        output.append(arr[i])
    }
    output.append(arr[0])
    return output
}


//Problem Two
//Write an algorithm that moves every element in an array of Ints (x) spaces to the left

//Sample input: [0,1,2,3,4,5], 3
//Sample output: [3,4,5,0,1,2]


func problemTwo(arr: [Int], x: Int) -> [Int] {
    var output = [Int]()
    let index = x % arr.count
    for i in index..<arr.count {
        output.append(arr[i])
    }
    for i in 0..<index {
        output.append(arr[i])
    }
    return output
}

//Problem Three
//Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
// A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

//Sample input 1: "abcde”, “eabcd"
//Sample output 1: true

//Sample input 2: "abcde", "abced"
//Sample output 2: false

//Sample input 3: "abc", "a"
//Sample output 3: false

func problemThree(strOne: String, strTwo: String) -> Bool {
    if strOne.characters.count != strTwo.characters.count { return false }
    
    var theyMatch = false
    var strOneOffsetNum = 0
    var strTwoOffsetNum = 0
    var currentStrOneIndex = strOne.startIndex
    var currentStrTwoIndex = strTwo.startIndex
    
    //go through each letter in strOne
    while currentStrOneIndex < strOne.endIndex {
        //if letters match, look at the next letters of both strings
        if strOne[currentStrOneIndex] == strTwo[currentStrTwoIndex] {
            theyMatch = true
            strOneOffsetNum += 1
            currentStrOneIndex = strOne.index(strOne.startIndex, offsetBy: strOneOffsetNum)
            strTwoOffsetNum += 1
            currentStrTwoIndex = strTwo.index(strTwo.startIndex, offsetBy: strTwoOffsetNum)
        } else {
            //if letters don't match, look at the next letter of strOne
            theyMatch = false
            strOneOffsetNum += 1
            currentStrOneIndex = strOne.index(strOne.startIndex, offsetBy: strOneOffsetNum)
        }
    }
    
    //if by the end of strOne, the letters haven't started matching, return false
    if !theyMatch { return false }
    
    //keep going through strTwo, return to the beginning of strOne
    strOneOffsetNum = 0
    currentStrOneIndex = strOne.index(strOne.startIndex, offsetBy: strOneOffsetNum)
    
    while currentStrTwoIndex < strTwo.endIndex {
        if strOne[currentStrOneIndex] == strTwo[currentStrTwoIndex] {
            theyMatch = true
            strOneOffsetNum += 1
            currentStrOneIndex = strOne.index(strOne.startIndex, offsetBy: strOneOffsetNum)
            strTwoOffsetNum += 1
            currentStrTwoIndex = strTwo.index(strTwo.startIndex, offsetBy: strTwoOffsetNum)
        } else {
            return false
        }
    }
    return true
}


//Problem Four
//Given a square matrix of size 3 x 3 , calculate the absolute value of the difference between the sums of its diagonals.

//Input visualization
/*
 1  2  3
 4  5  6
 11  8  9
 */


//Sample Input: [[1,2,3],[4,5,6],[11,8,9]]
//Sample Output: 4

//|(1 + 5 + 9) - (3 + 5 + 11)| = |15 - 19| = |-4| = 4

func problemFour(arr: [[Int]]) -> Int {
    let size = arr.count
    var topLeftToBottomRightSum = 0
    var topRightToBottomLeftSum = 0
    
    var row = 0
    var column = size - 1
    
    for i in 0..<size {
        topLeftToBottomRightSum += arr[i][i]
        topRightToBottomLeftSum += arr[row][column]
        row += 1
        column -= 1
    }
    
    let diff = topLeftToBottomRightSum - topRightToBottomLeftSum
    if diff < 0 {
        return 0 - diff
    }
    return diff
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
    let size = arr.count
    var topLeftToBottomRightSum = 0
    var topRightToBottomLeftSum = 0
    
    var row = 0
    var column = size - 1
    
    for i in 0..<size {
        topLeftToBottomRightSum += arr[i][i]
        topRightToBottomLeftSum += arr[row][column]
        row += 1
        column -= 1
    }
    
    let diff = topLeftToBottomRightSum - topRightToBottomLeftSum
    if diff < 0 {
        return 0 - diff
    }
    return diff
}

