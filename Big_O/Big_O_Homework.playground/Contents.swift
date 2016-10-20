//: Big O Homework

import UIKit

func problemOne(arr: [Int]) {
    for i in 0..<1000 {
        print(i)
    }
}

//problemOne(arr:) runtime: O(n) (Linear)

func problemTwo(arr: [Int]) {
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            print("\(i), \(j)")
        }
    }
}

//problemTwo(arr:) runtime: O(n^2) (Quadratic)

func problemThree(arr: [Int]) {
    for _ in 0..<1000 {
        problemOne(arr: arr)
    }
}

//problemThree(arr:) runtime: O(n^2) (Quadratic)


func problemFour(arr: [Int]) {
    for _ in 0..<arr.count {
        problemTwo(arr: arr)
    }
}

//problemFour(arr:) runtime: O(n^3) (Compound)

func problemFive(arr: [Int]) {
    for _ in 0..<arr.count {
        problemTwo(arr: arr)
    }
    for _ in 0..<arr.count {
        problemTwo(arr: arr)
    }
}

//problemFive(arr:) runtime: O(n^4) (Compound)

func problemSix(arr: [Int]) {
    for _ in 0..<arr.count {
        for _ in 0..<arr.count {
            problemTwo(arr: arr)
        }
    }
}

//problemSix(arr:) runtime: O(n^4) (Compound)
