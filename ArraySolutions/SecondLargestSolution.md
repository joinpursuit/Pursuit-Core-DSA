# Second Largest Solution

## Swift

```swift
//O(nlog(n))                                                                                                                                                                         
func secondLargest(in arr: [Int]) -> Int? {
    guard arr.count > 1 else { return nil }
    return arr.sorted{$0 > $1}[1]
}

//O(n)                                                                                                                                                                               
func secondLargestLinear(in arr: [Int]) -> Int? {
    guard arr.count > 1 else { return nil }
    var largest = Int.min
    var secondLargest = Int.min
    for num in arr {
        if num > largest {
            secondLargest = largest
            largest = num
        } else if num > secondLargest {
            secondLargest = num
        }
    }
    return secondLargest
}
```