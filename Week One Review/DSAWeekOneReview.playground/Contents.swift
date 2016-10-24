//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Algorithm solving



//Big O Notation

/*
1) Write an algorithm with the following runtimes:

a) O(1)
func one(arr: [Int]) -> Int {
    return arr[0]
 }
 
 
b) O(n)
 
 func two(arr: [Int]) {
    for anInt in arr {
        print(anInt)
    }
 }
 
 
c) O(nlog(n))
 
 func sort(arr: [Int]) -> [Int] {
 
    return arr.sorted(by: >)
 
 }
 

 
d) O(n^2)
 
 func four(arr1: [Int], arr2: [Int]) -> (Int,Int) {
    for i in 0..<arr1.length {
        for j in 0..<arr2.length {
            return (arr1[i], arr2[j])
        }
    }
 }
 
 
e) O(n^3)
 
 func five(arr: [Int]) {
    for i in 0..<arr.count {
        for j in 0..arr.count {
            for k in 0..arr.count {
                print(arr[i],arr[i]+1,arr[i]-1)
            }
        }
    }
 }
 
f) O(n^4)
 
 func six(arr: [Int]) {
    for _ in 0...arr.count {
        five(arr: arr)
    }
 }

g) O(n^2 * log(n))
 
 func sortThings(arr: [[Int]]) -> [[Int]] {
    var returnArr = [[Int]]()
    for interiorArr in arr {
        returnArr.append(interiorArr.sorted())
        }
    }
 
 }
 
 
*/

/*
2) Identify the runtimes of the following algorithms
*/

func problemA(myString: String) {
    for c in myString.characters {
        for d in myString.characters {
            print(c,d)
        }
    }
}
 
//Runtime: O(n^2)

func problemB(myArr: [[Int]]) {
    var otherArr = [[Int]]()
    for i in myArr {
        print(i[0])
        otherArr.append(i)
        print(myArr[i[0]].contains(3))
    }
}

//Runtime: O(n^2)

func problemC(myArr: [Int]) -> Bool {
    if myArr.count < 10_000 {
        return true
    } else {
        return myArr[3] + 4 == 8
    }
}

//Runtime: O(1)

func problemD(myArr: [Bool]) -> [Bool] {
    return myArr.map{!$0}
}

//Runtime: O(n)

func problemE(myArr: [Int]) -> [Int] {
    return myArr.filter{$0 > 5}.map{$0 * 3}.sorted(by: <)
}

//Runtime: O(n*log(n))

func problemF(myArr: Int) {
    for i in 0..<myArr {
        print(i)
    }
}

//Runtime: O(n)

func problemG(myArr: [[[[[[String]]]]]]) {
    print(myArr[0][0][0][0][0].contains("hi!"))
}

//Runtime: O(n)

func problemH(arrOne: [Int], arrTwo: [Int]) {
    var counter = 0
    for numOne in arrOne {
        for numTwo in arrTwo {
            if arrOne.contains(numTwo) && arrTwo.contains(numOne) {
                counter += 1
            }
        }
    }
}

//Runtime: O(n^3)

func problemI(isEnabled: Bool) {
    for _ in 0..<(isEnabled ? 10 : 1_000_000) {
        print("it's on!")
    }
}

//Runtime: O(1)

//Arrays - the data structure
//1) You have an array of 100 Strings (24 bytes each) at memory address 0ff3c0000.

//a)What is the memory address of the 1st element?
    //0ff3c0000
//b)What is the memory address of the 2nd element?
    //0ff3c0018
//c)What is the memory address of the 4th element?
    //0ff3c0048
//d)What is the memory address of the 14th element?
    //0ff3c0198
//e)What is the memory address of the 52nd element?
    //0ff3c0768
//f)What is the memory address of the 58th element?
    //0ff3c0858



//2) Identify and explain the runtimes for the following array operations:

var myArr = [13,41,3,13,13,12,12,1,9,8]

//a)
myArr.popLast()

//O(1)
//accessing an element in an array takes constant time

//b)
myArr.contains(1)
//O(n)
// .contains method take linear time because it searches through the array once

//c
myArr.index(of: 9)
//O(n)
//to find the index of a given element takes linear time because it has to search through the whole array

//d
myArr.count
//O(1)

//e
myArr.insert(8, at: 0)
//O(n)
//inserting an element at a given index takes linear time because the array has to shift right for all the elements after that by one index

//f
myArr.remove(at: 4)
//O(n)
//removing an element at a given index takes linear time because the array has to shift left for all the elements after that by one index

//g
myArr.reverse()
//O(n)
//starts with the back and shifts everything
//h
let h = myArr.sorted(by: >)
//O(n*log(n))

//i
let i = myArr.map{$0 * 2}
//O(n)
//it has to go through all of the elements in an array

//j
let j = myArr.filter{$0>0}
//O(n)
//it has to go through all of the elements in an array

//k
let k = myArr.reduce(0, +)
//O(n)


//3) Given the array below write code that does the following:

let inputArray: [[Int]] = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20]
]

//a) Print out each element starting with the first row and ending with the last row
//b) Print out each element starting with the first column and ending with the last column
//c) Print out each diagonal
//d) Print out only numbers on the border
//e) Print out only numbers not on the border


//4) Sudoku
/*
Rules: The is a 9x9 gird where the objective is to place the numbers 1 to 9 in the empty squares so that each row, each column and each 3x3 box contains the same number only once.

Sudoku Example: https://github.com/C4Q/AC-DSA/blob/master/Arrays/Images/sudokuExamples.png
 
Exercise: Write a function that will check whether or not a fully filled sudoku board is a valid solution.

Input: 2D Array of Ints ranging from 1-9
Output: True or false
func checkSudokuBoard(sudokuBoard:[[Int]]) -> Bool {
    return true
}

*/






