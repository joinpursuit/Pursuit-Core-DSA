# N or More Occurrences Solution

## Javascript

```js
function elements(arr, n) {
  let frequencyDict = {};

  arr.forEach(num => {
    if (frequencyDict[num]) {
      frequencyDict[num] += 1;
    } else {
      frequencyDict[num] = 1;
    }
  });

  let count = [];
  for (let v in frequencyDict) {
    if (frequencyDict[v] >= n) {
      count.push(v);
    }
  }

  return count;
}
```
