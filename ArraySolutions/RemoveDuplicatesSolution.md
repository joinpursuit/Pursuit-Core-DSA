# Remove Duplicates Solution

## Swift

```swift
func removeDuplicates(from arr: [Int]) -> [Int] {
    var visitedElements = Set<Int>()
    var duplicateFreeArr = [Int]()
    for num in arr {
        if !visitedElements.contains(num) {
            visitedElements.insert(num)
            duplicateFreeArr.append(num)
        }
    }
    return duplicateFreeArr
}
```