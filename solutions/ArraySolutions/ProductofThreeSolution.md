# Product of Three Solution

## Swift

```swift
func largestProductOfThree(in arr: [Int]) -> Int {
    //Two Positives and one negative                                                                                                                                                 
    guard arr.count > 3 else { return arr.reduce(0, *) }
    var maxProduct = Int.min
    //Three Positives                                                                                                                                                                
    let sortedPositives = arr.filter{$0 > 0}.sorted{$0 > $1}
    if sortedPositives.count >= 3 {
        maxProduct = sortedPositives[0] * sortedPositives[1] * sortedPositives[2]
    }
    //Two Negatives and One Positive                                                                                                                                                 
    let sortedNegatives = arr.filter{$0 <= 0}.sorted{abs($0) > abs($1)}
    if (sortedNegatives.count >= 2 && !sortedPositives.isEmpty) {
        let product = sortedNegatives[0] * sortedNegatives[1] * sortedPositives[0]
        if product > maxProduct {
            maxProduct = product
        }
    }
    //Three Negatives (no positives in array)                                                                                                                                        
    if sortedNegatives.count >= 3 {
        let product = sortedNegatives[sortedNegatives.count - 1] * sortedNegatives[sortedNegatives.count - 2] * sortedNegatives[sortedNegatives.count - 3]
        if product > maxProduct {
            maxProduct = product
        }
    }
    return maxProduct
}
```