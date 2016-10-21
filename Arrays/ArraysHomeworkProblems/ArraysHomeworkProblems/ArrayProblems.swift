//
//  ArrayProblems.swift
//  ArraysHomeworkProblems
//
//  Created by C4Q  on 10/20/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation
import UIKit

//Problem One
//Write an algorithm that moves every element in an array of Ints one space to the left

//Sample input: [0,1,2,3,4,5]
//Sample output: [1,2,3,4,5,0]

func problemOne(arr: [Int]) -> [Int] {
    var array = arr
    for i in 0..<array.count{
        let temp = array[i]
        if i == array.count - 1 {
            array[i] = temp
        } else {
            array[i] = array[i+1]
            array[i+1] = temp
        }
    }
    return array
    // var newArr = [Int]()
    //for i in 1...arr.count{
        //newArr.append(arr[i%arr.count]
    //}
    //return newArr
}


//Problem Two
//Write an algorithm that moves every element in an array of Ints (x) spaces to the left

//Sample input: [0,1,2,3,4,5], 3
//Sample output: [3,4,5,0,1,2]
//XCTAssert(problemTwo(arr: [42,1,-42,1,3,6,1], x: 4) == [3, 6, 1, 42, 1, -41, -1])
//XCTAssert(problemTwo(arr: [4,2,0,14,1,-92,100_000_000], x: 40) == [-92, 100000000, 4, 2, 0, 14, 1])

func problemTwo(arr: [Int], x: Int) -> [Int] {
    
    var array = arr
    for i in 0..<array.count - x{
        let temp = array[i]
        if i == (x) {
            array[i] = temp
        } else if i < x {//&& (array.count - x + i < array.count)  { //0,1,2
            array[i] = arr[array.count - x + i] //7-3+0=4; 7-3+1=5, 7-3+2=6
            array[array.count - x + i] = temp
        } else if i > x {
            array[i] = arr[i-x-1]
            //array[i] = arr[i-x+1]
        }
    }
    return array
    /*
    let startingIndex = x
    var newArr = [Int]()
    for i in startingIndex..<startingIndex + arr.count {
        newArr.append(arr[i%arr.count])
    }
    return newArr
    */
    /*
    var newArr = [Int]()
    let startingIndex = x%arr.count
    for i in startingIndex..<startingIndex + arr.count {
        print(i%arr.count)
        newArr.append(i%arr.count)
    }
    return newArr
    */
 }

//Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
// A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

//Sample input 1: "abcde”, “eabcd"
//Sample output 1: true

//Sample input 2: "abcde", "abced"
//Sample output 2: false

//Sample input 3: "abc", "a"
//Sample output 3: false

func problemThree(stringOne: String, stringTwo: String) -> Bool {
    let rotate = {(a:String) -> String in
        return a.substring(from: a.index(a.startIndex, offsetBy: 1)) + a.substring(to: a.index(a.startIndex, offsetBy: 1))
    }
    var rotatedStringOne: String = rotate(stringOne)
    while rotatedStringOne != stringOne{
        if rotatedStringOne == stringTwo{
            return true
        }
        rotatedStringOne = rotate(rotatedStringOne)
    }
    return false
}

/*
func problemTwoCharacters(arr: [Character], x: Int) -> String{
    var string = ""
    var array = arr
    for i in 0..<array.count - x{
        let temp = array[i]
        if i == (x) {
            array[i] = temp
        } else if i < x {//&& (array.count - x + i < array.count)  { //0,1,2
            array[i] = arr[array.count - x + i] //7-3+0=4; 7-3+1=5, 7-3+2=6
            array[array.count - x + i] = temp
        } else if i > x {
            array[i] = arr[i-x-1]
            //array[i] = arr[i-x+1]
        }
    }
    for Character in array{
        string += String(Character)
    }
    return string
}

func problemThree(strOne: String, strTwo: String) -> Bool {
    var characters = [Character]()
    for c in strOne.characters {
        characters.append(c)
    }
    for i in strOne.characters.count{
        var s = problemTwoCharacters(arr: characters, x: i)
        if s == strTwo {
            return true
        }
    }

    
    return false
}
*/

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
    var sumOfForward = 0
    var sumOfBackward = 0
    for row in 0..<arr.count {
        for column in 0..<arr.count {
            if row == column {
                sumOfForward += arr[row][row]
            }
            if row + column == (arr.count - 1){
                sumOfBackward += arr[row][column]
            }
        }
    }
   return abs(sumOfForward - sumOfBackward)
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
    var sumOfForward = 0
    var sumOfBackward = 0
    for row in 0..<arr.count {
        for column in 0..<arr.count {
            if row == column {
                sumOfForward += arr[row][row]
            }
            if row + column == (arr.count - 1){
                sumOfBackward += arr[row][column]
            }
        }
        /*
        var rightDiag = 0
        var leftDiag = 0
        for i in 0..<arr.count{
            rightDiag += arr[i][i]
            leftDiag += arr[arr.count-1-i][i]
        }
        return abs(leftDiag - rightDiag)
         */
    }
    return abs(sumOfForward - sumOfBackward)
}

