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
func oneA(a: Int) -> Int {
  var b = a
  for _ in 0...9999999999999999 {
    for i in 0..<298734234 {
      b += (83972498734978235 * i)
    }
  }
  return a
}

func oneB(b: [Int]) -> [Int] {
  var returnThis = [Int]()
  for i in b {
    returnThis.append(i)
  }
  return returnThis
}

func oneC(c: [Int]) -> [Int] {
  return c.sorted(by: >)
}

func oneD(d: [Int]) -> Int {
  var returnThis = 0
  for i in d {
    for j in d {
      returnThis += (i*j)
    }
  }
  return returnThis
}

func oneE(e: [Int]) -> [Int] {
  var returnThis = [Int]()
  for i in e {
    let a = i + i
    for j in e {
      let b = a + j + j
      for k in e {
        let c = b + a + k + k
        returnThis.append(c)
      }
    }
  }
  return returnThis
}

func oneF(f: [Int]) -> Int {
  var returnThis = 0
  for _ in f {
    for _ in f {
      for _ in f {
        for _ in f{
          returnThis += 0
        }
      }
    }
  }
  return returnThis
}

func oneG(g: [[Int]]) -> [[Int]] {
  var returnThis = [[Int]]()
  for ar in g {
    returnThis.append(ar.sorted(by: >))
  }
  return returnThis
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
  var otherArr = [[Int]]()
  for i in myArr {
    print(i[0])
    otherArr.append(i)
    print(myArr[i[0]].contains(3)) //O(m) the size of the array. myArr at index = an array with infinite size
  }
}

//Runtime: O(n * m) which is quadratic. Use n and m because they can be different, but also can scale to infinity

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

//Runtime:O(n)

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

//Runtime: O(1)

//Arrays - the data structure
//1) You have an array of 100 Strings (24 bytes each) at memory address 0x0ff3c0000.

//a)What is the memory address of the 1st element?  0x0ff3c0000
//b)What is the memory address of the 2nd element?  0x0ff3c0018
//c)What is the memory address of the 4th element?  0x0ff3c0048
//d)What is the memory address of the 14th element? 0x0ff3c0138
//e)What is the memory address of the 52nd element? 0x0ff3c04C8
//f)What is the memory address of the 58th element? 0x0ff3c0558



//2) Identify and explain the runtimes for the following array operations:

var myArr = [13,41,3,13,13,12,12,1,9]

//a) O(1)
myArr.popLast()

//b) O(n)
myArr.contains(1)

//c O(n)
myArr.index(of: 1)

//d O(1)
myArr.count

//e O(n)
myArr.insert(8, at: 0)

//f O(n)
myArr.remove(at: 4)

//g O(n)
myArr.reverse()

//h O(nlog(n))
let h = myArr.sorted(by: >)

//i O(n)
let i = myArr.map{$0 * 2}

//j O(n)
let j = myArr.filter{$0>0}

//k O(n)
let k = myArr.reduce(0, +)


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






