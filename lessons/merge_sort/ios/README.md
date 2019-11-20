# Merge Sort

Resources:

1. [Ray Wenderlich Merge Sort](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Merge%20Sort)
1. [Wikipedia Merge Sort](https://en.wikipedia.org/wiki/Merge_sort)


## Merge Sort

Merge sort uses a **divide and conquer** approach to sorting. The unsorted array is first **split** up into smaller arrays until one element remains. At this point, the single element arrays are then **merged** back into a final sorted array. This approach, like Quick sort, uses recursion.

Assume you need to sort an array of n numbers in the right order. The merge-sort algorithm works as follows:
- Put the numbers in an unsorted pile.
- Split the pile into two. Now, you have two unsorted piles of numbers.
- Keep splitting the resulting piles until you cannot split anymore. In the end, you will have n piles with one number in each pile.
- Begin to merge the piles together by pairing them sequentially. During each merge, put the contents in sorted order. This is fairly easy because each individual pile is already sorted.

Here's how it works:

1. If the array only has one element, return it

2. Call this function on the left side and the right side.  Set these calls equal to variables <i>left</i> and <i>right</i>

3. Merge <i>left</i> and <i>right</i> together (assuming that <i>left</i> and <i>right</i> are sorted) and return that array

This can be a little tricky, so let's go through some examples.

### Example One:

var arr1 = [3,1]

1. Skip this as there are two elements
2. This call will return [3] and [1]
3. Merge [3] and [1] to make [1,3] and return it


### Example Two:

var arr2 = [3,1,8,2]

1. Skip this as there are four elements
2. We set <i>left</i> equal to this function passing in [3,1] and <i>right</i> equal to this function passing in [8,2] .  As we see from example one, <i>left</i> = [1,3].  We can deduce that <i>right</i> = [2,8]

3. Merge [1,3] and [2,8] to make [1,2,3,8] and return it


### Example Three:

var arr3 = [3,1,8,2,10,4,6,5]

1. Skip this as there are eight elements
2. We set <i>left</i> equal to this function passing in [3,1,8,2] and <i>right</i> equal to this function passing in [10,4,6,5] .  As we see from example two, <i>left</i> = [1,2,3,8].  We can deduce that <i>right</i> = [4,5,6,10]

3. Merge [1,2,3,8] and [4,5,6,10] to make [1,2,3,4,5,6,8,10] and return it

### In Code:

```swift
func mergeSort<T: Comparable>(inputArray: [T]) -> [T] {
  guard inputArray.count > 1 else { return inputArray }
  let middleIndex = inputArray.count / 2
  let leftArray = mergeSort(inputArray: Array(inputArray[0..<middleIndex]))
  let rightArray = mergeSort(inputArray: Array(inputArray[middleIndex..<inputArray.count]))
  return merge(leftPile: leftArray, rightPile: rightArray)
}

func merge<T: Comparable>(leftPile: [T], rightPile: [T]) -> [T] {
  var leftIndex = 0
  var rightIndex = 0
  var orderedPile = [T]()
  while leftIndex < leftPile.count && rightIndex < rightPile.count {
    if leftPile[leftIndex] < rightPile[rightIndex] {
      orderedPile.append(leftPile[leftIndex])
      leftIndex += 1
    } else if leftPile[leftIndex] > rightPile[rightIndex] {
      orderedPile.append(rightPile[rightIndex])
      rightIndex += 1
    } else {
      orderedPile.append(leftPile[leftIndex])
      leftIndex += 1
      orderedPile.append(rightPile[rightIndex])
      rightIndex += 1
    }
  }
  while leftIndex < leftPile.count {
    orderedPile.append(leftPile[leftIndex])
    leftIndex += 1
  }
  while rightIndex < rightPile.count {
    orderedPile.append(rightPile[rightIndex])
    rightIndex += 1
  }
  return orderedPile
}

var list = [10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26]
mergeSort(inputArray: list) // [-1, 0, 1, 2, 3, 5, 8, 8, 9, 10, 14, 26, 27]
```

### Time complexity

Merge sort has a best, worst and average runtime of O(n * log(n))

![geeksForGeeksImage](https://www.geeksforgeeks.org/wp-content/uploads/Merge-Sort-Tutorial.png)

Source: https://www.geeksforgeeks.org/wp-content/uploads/Merge-Sort-Tutorial.png
