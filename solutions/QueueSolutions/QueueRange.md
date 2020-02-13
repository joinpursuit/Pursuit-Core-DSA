# Queue Range Solution

## Javascript

```js
function range(q) {
  if (q.isEmpty()) {
    return null;
  }
  let front = q.peek();
  let min = front;
  let max = front;
  while (!q.isEmpty()) {
    let currentValue = q.dequeue();
    if (currentValue < min) {
      min = currentValue;
    } else if (currentValue > max) {
      max = currentValue;
    }
  }

  return max - min;
}
```
