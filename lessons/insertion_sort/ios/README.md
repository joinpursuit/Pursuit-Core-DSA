## Insertion Sort

Goal: Sort an array from low to high (or high to low).

You are given an array of numbers and need to put them in the right order. The insertion sort algorithm works as follows:

Put the numbers on a pile. This pile is unsorted.
Pick a number from the pile. It doesn't really matter which one you pick, but it's easiest to pick from the top of the pile.
Insert this number into a new array.
Pick the next number from the unsorted pile and also insert that into the new array. It either goes before or after the first number you picked, so that now these two numbers are sorted.
Again, pick the next number from the pile and insert it into the array in the proper sorted position.
Keep doing this until there are no more numbers on the pile. You end up with an empty pile and an array that is sorted.
That's why this is called an "insertion" sort, because you take a number from the pile and insert it in the array in its proper sorted position.

## Insertion Sort Implementation

```swift
// O(n) space

func insertionSorted<T>(arr: [T], by isSorted: (T, T) -> Bool) -> [T] {
    var sortedArr = [T]()
    for element in arr {
        sortedArr = addElement(element, to: sortedArr, by: isSorted)
    }
    return sortedArr
}

func addElement<T>(_ element: T, to sortedArr: [T], by isSorted: (T, T) -> Bool) -> [T] {
    var sortedArr = sortedArr
    for (index, sortedElement) in sortedArr.enumerated() {
        if isSorted(element, sortedElement) {
            sortedArr.insert(element, at: index)
            return sortedArr
        }
    }
    sortedArr.append(element)
    return sortedArr
}


// O(1) space

func insertionSort<T>(arr: inout [T], by isSorted: (T, T) -> Bool) -> [T] {
    for indexOne in 1..<arr.count {
        var indexTwo = indexOne
        while indexTwo > 0 && isSorted(arr[indexTwo], arr[indexTwo - 1]) {
            arr.swapAt(indexTwo - 1, indexTwo)
            indexTwo -= 1
        }
    }
    return arr
}
```

## Resources:
- [Khan Academy](https://www.khanacademy.org/computing/computer-science/algorithms/insertion-sort/a/insertion-sort)
- [Wikipedia](https://en.wikipedia.org/wiki/Insertion_sort)
- [Swift Algorithm Club](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Insertion%20Sort)
