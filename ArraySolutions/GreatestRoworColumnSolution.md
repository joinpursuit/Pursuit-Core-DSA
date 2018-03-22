# Greatest Row or Column Solution

## Swift

```swift
enum Location {
    case row(Int)
    case column(Int)
}

func greatestRowOrColumnSum(in arr: [[Int]]) -> (Int, Location) {
    var max = (sum: 0, location: Location.row(0))
    for (index, row) in arr.enumerated() {
        let rowSum = row.reduce(0, +)
        if rowSum > max.sum {
            max = (rowSum, .row(index))
        }
    }
    for columnIndex in 0..<arr[0].count {
        var columnSum = 0
        for rowIndex in 0..<arr.count {
            columnSum += arr[rowIndex][columnIndex]
        }
        if columnSum > max.sum {
            max = (columnSum, .column(columnIndex))
        }
    }
    return max
}
```