# Product Of All Except Index Solution

## Swift

```swift
//Stack overflow: https://stackoverflow.com/questions/2680548/given-an-array-of-numbers-return-array-of-products-of-all-other-numbers-no-div                                         
func productOfAllExceptIndex(in arr: [Int]) -> [Int] {
    var topArr = [Int](repeating: 0, count: arr.count)
    var product = 1
    for i in 0..<arr.count {
        topArr[i] = product
        product *= arr[i]
    }
    var botArr = [Int](repeating: 0, count: arr.count)
    product = 1
    for i in (0..<arr.count).reversed() {
        botArr[i] = product
        product *= arr[i]
    }
    var finalArr = [Int]()
    for i in 0..<arr.count {
        finalArr.append(topArr[i] * botArr[i])
    }
    return finalArr
}
```