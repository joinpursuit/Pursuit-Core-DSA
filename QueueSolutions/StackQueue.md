## JavaScript

```js
function Queue() {
  this.pushS = new Stack();
  this.popS = new Stack();
}

Queue.prototype.enqueue = function(val) {
  this.pushS.push(val);
};

Queue.prototype.dequeue = function() {
  var popping = this.popS;
  var pushing = this.pushS;

  if (popping.peek()) {
    var deq = popping.pop();
    console.log("Dequeuing " + deq + " from stack.");
    return deq;
  }

  while (pushing.top) {
    popping.push(pushing.pop());
  }
};
```

------ ANOTHER SOLUTION ----------

class Queue {
  constructor() {
    this.in = new Stack();
    this.out = new Stack();
  }

  enqueue(val) {
    this.in.push(val)
  }

  dequeue() {
    this.move();
    return this.out.pop();
  }

  move() {
    if(this.out.isEmpty()) {
      while(!this.in.isEmpty()) {
        this.out.push(this.in.pop())
      }
    }
  }

  isEmpty() {
    return this.in.isEmpty() && this.out.isEmpty();
  }

  peek() {
    this.move();
    return this.out.peek();
  }
}
