# Avoid Fives Solution

## Swift

```swift
extension Int {
    func contains(_ target: Int) -> Bool {
        var n = self
        while n > 9 {
            if n % 10 == target {
                return true
            }
            n /= 10
        }
        return self == 5
    }
}

func countOfIntsWithoutFive(from lowerBound: Int, to upperBound: Int) -> Int {
    return Array(lowerBound...upperBound).filter{!$0.contains(5)}.count
}
```