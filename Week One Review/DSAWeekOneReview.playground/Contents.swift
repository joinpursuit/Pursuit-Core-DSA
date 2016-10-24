//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Algorithm solving



//Big O Notation

/*
1) Write an algorithm with the following runtimes:

a) O(1)
 
b) O(n)
 
c) O(nlog(n))
 
d) O(n^2)
 
e) O(n^3)
 
f) O(n^4)

g) O(n^2 * log(n))
*/

//a)
func constant (x:Int) {
    for i in 0..<10 {
        print(x*i)
    }
}
//b) 
func linear (x:[Int]) {
    for i in x {
        print(i)
    }
}
//c)
func sort(x:[Int]) -> [Int] {
    return x.sorted(by: { (x, y) -> Bool in
        x > y
    })
}
//d) O(n * m)
func quadratic (x: [[Int]]) {
    var int = 0
    for i in 0..<x.count {
        for j in 0..<x[i].count {
            print(x[i][j])
        }
    }
}

//e)
func cubic (x:[Int]) -> Int {
    var int = 0
    for i in x {
        for j in x{
            for k in x {
                int = i + j + k
            }
        }

    }
    return int
}

//f)
func powerFour (x:[Int]) -> Int {
    var int = 0
    for i in x {
        for j in x{
            for k in x {
                for l in x{
                    int = i + j + k + l
                }
            }
        }
        
    }
    return int
}

//g
func n2logn (arr: [[Int]]) -> [[Int]] {
    var returnArr = [[Int]]()
    for interiorArr in arr {
        returnArr.append(interiorArr.sorted())
    }
    return returnArr
    /*for i in x {
        return i.sorted(by: >)
        print("\(i.sorted(by: >)) + \(i)")
    }
     */
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

func problemB(myArr: [[Int]]) {
    var otherArr = [[Int]]() //0(n)
    for i in myArr { //O(1)
        print(i[0]) //0(1)
        otherArr.append(i) //0(1)
        print(myArr[i[0]].contains(3)) //0(m)
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

func myMap(boolArray: [Bool]) -> [Bool] {
    var newArr = [Bool]()
    for bool in boolArray {
        newArr.append(!bool)
    }
    return newArr
}

func problemD(myArr: [Bool]) -> [Bool] {
    return myArr.map{!$0}
}

//Runtime: O(n)

func problemE(myArr: [Int]) -> [Int] {
    return myArr.filter{$0 > 5}.map{$0 * 3}.sorted(by: <) //n+n+nlog(n) happen in sequence and only cares about the one in sequence
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
    for numOne in arrOne { //O(n)
        for numTwo in arrTwo { //O(n)
            if arrOne.contains(numTwo) && arrTwo.contains(numOne) { //O(n) + O(n)
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

//let a = false ? 10:1_000_000
//let b: Int? = nil
//let c = b ?? -1 //nil coalescing
//var c = 0
//if let bValue = b{
//    c = bValue
//} else {
//    c = -1
//}

//Runtime: O(n)

//Arrays - the data structure
//1) You have an array of 100 Strings (24 bytes each) at memory address 0xff3c0000.

//a)What is the memory address of the 1st element? Oxff3c0000
//b)What is the memory address of the 2nd element? Oxff3c0018
//c)What is the memory address of the 4th element? Oxff3c0048
//d)What is the memory address of the 14th element? Oxff3c0138
//e)What is the memory address of the 52nd element? Oxff3c04c8
//f)What is the memory address of the 58th element? Oxff3c0558



//2) Identify and explain the runtimes for the following array operations:

var myArr = [13,41,3,13,13,12,12,1,9]

//a)
myArr.popLast()
//O(1) not O(n)

// use removeLast() and return removeLast(), it might use a for loop
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
//O(n), element will shift for setting up
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






