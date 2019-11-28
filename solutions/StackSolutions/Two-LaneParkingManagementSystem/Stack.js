class Stack {

  constructor(size) {
    this.arr = [];
    this.size = size
  }

  push(value) {
    if (!this.hasSpace()) {
      throw new Error('Stack is full!')
    }
    this.arr.push(value);
  }

  pop() {
    if (this.isEmpty()) {
      throw new Error('Stack is empty!')
    }
    return this.arr.pop();
  }

  peek() {
    // Get Last Index based on length
    const lastIndex = this.arr.length - 1;

    // Return value
    return this.arr[lastIndex];
  }

  isEmpty() {
    // Check if array length is zero
    return this.arr.length == 0
  }

  hasSpace() {
    return this.arr.length < this.size;
  }

}

module.exports = Stack;
