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

problemOne(arr:) runtime: 


```swift
func problemTwo(arr: [Int]) {
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            print("\(i), \(j)")
        }
    }
}
```swift

problemTwo(arr:) runtime: 


```swift
func problemThree(arr: [Int]) {
    for _ in 0..<1000 {
        problemOne(arr: arr)
    }
}
```

problemThree(arr:) runtime: 


```swift
func problemFour(arr: [Int]) {
    for _ in 0..<arr.count {
        problemTwo(arr: arr)
    }
}
```

problemFour(arr:) runtime: 


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

problemFive(arr:) runtime: 


```swift
func problemSix(arr: [Int]) {
    for _ in 0..<arr.count {
        for _ in 0..<arr.count {
            problemTwo(arr: arr)
        }
    }
}
```

problemSix(arr:) runtime: 