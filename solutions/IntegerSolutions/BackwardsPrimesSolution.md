# Backwards Primes Solution

## Swift

```swift
import Foundation

extension Int {
    func isPrime() -> Bool {
        for possibleFactor in 2...Int(sqrt(Double(self))) + 1 {
            if self % possibleFactor == 0 {
                return false
            }
        }
        return true
    }
    func numberOfDigits() -> Int {
        var count = 0
        var n = self
        while n > 0 {
            n /= 10
            count += 1
        }
        return count
    }
    func readBackwards() -> Int {
        var n = self
        var placeNumber = self.numberOfDigits() - 1
        var backwardsInt = 0
        while n > 0 {
            backwardsInt += (n % 10) * Int(pow(10.0,Double(placeNumber)))
            placeNumber -= 1
            n /= 10
        }
        return backwardsInt
    }
}

func backwardsPrimes(from lowerBound: Int, to upperBound: Int) -> [Int] {
    let arr = Array(lowerBound...upperBound)
    var primes = [Int]()
    for num in arr {
        let backwardsNum = num.readBackwards()
        if num != backwardsNum {
            if num.isPrime() && backwardsNum.isPrime() {
                primes.append(num)
            }
        }
    }
    return primes
    //return Array(lowerBound...upperBound).filter{ $0.isPrime() && $0.readBackwards().isPrime() && $0 != $0.readBackwards() }                                                       
}
```