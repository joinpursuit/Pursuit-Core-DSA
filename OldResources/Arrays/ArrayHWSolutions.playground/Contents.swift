//: Playground - noun: a place where people can play

import Foundation


//Write an algorithm that moves every element in an array of Ints one space to the left

//Sample input: [0,1,2,3,4,5]
//Sample output: [1,2,3,4,5,0]

func problemOne(arr: [Int]) -> [Int] {
    var newArr = [Int]()
    for i in 1...arr.count {
        newArr.append(arr[i%arr.count])
    }
    return newArr
}

print("problemOne")
print("Input: [0,1,2,3,4,5]")
print("Output: \(problemOne(arr: [0,1,2,3,4,5]))")

print("Input: [3,14,-24,0,2,4,1,4,9]")
print("Output: \(problemOne(arr: [3,14,-24,0,2,4,1,4,9]))")

print("Input: [3,2]")
print("Output: \(problemOne(arr: [3,2]))")

print("")


//Write an algorithm that moves every element in an array of Ints (x) spaces to the left

//Sample input: [0,1,2,3,4,5], 3
//Sample output: [3,4,5,0,1,2]

func problemTwo(arr: [Int], x: Int) -> [Int] {
    let startingIndex = x
    var newArr = [Int]()
    for i in startingIndex..<startingIndex+arr.count {
        newArr.append(arr[i%arr.count])
    }
    return newArr
}

func otherTwo(arr: [Int], x: Int) -> [Int] {
    var newArr = [Int]()
    let startingIndex = x%arr.count
    for i in startingIndex..<startingIndex + arr.count {
        newArr.append(arr[i%arr.count])
    }
    
    return newArr
}
print("Problem Two")
print("Input: [0,1,2,3,4,5], 3")
print("Output: \(problemTwo(arr: [0,1,2,3,4,5], x: 3))")

print("Input: [42,1,-42,1,3,6,1],4")
print("Output: \(problemTwo(arr: [42,1,-41,-1,3,6,0], x: 4))")

print("Input: [4,2,0,14,1,-92,100_000_000],40")
print("Output: \(problemTwo(arr: [4,2,0,14,1,-92,100_000_000], x: 40))")



//Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
// A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

//Sample input 1: "abcde”, “eabcd"
//Sample output 1: true

//Sample input 2: "abcde", "abced"
//Sample output 2: false

//Sample input 3: "abc", "a"
//Sample output 3: false

func problemThree(stringOne: String, stringTwo: String) -> Bool {
    let rotate = {(a: String) -> String in
        return a.substring(from: a.index(a.startIndex, offsetBy: 1)) + a.substring(to: a.index(a.startIndex, offsetBy: 1))
    }
    var rotatedStringOne: String = rotate(stringOne)
    while rotatedStringOne != stringOne {
        if rotatedStringOne == stringTwo {
            return true
        }
        rotatedStringOne = rotate(rotatedStringOne)
    }
    return false
}

print("")
print("Problem Three")
print("Input: \"abcde\", \"eabcd\"")
print("Output: \(problemThree(stringOne: "abcde",stringTwo: "eabcd"))")

print("Input: \"abcde\", \"abced\"")
print("Output: \(problemThree(stringOne: "abcde",stringTwo: "abced"))")

print("Input: \"abc\", \"a\"")
print("Output: \(problemThree(stringOne: "abc",stringTwo: "a"))")

print("Input: \"Hello there!\", \"lo there!Hel\"")
print("Output: \(problemThree(stringOne: "Hello there!",stringTwo: "lo there!Hel"))")

print("Input: \"Well, then.\", \"Well, thne.\"")
print("Output: \(problemThree(stringOne: "Well, then.",stringTwo: "Well, thne."))")

print("")

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
    let rightDiag = arr[0][0] + arr[1][1] + arr[2][2]
    let leftDiag = arr[0][2] + arr[1][1] + arr[2][0]
    return abs(leftDiag-rightDiag)
}

print("Problem Four")
print("Input: [[1,2,3],[4,5,6],[11,8,9]]")
print("Output: \(problemFour(arr:[[1,2,3],[4,5,6],[11,8,9]]))")

print("Input: [[3,5,2],[3,5,2],[3,5,2]]")
print("Output: \(problemFour(arr:[[3,0,2],[3,5,2],[3,345,2]]))")

print("Input: [[4,15,1],[11,2,2],[91,-1,-5]]")
print("Output: \(problemFour(arr:[[4,15,1],[11,2,2],[91,-1,-5]]))")



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
    var rightDiag = 0
    var leftDiag = 0
    for i in 0..<arr.count {
        rightDiag += arr[i][i]
        leftDiag += arr[arr.count - 1 - i][i]
    }
    return abs(leftDiag - rightDiag)
}

print("")
print("Problem Five")

print("Input: [[4,1,2,5],[3,1,9,2],[4,1,3,8],[9,2,4,3]]")
print("Output: \(problemFive(arr: [[4,1,2,5],[3,1,9,2],[4,1,3,8],[9,2,4,3]]))")

print("Input: [[2,4],[6,7]]")
print("Output: \(problemFive(arr: [[2,4],[6,7]]))")

print("Input: [[1,5,2,3,6],[123,23,132,1,-1],[924,29,19-13,2],[190,10,313,12,0],[-19,13,102,12,-111]]")
print("Output: \(problemFive(arr: [[1,5,2,3,6],[123,23,132,1,-1],[924,29,19-13,2],[190,10,313,12,0],[-19,13,102,12,-111]]))")


