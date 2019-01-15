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

  if (popping.top) {
    var deq = popping.pop();
    console.log("Dequeuing " + deq + " from stack.");
    return deq;
  }

  while (pushing.top) {
    popping.push(pushing.pop());
  }
};
```
