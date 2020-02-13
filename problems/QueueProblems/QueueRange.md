# Queue Range

Write a function that iterates through a queue and returns the range (highest value - lowest value).

## Setup

```js
class Queue {
  constructor() {
    this.array = [];
  }

  isEmpty() {
    return this.array.length === 0;
  }

  peek() {
    if (this.isEmpty()) {
      return null;
    } else {
      return this.array[0];
    }
  }

  enqueue(value) {
    this.array.push(value);
  }

  dequeue() {
    return this.array.shift();
  }
}

// Build the queue
let q = new Queue();
q.enqueue(-145);
q.enqueue(45);
q.enqueue(11);
q.enqueue(98);
```

## Example

```js
range(q); // should return 243
```
