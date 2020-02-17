# Pascal's Triangle Solution

## Javascript

```js
function generate(n) {
  let arr = [[1]];

  if (n === 0) {
    return arr;
  }

  for (let i = 1; i <= n; i++) {
    let row = makeRow(arr[i - 1]);
    arr.push(row);
  }

  return arr;
}

function makeRow(prevRow) {
  if (prevRow.length < 1) {
    return [1];
  }

  let arr = [1];

  for (let i = 0; i < prevRow.length; i++) {
    if (prevRow[i + 1]) {
      arr.push(prevRow[i] + prevRow[i + 1]);
    } else {
      arr.push(1);
    }
  }
  return arr;
}
```
