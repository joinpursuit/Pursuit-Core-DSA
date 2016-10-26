//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Algorithm solving



//Big O Notation


<<<<<<< HEAD
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

=======
a) O(1)
 
*/

func one(value: [Int]) -> Int {
    return value[0]
}

/*
b) O(n)
*/

func smallest(arr: [Int]) -> Int {
    var smallest = arr[0]
    for num in arr {
        if num < smallest {
            smallest = num
        }
    }
    return smallest
}
 
/*
c) O(nlog(n))
*/
func sort(arr: [Int]) -> [Int] {
    return arr.sorted(by: >)
}

/*
d) O(n^2)
*/

func quadratic(arr: [[Int]]) -> () {
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            print(arr[i][j])
        }
    }
}
//n = arr.count
//m = arr[i].count
//O(n * m)

func NSqrdTime(arr: [Int]) {
    var count = 0
    for _ in arr {
        for _ in arr {
            count += 1
        }
    }
}


//O(n * m)

 /*
e) O(n^3)
 */

func practiceFour(arr: [Int]) {
    for _ in 0...arr.count {
        NSqrdTime(arr: arr)
    }
}



/*
f) O(n^4)
*/

func practiceFive(arr: [Int]) {
    for _ in 0...arr.count {
        practiceFour(arr: arr)
    }
}

/*
g) O(n^2 * log(n))
*/
>>>>>>> 74b60d88e1113a7ee0062358f2eeaf7f3248cd43

func sortThings(arr: [[Int]]) -> [[Int]] {
    var returnArr = [[Int]]()
    for interiorArr in arr {
        returnArr.append(interiorArr.sorted())
    }
    return returnArr
}

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

//Assume the size of the first arr = the number of arrays
func problemB(myArr: [[Int]]) {
    var otherArr = [[Int]]()
    for i in myArr {  //O(n)
        print(i[0])   //O(1)
        otherArr.append(i) //O(1)
        print(myArr[i[0]].contains(3))  //O(m)
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

<<<<<<< HEAD
//Runtime: O(1)
=======

//Runtime: O(1)

//O(n)
func myMap(boolArray: [Bool]) -> [Bool] {
    var newArr = [Bool]()
    for bool in boolArray { //(O(n)
        newArr.append(!bool) //O(1)
    }
    return newArr
}
>>>>>>> 74b60d88e1113a7ee0062358f2eeaf7f3248cd43

func problemD(myArr: [Bool]) -> [Bool] {
    return myArr.map{!$0}
}

//Runtime: O(n)

func problemE(myArr: [Int]) -> [Int] {
    //return myArr.filter{$0 > 5}.map{$0 * 3}.sorted(by: <)
    let firstArr = myArr.filter{$0 > 5}
    let secondArr = firstArr.map{$0 * 3}
    return secondArr.sorted(by: <)
    
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
    for numOne in arrOne {  //O(n)
        for numTwo in arrTwo { //O(n)
            if arrOne.contains(numTwo) && arrTwo.contains(numOne) {  //O(n) + O(n) = O(n)
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

<<<<<<< HEAD
//Runtime: O(n)

//Arrays - the data-structure
//1) You have an array of 100 Strings (24 bytes each) at memory address 0ff3c0000.

//a)What is the memory address of the 1st element?  0ff3c0000
//b)What is the memory address of the 2nd element?  0ff3c0018
//c)What is the memory address of the 4th element?  0ff3c0048
//d)What is the memory address of the 14th element? 0ff3c0328
//e)What is the memory address of the 52nd element? 4c8
//f)What is the memory address of the 58th element? 558
=======
let a = false ? 10 : 1_000_000

let b: Int? = nil


//let c = b ?? -1



var c = 0
if let bValue = b {
    c = bValue
} else {
    c = -1
}


print(c)

//Runtime: O(1)

//Arrays - the data structure
//1) You have an array of 100 Strings (24 bytes each) at memory address 0x0ff3c0000.

//a)What is the memory address of the 1st element?

//0x0ff3c0000

//b)What is the memory address of the 2nd element?

//0x0ff3c0018

//c)What is the memory address of the 4th element?

//0x0ff3c0048

//d)What is the memory address of the 14th element?

//0x0ff3c0138

//e)What is the memory address of the 52nd element?
>>>>>>> 74b60d88e1113a7ee0062358f2eeaf7f3248cd43

//4C8

//f)What is the memory address of the 58th element?

//558

//2) Identify and explain the runtimes for the following array operations:

var myArr = [13,41,3,13,13,12,12,1,9]

//a)
myArr.popLast()
<<<<<<< HEAD
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
=======

//O(1)

//b)
myArr.contains(1)

//O(n)

//c
myArr.index(of: 9)

//O(n)

//d
myArr.count

//O(1)

//e
myArr.insert(8, at: 0)

//O(n)

//f
myArr.remove(at: 4)

//O(n)

//g
myArr.reverse()

//O(n)

//h
let h = myArr.sorted(by: >)

//O(nlog(n))

//i
let i = myArr.map{$0 * 2}

//O(n)

//j
let j = myArr.filter{$0>0}

//O(n)

//k
let k = myArr.reduce(0, +)
//O(n)
>>>>>>> 74b60d88e1113a7ee0062358f2eeaf7f3248cd43

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






