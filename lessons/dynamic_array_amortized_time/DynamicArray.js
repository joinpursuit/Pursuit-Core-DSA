class DynamicArray {
  constructor(size) {
    this.internalArr = new Array(size); // Our internal array allocated with the initial size
    this.size = 0;                      // Current size of the array
    this.capacity = size;               // Total capacity of our DynamicArray
  }

  push(element) {
    if (this.size === this.capacity) {
      this.resize() // If we have reached the capacity of our array resize our array
    }

    this.internalArr[this.size] = element  // Use the size as the index to perform the adding
    this.size++ // Increase the size
  }

  resize() {
    let newCapacity = this.capacity * 2
    let newArray = new Array(newCapacity);  // Allocate new array with double capacity
    for (let i = 0; i < this.size; i++) {
      newArray[i] = this.internalArr[i];    // Copy elements from internal array to new array
    }
    this.internalArr = newArray;            // Make the new array the new internalArr
    this.capacity = newCapacity             // Update capacity
  }

  get(index) {
    if (index > this.size) {
      throw new Error('Index out of bounds');
    }
    return this.internalArr[index];
  }

  remove(index) {
    for (let i = index; i < this.size; i++) {
      if (this.internalArr[i + 1] !== undefined) {
        this.internalArr[i] = this.internalArr[i + 1];
      }
    }
    this.size = this.size - 1
  }
}


let arr = new DynamicArray(2)

arr.push(1)
arr.push(2)
arr.push(3)
arr.remove(1)
console.log(arr.size)
console.log(arr.get(2))
arr.push(4)
console.log(arr.get(arr.size - 1))
