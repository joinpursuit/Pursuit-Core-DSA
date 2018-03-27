# Happy Numbers Solution

## Swift

```swift
func sumOfSquares(of n: Int) -> Int {
    var n = n
    var sum = 0
    while n > 0 {
        sum += Int(pow(Double(n % 10), 2.0))
        n /= 10
    }
    return sum
}

func isHappy(n: Int) -> Bool {
    //Unhappy numbers will loop forever.  To catch this, we will have a slow counter and a fast one.                                                                                 
    var slowHappySum = n
    var fastHappySum = n
    repeat {
        slowHappySum = sumOfSquares(of: slowHappySum)
        fastHappySum = sumOfSquares(of: fastHappySum)
        fastHappySum = sumOfSquares(of: fastHappySum)
        if slowHappySum == 1 { return true }
    } while slowHappySum != fastHappySum
    return false
}
```