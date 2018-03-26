# Merge Sorted Arrays Solution

## Swift

```swift
func merge(_ arrOne: [Int], and arrTwo: [Int]) -> [Int] {
    var indexOne = 0
    var indexTwo = 0
    var sortedArr = [Int]()
    while indexOne < arrOne.count && indexTwo < arrTwo.count {
        if arrOne[indexOne] < arrTwo[indexTwo] {
            sortedArr.append(arrOne[indexOne])
            indexOne += 1
        } else {
            sortedArr.append(arrTwo[indexTwo])
            indexTwo += 1
        }
    }
    //Handle extra elements at the end.  One array will always be empty.                                                                                                             
    return sortedArr + arrOne[indexOne...] + arrTwo[indexTwo...]
}
```