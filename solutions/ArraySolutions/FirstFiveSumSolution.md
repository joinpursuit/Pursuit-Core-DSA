# First Five Sum Solution

## Swift

```swift
func firstFiveEvenSum(in arr: [Int]) -> Int {
    return arr.filter{$0 % 2 == 0}.prefix(5).reduce(0, +)
}
```