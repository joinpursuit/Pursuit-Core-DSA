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
O(1) - constant
Prints the value of i 999 times 



```swift
func problemTwo(arr: [Int]) {
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            print("\(i), \(j)")
        }
    }
}
```

problemTwo(arr:) runtime: 
O(n^2) - quadratic
Iterates over array while iterating over array for the total count of the array ??


```swift
func problemThree(arr: [Int]) {
    for _ in 0..<1000 {
        problemOne(arr: arr)
    }
}
```

problemThree(arr:) runtime: 
O(n^2) - quadratic
Runs the problemOne function 1000 times




```swift
func problemFour(arr: [Int]) {
    for _ in 0..<arr.count {
        problemTwo(arr: arr)
    }
}
```
**

problemFour(arr:) runtime: 
O(n^3) - quadratic
Nested for loops interating over the array 



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
O(n^2) + O(n^2)
> O(n^2) - quadratic 
Takes the highest order of power


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
> O(n^3)
Each nesed 'for' loop will run the code in their body the same amount of time (arr.count) while iterating over each element of the array.
