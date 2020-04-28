# Dynamic Programming and Memoization

## Recursion Review
[Recursion Lesson](https://github.com/joinpursuit/Pursuit-Core-DSA/tree/master/lessons/Recursion/ios)

## Dynamic Programming and Memoization

**Memoization**    
In computing, memoization is an optimization technique used primarily to speed up computer programs by _storing the results of expensive function calls and returning the cached result_ when the same inputs occur again.

**Dynamic Programming** is the combination of **Memoization** and **recursion**.  We can work memoization into our recursive Fibonacci to improve the runtime.

```swift
var fibValues = [0: 0, 1: 1]
func recursiveFibDynamicProgramming(num: Int) -> Int {
  if let fibonacci = fibValues[num] {
    return fibonacci
  } else {
  let fibonacci = recursiveFibDynamicProgramming(num: num - 1) + recursiveFibDynamicProgramming(num: num - 2)
  fibValues[num] = fibonacci
  return fibonacci
    }
}
```

## Making change

```swift
func dynamicChange(for value: Int, coinDenominations: [Int]) -> [Int] {
    var recursiveCount = 0
    
    // If value is 0 then just return an empty set (no coins).
    guard value > 0 else {
        return []
    }

    // Create a cache to keep track of the coin sets for any given value.
    var cache = [Int : [Int]]()

    // Inner function for recursive calls.
    func innerDynamicChange(for value: Int) -> [Int] {
        // Count the number of times this function is called recursively.
        recursiveCount += 1

        // If value is 0 then just return an empty set (no coins).
        guard value > 0 else {
            return []
        }

        // If a cached value already exists then go ahead and return it; no more computation needed.
        if let cached = cache[value] {
            return cached
        }

        // Setup an array of potential coin sets.
        var potentialChangeArray = [[Int]]()

        // Starting with the largest coin denomination, try to take one.
        // Then recursively call this function again, eventually getting the coin set with the minimum amount of coins.
        for coin in coinDenominations {
            // Ensure that the coin isn't too large at first.
            if value - coin >= 0 {
                // Setup a new potential change array with just the single coin.
                var potentialChange = [coin]

                // Recursively call this function again with the value reduced (by the amount of this coin) and append
                // the result to the potential change array.
                potentialChange.append(contentsOf: innerDynamicChange(for: value - coin))

                // Append to the array of potential change sets.
                potentialChangeArray.append(potentialChange)
            }
        }

        // Get the coin set with the least amount of coins from the valid solutions.
        // Note that `min(by:)` will return nil if the set is empty, hence the `if let` unwrap.
        if let minimumChange = potentialChangeArray.min(by: { $0.count < $1.count }) {
            cache[value] = minimumChange
            return minimumChange
        } else {
            // If `potentialChangeArray` contains 0 elements, then return an empty array to rise up the recursive chain.
            return []
        }
    }

    // Return minimum coin change.
    return innerDynamicChange(for: value)
}
```

## Tower of Hanoi

Tower of Hanoi is a mathematical puzzle where we have three rods and n disks. The objective of the puzzle is to move the entire stack to another rod, obeying the following simple rules:
1) Only one disk can be moved at a time.
2) Each move consists of taking the upper disk from one of the stacks and placing it on top of another stack i.e. a disk can only be moved if it is the uppermost disk on a stack.
3) No disk may be placed on top of a smaller disk.


```swift
func hanoi(from: Stack<Int>, to: Stack<Int>, temp: Stack<Int>, n: Int) {
    if n == 1 {  // base case
        to.push(from.pop()) // move 1 disk
    } else {  // recursive case
        hanoi(from: from, to: temp, temp: to, n: n-1)
        hanoi(from: from, to: to, temp: temp, n: 1)
        hanoi(from: temp, to: to, temp: from, n: n-1)
    }
}
```
