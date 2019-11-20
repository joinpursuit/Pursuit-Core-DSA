# Matrix Sum Solution

## Swift

```swift
func sumWithoutCorners(of arr: [[Int]]) -> Int {
    var sum = 0
    for (rowIndex, row) in arr.enumerated() {
        sum += row.reduce(0, +)
        if rowIndex == 0 || rowIndex == arr.count - 1 {
            sum -= row[0]
            sum -= row[row.count - 1]
        }
    }
    return sum
}
```