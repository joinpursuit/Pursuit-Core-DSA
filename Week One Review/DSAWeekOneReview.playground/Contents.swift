//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Algorithm solving



//Big O Notation


//1) Write an algorithm with the following runtimes:

//a) O(1)
func funcA(myString: String){
    for _ in 1...10{
        print(myString)
    }
}

//b) O(n)
func funcB(arr: [Int]){
    for _ in 1...arr.count{
        print("Hello")
    }
}
//c) O(nlog(n))
func funcC(arr: [Int]) -> Int{
    return arr.sorted(by: >)[0]
}
//d) O(n^2)
func funcD(arr: [Int]){
    for i in arr{
        for _ in 1...i{
            print("Hello")
        }
    }
}
//e) O(n^3)
func funcE(arr: [Int]){
    for i in arr{
        for j in 1...i{
            for _ in 0...j{
                print("Hello")
            }
        }
    }
}
//f) O(n^4)
func funcF(arr: [[Int]]){
    for i in arr{
        for j in i{
            for _ in 1...arr.count{
                for _ in 1...i.count{
                    print(j)
                }
            }
        }
    }
}
//g) O(n^2 * log(n))


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

//Runtime: O(n * m)

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

//Runtime: O(nlog(n))

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

//Runtime: O(n)

//Arrays - the data-structure
//1) You have an array of 100 Strings (24 bytes each) at memory address 0ff3c0000.

//a)What is the memory address of the 1st element?  0ff3c0000
//b)What is the memory address of the 2nd element?  0ff3c0018
//c)What is the memory address of the 4th element?  0ff3c0048
//d)What is the memory address of the 14th element? 0ff3c0328
//e)What is the memory address of the 52nd element? 4c8
//f)What is the memory address of the 58th element? 558



//2) Identify and explain the runtimes for the following array operations:

var myArr = [13,41,3,13,13,12,12,1,9]

//a)
myArr.popLast()
// O(1)
//b)
myArr.contains(1)
// O(n)
//c
myArr.index(of: 9)
// O(n)
//d
myArr.count
// O(n)
//e
myArr.insert(8, at: 0)
// O(n)
//f
myArr.remove(at: 4)
// O(n)
//g
myArr.reverse()
// O(n)
//h
let h = myArr.sorted(by: >)
// O(nlog(n))
//i
let i = myArr.map{$0 * 2}
// O(n)
//j
let j = myArr.filter{$0>0}
// O(n)
//k
let k = myArr.reduce(0, +)
// O(n)

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






