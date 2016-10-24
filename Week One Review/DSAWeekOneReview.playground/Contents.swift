//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Algorithm solving



//Big O Notation


//1) Write an algorithm with the following runtimes:

//a) O(1) - constant
func printHi() {
    for _ in 0...10 {
        print("Hi!")
    }
}
//b) O(n) - linear

let arr = [1,2,3,4,5]
func firstArr(){
    for i in 0..<arr.count {
        print(arr[i])
    }}

//c) O(nlog(n)) - linearithmic


func sort(arr: [Int]) -> [Int] {
    return arr.sorted(by: >)
}


//d) O(n^2) - quadratic
//nested for loops
func addingStuffToArr(){
    for _ in 0..<arr.count {
        let newArr = arr.reduce(0,+)
        print(newArr)
    }
}
//O(n * m)
// n = arr.count
// m = arr[i].count


print("\n")
let count = 6
//e) O(n^3) - cubic
func starsGalore(){
    for _ in 0...count {
        for _ in 0...count{
            for _ in 0...count {
                print("*", terminator: " ")
            }
        }
    }
}
//starsGalore()

//f) O(n^4) - quadratic?
func moreStars() {
    for _ in 0..<arr.count {
        starsGalore()
    }
}
//g) O(n^2 * log(n)) - quadratic x log?

func sortThings(arr: [[Int]]) -> [[Int]] {
    var returnArr = [[Int]]()
    for interiorArr in arr {
        returnArr.append(interiorArr.sorted())
    }
    return returnArr
}
//O(m * n * logn)



/****************************************************************************************/

/*
 2) Identify the runtimes of the following algorithms
 */

//Runtime: O(n^2) = quadratic
func problemA(myString: String) {
    for c in myString.characters {
        for d in myString.characters {
            print(c,d)
        }
    }
}



//Runtime: O(n * m)/O(n^2) - quadratic
func problemB(myArr: [[Int]]) {
    var otherArr = [[Int]]()
    for i in myArr { //O(n)
        print(i[0]) //O(1)
        otherArr.append(i) //O(1)
        print(myArr[i[0]].contains(3)) //O(m) - how big the first arr is
    }
}



//Runtime: O(1) - constant
func problemC(myArr: [Int]) -> Bool {
    if myArr.count < 10_000 { //O(1)
        return true
    } else {
        return myArr[3] + 4 == 8 //O(1)
    }
}

//Runtime: O(n) - linear
func problemD(myArr: [Bool]) -> [Bool] {
    return myArr.map{!$0} //O(n)
}



//Runtime: O(n * m * log n) -> O(nlog(n))
func problemE(myArr: [Int]) -> [Int] {
    return myArr.filter{$0 > 5}.map{$0 * 3}.sorted(by: <)
    //because this is in sequence this doesnt mean these are four loops (no need to multiply) --> add when do things in sequence
    
    /* n + n + n(log(n))
     let firstArr = myArr.filter{$0 > 5} //O(n)
     let secondArr = firstArr.map{$0 * 3} //O(n)
     let secondArr.sorted(by: <) //O(n(log(n))
     */
}



//Runtime: O(n) - linear
func problemF(myArr: Int) {
    for i in 0..<myArr { //O(n)
        print(i)
    }
}



//Runtime:O(n)?? - linear
func problemG(myArr: [[[[[[String]]]]]]) {
    print(myArr[0][0][0][0][0].contains("hi!")) //O(n)
}



//Runtime: O(n^2) + O(n^2) - quadratic
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



//Runtime: O(1) - constant
func problemI(isEnabled: Bool) {
    for _ in 0..<(isEnabled ? 10 : 1_000_000) { //O(1) constant, range up to 10 or 1mil
        print("it's on!")
    }
}




//Arrays - the data structure
//1) You have an array of 100 Strings (24 bytes each) at memory address 0ff3c0000.

//a)What is the memory address of the 1st element?
//0ff3c0000

//b)What is the memory address of the 2nd element?
//0ff3c0018

//c)What is the memory address of the 4th element?
//0ff3c0048

//d)What is the memory address of the 14th element?
//138

//e)What is the memory address of the 52nd element?
//-4C8

//f)What is the memory address of the 58th element?
//-558



//2) Identify and explain the runtimes for the following array operations:

var myArr = [13,41,3,13,13,12,12,1,9]

//a)
myArr.popLast() //O(1)

//b)
myArr.contains(1) //O(n)

//c
myArr.index(of: 9) //O(n)
//iterates looks for value, and returns nil if not present

//d
myArr.count //O(1)
//not linear because not a method? computed property of array class

//e
myArr.insert(8, at: 0) //O(n)

//f
myArr.remove(at: 4) //O(n)

//g
myArr.reverse() //O(n)

//h
let h = myArr.sorted(by: >) //O(nlog(n))

//i
let i = myArr.map{$0 * 2} //O(n)

//j
let j = myArr.filter{$0>0} //O(n)

//k
let k = myArr.reduce(0, +) //O(n)


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


func arrayStuff(inputArr: [[Int]], command: Character) {
    
    func a() {
        for _ in 0..<inputArr.count {
            for j in 0...inputArr.count {
                print("\(inputArr[j])")
            }
        }
    }
    
    func b(inputArr: [[Int]]) {
        for i in 0...inputArr.count {
            print("\n")
            for j in 0..<inputArr.count {
                print("\(inputArr[j][i])")
            }
        }
    }
    
    func c(inputArr: [[Int]]) {
        for i in 0..<inputArr.count {
            print("\(inputArr[i][i])", terminator: " ")
        }
        print("\n")
        for i in 0..<inputArr.count {
            print("\(inputArr[i][inputArr.count - i])", terminator: " ")
        }
    }

    /*
     switch command {
     case "a":
     return a()
     case "b":
     return b()
     case "c":
     return c()
     case "d":
     return d()
     case "e":
     return e()
     default:
     break;
     }
     */
}



func a(inputArr: [[Int]]) {
    for i in 0..<inputArr.count {
        for j in 0...inputArr.count {
            if i == 0 || i == inputArr.count {
                print("\(inputArr[i][j])", terminator: " ")
                print()
            }
            
        }
    }
}

    a(inputArr: inputArray)


//4) Sudoku
/*
 Rules: The is a 9x9 gird where the objective is to place the numbers 1 to 9 in the empty squares so that each row, each column and each 3x3 box contains the same number only once.
 
 Sudoku Example: https://github.com/C4Q/AC-DSA/blob/master/Arrays/Images/sudokuExamples.png
 
 Exercise: Write a function that will check whether or not a fully filled sudoku board is a valid solution.
 
 Input: 2D Array of Ints ranging from 1-9
 Output: True or false
 */

func checkSudokuBoard(sudokuBoard:[[Int]]) -> Bool {
    for i in 0..<sudokuBoard.count {
        for j in 0..<sudokuBoard[i].count {
            
        }
    }
    return true
}






