# Largest Product of Two Solution

## Swift

```swift
func largestProductOfTwo(in arr: [Int]) -> Int? {
    guard arr.count > 1 else { return nil }
    guard arr.count > 2 else { return arr[0] * arr[1] }
    var maxProduct = Int.min
    //Largest of two positives                                                                                                                 
    let sortedPositives = arr.filter{$0 > -1}.sorted{$0 > $1}
    if sortedPositives.count >= 2 {
        maxProduct = sortedPositives[0] * sortedPositives[1]
    }
    //Largest of two negatives                                                                                                                 
    let sortedNegatives = arr.filter{$0 < 0}.sorted{abs($0) > abs($1)}
    if sortedNegatives.count >= 2 {
        let product = sortedNegatives[0] * sortedNegatives[1]
        if product > maxProduct {
            maxProduct = product
        }
    }
    return maxProduct
}
```