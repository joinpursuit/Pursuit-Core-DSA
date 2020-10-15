class DynamicArray {
  constructor() {
    this.internalArr = new Array(1);
    this.size = 0;
    this.capacity = 1;
  }

  push(element) {
    if (this.size === this.capacity) {
      this.resize()
    }

    this.internalArr[this.size] = element
    this.size++
  }

  resize() {
    let newCapacity = this.capacity * 2;
    let newArray = new Array(newCapacity)

    for (let i = 0; i < this.size; i++) {
      newArray[i] = this.internalArr[i]
    }

    this.internalArr = newArray;
    this.capacity = newCapacity
  }

  get(index) {
    if (index > this.size) {
      throw new Error('Index out of bounds');
    }
    return this.internalArr[index];
  }

  remove(index) {
    if (index >= this.size) throw new Error('Index out of bounds')

    let elem = this.internalArr[index]

    for (let i = index; i < this.size; i++) {
      if (this.internalArr[i + 1] !== undefined) {
        this.internalArr[i] = this.internalArr[i + 1];
      }
    }
    this.size = this.size - 1
    this.internalArr[this.size] = null
    return elem
  }
}

let arr = new DynamicArray(1)

arr.push(1)
arr.push(2) // -> resize, new capacity = 2
arr.push(3) // -> resize, new capacity = 4
arr.push(4)
arr.push(5) // -> resize, new capacity = 8
arr.push(6)
arr.push(7)
arr.push(8)
arr.push(9) // -> resize, new capacity = 16
arr.push(10)
arr.push(11)
arr.push(12)
arr.push(13)
arr.push(14)
arr.push(15)
arr.push(16)
arr.push(17) // -> resize, new capacity = 32
// Next resize won't happened until we have reached 
console.log('size', arr.size) // 7 ✅
console.log('capacity', arr.capacity) // 


