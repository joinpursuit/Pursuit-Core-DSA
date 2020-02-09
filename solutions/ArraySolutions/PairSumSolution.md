# Pair Sum Solution

## Swift

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
## JavaScript
```js
/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
const twoSum = (nums, target) => {
    const tracker = {}
    for(let i = 0; i < nums.length; i++) {
        let num = nums[i];
        let diff = target - num
        if (tracker[diff] >= 0) { // Check in the tracker object if there is an element equal to the difference
            return [i, tracker[diff]]
        }
        tracker[num] = i
    }
};
```
