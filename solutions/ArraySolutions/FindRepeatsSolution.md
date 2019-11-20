# Find Repeats Solution

## Swift

```swift
func findRepeats(in arr: [Int]) -> [Int] {
    var frequencyDict = [Int: Int]()
    for num in arr {
        frequencyDict[num] = frequencyDict[num, default: 0] + 1
    }
    return Array(frequencyDict.filter{$0.value > 1}.keys)
}
```