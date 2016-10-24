//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Algorithm solving



//Big O Notation

/*
1) Write an algorithm with the following runtimes:

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

<<<<<<< HEAD
//a
func constantA() {
    print("whatever")
}

//b
func linearA(arr: [Int]) {
    for thing in arr {
        print(thing)
    }
}

//c
func nlognA(arr: [Int]) -> [Int] {
    return arr.sorted()
}

//d
func quadraticA(arr: [[Int]]) {
    for i in 0..<arr.count {
        for j in 0..<arr.count{
            print(arr[i][j])
        }
    }
}

//e
func cubicA(arr: [[[Int]]]) {
    for x in 0..<arr.count {
        for y in 0..<arr.count {
            for z in 0..<arr.count{
                print(arr[x][y][z])
            }
        }
    }
}

//f
func quaticA(arr: [[[Int]]]) {
    for x in 0..<arr.count {
        for y in 0..<arr.count {
            for z in 0..<arr.count{
                for _ in 0..<arr.count {
                    print(arr[x][y][z])
                }
            }
        }
    }
}

//g
func nSquaredLogN(arrOfArr: [[Int]]) {
        for arr in arrOfArr {
            print(arr.sorted())
    }
=======
func sortThings(arr: [[Int]]) -> [[Int]] {
    var returnArr = [[Int]]()
    for interiorArr in arr {
        returnArr.append(interiorArr.sorted())
    }
    return returnArr
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c
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

<<<<<<< HEAD
//Runtime: O(n^2)
=======
//Runtime: O(n * m)
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

func problemC(myArr: [Int]) -> Bool {
    if myArr.count < 10_000 {
        return true
    } else {
        return myArr[3] + 4 == 8
    }
}

<<<<<<< HEAD
//Runtime: 0(1)
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
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

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

<<<<<<< HEAD
//Runtime: O(n^3 * log(n)))
=======
//Runtime: O(nlog(n))
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

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

>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c
//Runtime: O(1)

//Arrays - the data structure
//1) You have an array of 100 Strings (24 bytes each) at memory address 0x0ff3c0000.

<<<<<<< HEAD
//a)What is the memory address of the 1st element? 0ff3c0000
//b)What is the memory address of the 2nd element? 0ff3c0018
//c)What is the memory address of the 4th element? 0ff3c0048
//d)What is the memory address of the 14th element? 0ff3c0138
//e)What is the memory address of the 52nd element? 0ff3c04c8
//f)What is the memory address of the 58th element? 0ff3c0558
=======
//a)What is the memory address of the 1st element?

//0x0ff3c0000

//b)What is the memory address of the 2nd element?

//0x0ff3c0018

//c)What is the memory address of the 4th element?

//0x0ff3c0048

//d)What is the memory address of the 14th element?

//0x0ff3c0138

//e)What is the memory address of the 52nd element?
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c

//4C8

//f)What is the memory address of the 58th element?

//558

//2) Identify and explain the runtimes for the following array operations:

var myArr = [13,41,3,13,13,12,12,1,9]

//a)    O(1) because popping the last is constant.
myArr.popLast()

<<<<<<< HEAD
//b)    O(n), will have to look through the elements of the array, best case it'll be constant
myArr.contains(1)

//c     O(n), will have to look through the elements of the array, best case it'll be constant
myArr.index(of: 9)

//d     O(1), count is constant
myArr.count

//e     O(n), will have to move every element of the array one index to the right
myArr.insert(8, at: 0)

//f     O(n)
myArr.remove(at: 4)

//g     O(n), will have to go through each element to return a new array
myArr.reverse()

//h     O(nLog(n)), because Ben said
let h = myArr.sorted(by: >)

//i     O(n), map goes through all the elements
let i = myArr.map{$0 * 2}

//j     O(n), filter goes through all the elements
let j = myArr.filter{$0>0}

//k     O(n), reduce goes through all the elements
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
>>>>>>> 9674f6dda9ea41fb1a4a838e4152228fc8646f2c
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

//for i in 0..<inputArray.count {
//    for j in 0..<inputArray[i].count {
//        print(inputArray[i][j])
//    }
//}
//b) Print out each element starting with the first column and ending with the last column

for (i, array) in inputArray.enumerated() {
    for (j, number) in array.enumerated() {

    }
}

for i in 0..<inputArray[0].count {
    for j in 0..<inputArray.count {
        print(inputArray[j][i])
    }
}

print(inputArray[0][0])
print(inputArray[1][0])
print(inputArray[2][0])
print(inputArray[3][0])
print(inputArray[0][1])
print(inputArray[1][1])
print(inputArray[2][1])
print(inputArray[3][1])
print(inputArray[0][2])
print(inputArray[1][2])
print(inputArray[2][2])
print(inputArray[3][2])
print(inputArray[0][3])
print(inputArray[1][3])
print(inputArray[2][3])
print(inputArray[3][3])
print(inputArray[0][4])
print(inputArray[1][4])
print(inputArray[2][4])
print(inputArray[3][4])


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






