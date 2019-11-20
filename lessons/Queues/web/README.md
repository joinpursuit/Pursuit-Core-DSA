# Queues

## Goals
- Understand what's a Queue
- FIFO
- Queue Methods
- Understand how to implement a queue

## Lesson 

## What's a Queue?

Queues are very common just like stacks. Here are some common examples of things you would queue in real life:

- Waiting on line at the DMV
- Managing calls at a help desk ("Your call will be answered in the order it was received")
- Ordering at a fast food restaurant

![Line Cartoon](assets/line-cartoon.jpeg)

There are two fundemental concepts with a queue collection:

1. When you add a new element it goes to the end of the queue. 
2. When you remove an element you're only allowed to remove the first element in the queue.

This is the opposite of stacks, and the concept is FIFO.

## FIFO

FIFO stands for 'First In First Out'. 

Makes sense right? If you're first in line, you should be the first one to be served. 

1. **Enqueue** is the term that describes to enter the queue.
2. **Dequeue** means to leave the queue.

Just like stacks, in queues you're only allowed to access the next element in line to be dequeued. 

![Line Cartoon](assets/queue-graphic.png)

## Queue Use Cases

Here are some real world applications of queues:

- Queue of people at any service such as ticketing.
- Queue of air planes waiting to take off in the air port.
- Queue of data from a server to a client.
- Vehicles on the road moving in one direction.

## Queue Methods

1. **enqueue(value) :** Add new element to the end of the queue.
2. **dequeue() :** Removes element from beginning of the queue and returns it. 
3. **peek() :** Returns the element from beginning of the queue without removing it.
4. **isEmpty() :** Returns a boolean indicating if the queue is empty or not.

## Queue Implementation

Just like the stack there are several ways to implement the queue. For the sake of teaching the basic concepts we will go with the Array approach. But here are more ways to implement:

1. Array Implementation
2. Linked List Implementation
3. Double Stack Implementation

### Container Class

```javascript
class Queue {

  constructor() {
    this.arr = [];
  }

}
```

The only important member property of the class is an Array to hold our elements.

### enqueue(value)

What do we want to accomplish? Adding a new element to the END of the queue. 

```javascript
enqueue(value) {
  this.arr.push(value);
}
```

### dequeue()

Now we want to remove and return the first element, which is very simple using Arrays.

```javascript
dequeue() {
  return this.arr.shift();
}
```

### peek()

We want to just be able to access the element in the beginning of the queue. 

```javascript
peek() {
  // Get First Index based on length
  const firstIndex = 0;

  // Return value
  return this.arr[firstIndex];
}
```

### isEmpty()

Check if the queue is empty.

```javascript 
isEmpty() {
  // Check if array length is zero
  return this.arr.length === 0;
}
```

### Putting it all Together

```javascript
class Queue {

  constructor() {
    this.arr = [];
  }

  enqueue(value) {
    this.arr.push(value);
  }

  dequeue() {
    return this.arr.shift();
  }

  peek() {
    // Get First Index based on length
    const firstIndex = 0;

    // Return value
    return this.arr[firstIndex];
  }

  isEmpty() {
    // Check if array length is zero
    return this.arr.length === 0;
  }

}
```

## Excercise

1. Implement a Queue in the traditional way using Linked Lists. You may not use any Array or built in Array methods. 
2. Implement a Queue using Double Stacks. You may not use any Array or built in Array methods. 

Implement them with the following methods:

1. **push(value) :** Add new element to the top of the stack.
2. **pop() :** Remove element from top of the stack and return it. 
3. **peek() :** Returns the top element of the stack without removing it.
4. **isEmpty() :** Returns a boolean indicating if the stack is empty or not.
