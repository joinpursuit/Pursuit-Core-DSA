###Big O Homework

##Instructions

Work on these problems in your fork of the AC-DSA repo.  Add the runtimes below, then push your commits up.  If you have not yet made a pull request, make a pull request against AC-DSA.

```swift
func problemOne(arr: [Int]) {
    for i in 0..<1000 {
        print(i)
    }
}
```

<<<<<<< HEAD
problemOne(arr:) runtime: O(1)
=======
problemOne(arr:) runtime: 
>>>>>>> 4c128da1e326da839fa1e7f5faecc7ca2d7c6a68


```swift
func problemTwo(arr: [Int]) {
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            print("\(i), \(j)")
        }
    }
}
```

<<<<<<< HEAD
problemTwo(arr:) runtime: O(1)
=======
problemTwo(arr:) runtime: 
>>>>>>> 4c128da1e326da839fa1e7f5faecc7ca2d7c6a68


```swift
func problemThree(arr: [Int]) {
    for _ in 0..<1000 {
        problemOne(arr: arr)
    }
}
```

<<<<<<< HEAD
problemThree(arr:) runtime: O(1)
=======
problemThree(arr:) runtime: 
>>>>>>> 4c128da1e326da839fa1e7f5faecc7ca2d7c6a68


```swift
func problemFour(arr: [Int]) {
    for _ in 0..<arr.count {
        problemTwo(arr: arr)
    }
}
```

<<<<<<< HEAD
problemFour(arr:) runtime: O(1)
=======
problemFour(arr:) runtime: 
>>>>>>> 4c128da1e326da839fa1e7f5faecc7ca2d7c6a68


```swift
func problemFive(arr: [Int]) {
    for _ in 0..<arr.count {
        problemTwo(arr: arr)
    }
    for _ in 0..<arr.count {
        problemTwo(arr: arr)
    }
}
```

<<<<<<< HEAD
problemFive(arr:) runtime: O(1)
=======
problemFive(arr:) runtime: 
>>>>>>> 4c128da1e326da839fa1e7f5faecc7ca2d7c6a68


```swift
func problemSix(arr: [Int]) {
    for _ in 0..<arr.count {
        for _ in 0..<arr.count {
            problemTwo(arr: arr)
        }
    }
}
```

<<<<<<< HEAD
problemSix(arr:) runtime: O(1)
=======
problemSix(arr:) runtime: 
>>>>>>> 4c128da1e326da839fa1e7f5faecc7ca2d7c6a68
