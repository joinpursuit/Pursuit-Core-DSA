# Pair Sum Solution

##Swift

```
func pairSum(arr: [Int], target: Int) -> Bool {
    var matchingPairs = Set<Int>()
    for num in arr {
        if matchingPairs.contains(num) {
            return true
        }
        matchingPairs.insert(target - num)
    }
    return false
}
```