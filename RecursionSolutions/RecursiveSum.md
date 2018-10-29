# Recursive Sum Solution

## JavaScript

```js
const recursiveSum = arr => {
  if (arr.length === 1) {
    return arr[0];
  }
  return arr[0] + recursiveSum(arr.slice(1, arr.length));
};
```
