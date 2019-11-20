# Quicksort


Resources:

1. [Ray Wenderlich Quicksort](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Quicksort)
1. [Wikipedia Quicksort](https://en.wikipedia.org/wiki/Quicksort)



So far, we've looked at sorts that take O(n<sup>2</sup>) time.  Those were:

- Insertion Sort
- Bubble Sort

Both of the algorithms are helpful for learning how sorting works, but aren't actually used because they are too slow.

In this lesson, we will look a recursive sorting algorithm and understand why it is faster.


## Quicksort

[![Quicksort](http://img.youtube.com/vi/8hEyhs3OV1w/0.jpg)](https://www.youtube.com/watch?v=8hEyhs3OV1w)


Here's how it works:


1. If the array has only one element, return it.
2. Find the middle element of the array and name it <i>pivot</i>.
3. Move all the elements smaller than the pivot into an array called <i>less</i>.
4. Move all the elements equal to the pivot into an array called <i>equal</i>.
5. Move all the elements greater than the pivot into an array called <i>greater</i>
6. Return the following:

This function passing in <i>less</i> as input + <i>equal</i> + this function passing in <i>greater</i> as input.

 Let's go through some examples:

### Example One:

var arr1 = [8,4,2]

 1. Skip this step as arr1 has 3 elements.
 2. pivot = 4
 3. less = [2]
 4. equal = [4]
 5. greater = [8]
 6. return quicksort([2]) + [4] + quicksort([8])

 quicksort([2]) and quicksort([4]) hit the basecase in step one and return the input.  Therefore, the function returns [2,4,8]

### Example Two:

 var arr2 = [11,8,15,10,4,14,2]

  1. Skip this step as arr2 has 7 elements.
  2. pivot = 10
  3. less = [8,4,2]
  4. equal = [10]
  5. greater = [10,15,14]
  6. return quicksort([8,4,2]) + [10] + quicksort([11,15,14])

 quicksort([8,4,2]) = [2,4,8] as we saw in example one

### quicksort([11,15,14]) :

  1. Skip this step as the array has 3 elements
  2. pivot = 15
  3. less = [11,14]
  4. equal = [15]
  5. greater = []
  6. return quicksort([11,14]) + [15] + []

### quicksort(11,14) :

  1. Skip this step as the array has 2 elements
  2. pivot = 11
  3. less = []
  4. equal = [11]
  5. greater = [14]
  6. return [] + [11] + [14] = [10,14]

  Therefore, quicksort([11,15,14]) = [11,14,15]

  And so quicksort([8,4,2]) + [10] + quicksort([11,15,14]) = [2,4,8,10,11,14,15]


### In Code:


```swift
func quickSort(arr: [Int]) -> [Int] {
    guard arr.count > 1 else {return arr} //base case
    let pivot = arr[arr.count / 2]
    var lessThanPivot = [Int]()
    var equalToPivot = [Int]()
    var greaterThanPivot = [Int]()
    for element in arr {
        if element < pivot {
            lessThanPivot.append(element)
        } else if element > pivot {
            greaterThanPivot.append(element)
        } else {
            equalToPivot.append(element)
        }
    }
    print("\(arr) with pivot: \(pivot)")
    print("sort(\(lessThanPivot)) + \(equalToPivot) + sort(\(greaterThanPivot))")
    print()
    return quickSort(arr: lessThanPivot) + equalToPivot + quickSort(arr: greaterThanPivot) //recurive call
}
```

### Time Complexity:

![https://s3.amazonaws.com/hr-challenge-images/quick-sort/RecursionTree.png](https://s3.amazonaws.com/hr-challenge-images/quick-sort/RecursionTree.png)


## Exercises

[lab](https://github.com/joinpursuit/Pursuit-Core-iOS-Quicksort-Lab)

1. [Sort a Linked List](https://leetcode.com/problems/sort-list/description/)
2. [Sort Colors](https://leetcode.com/problems/sort-colors/description/)
3. [Quicksort 1 - Hackerrank](https://www.hackerrank.com/challenges/quicksort1/problem)
4. [Quicksort 2 - Hackerrank](https://www.hackerrank.com/challenges/quicksort2/problem)
5. [Quicksort 3 - Hackerrank](https://www.hackerrank.com/challenges/quicksort3/problem)
6. [Codewars - swapped3-7](https://www.codewars.com/kata/sorting-on-planet-twisted-3-7)

