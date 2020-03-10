# Capital City Distance Solution

## Javascript

> Note: this solution isn't perfect.

```js
let input = [9,1,4,9,0,4,8,9,0,1]
let distances = {}

function solution(T) {
    let orderedDistances = Array(T.length - 1).fill(0)
    for (let cityIndex = 0; cityIndex < T.length; cityIndex++) {
        const capitalDistance = distanceToCapital(cityIndex, T)
        orderedDistances[capitalDistance - 1] += 1
    }
    return orderedDistances
}

function distanceToCapital(startingIndex, arr) {
    if (arr[startingIndex] == startingIndex) { return 0 }
    if (distances[startingIndex]) { return distances[startingIndex] }
    const distance = 1 + distanceToCapital(arr[startingIndex], arr)
    if (!distances[startingIndex]) {
        distances[startingIndex] = distance
    }
    return distance
}

console.log(solution(input))
```