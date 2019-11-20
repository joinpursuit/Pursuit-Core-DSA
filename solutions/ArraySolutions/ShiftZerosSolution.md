# Shift Zeros Solution

## Swift

```swift
func shiftZeros(in arr: [Int]) -> ([Int], Int) {
    let zeroCount = arr.filter{$0 == 0}.count
    let noZeroArr = arr.filter{$0 != 0}
    return (noZeroArr + [Int](repeating: 0, count: zeroCount), zeroCount)
}
```