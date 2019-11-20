# Add Digits

## Swift

```swift
func addDigits(of n: Int) -> Int {
    var n = n
    var sum = 0
    repeat {
        sum = 0
        while n > 0 {
            sum += n % 10
            n /= 10
        }
        n = sum
    } while sum > 9
    return sum
}
```