# Stacks

## Goals
- Understand what's a Stack
- LIFO
- Stack Methods
- Understand how to implement a stack

## What's a Stack?

Stacks are very common. Here are some common examples of things you would stack in real life:

- Dishes
- Pancakes 
- Books
- Dollar Bills

Just like the way you represent stacks in the physical world, we do the same in computer science.

![Stack of Dishes](assets/stack-dishes.jpeg)

There are two fundemental concepts with a stack collection:

1. When you add a new element it goes on top of the stack.
2. When you remove an element you're only allowed to remove the one on top.

This is a very famous concept called LIFO.

## LIFO

![Stack of Dishes](assets/stack-graphic.png)

LIFO stands for 'Last In First Out'. 

In stacks only two operations are allowed: push the item into the stack, and pop the item out of the stack. A stack is a limited access data structure; elements can only be added and removed from the stack only at the top. 

Just like in the physical world, if you tried to pull out a dish from the middle it would all come crashing.

The following is a visualization where we insert the numbers 1 through 6 into the stack and then we remove them. Observe the LIFO order.

<a title="Maxtremus / CC0" href="https://commons.wikimedia.org/wiki/File:Lifo_stack.png">
  <img width="512" alt="Lifo stack" src="https://upload.wikimedia.org/wikipedia/commons/b/b4/Lifo_stack.png">
</a>

## Stack Use Cases

Here are some real world applications of stacks:

- Back & Forward button on Web Browsers.
- Reversing a word. You push a word letter by letter, then pop letters from the stack.
- Undo mechanism. Example, undo in a text editor.
- Syntax checking for compilers. Example, checking for parentheses and braces.
- Memory allocation uses stacks at the architectural level. Memory for local variables is also managed using a stack.

## Stack Methods

1. **push(value) :** Add new element to the top of the stack.
2. **pop() :** Remove element from top of the stack and return it. 
3. **peek() :** Returns the top element of the stack without removing it.
4. **isEmpty() :** Returns a boolean indicating if the stack is empty or not.

## Stack Implementation

There are two ways of implementing Stacks. One is using a LinkedList which is considered the traditional way and the other much simplers is using an Array. They both fundementally tackle the same problems, so for this lesson we will follow the Array route. 

### Container Class

```javascript
class Stack {

  constructor() {
    this.arr = [];
  }

}
```

This is pretty straight forward. We don't want to initialize a stack with any value. The only important member property of the class is an Array to hold our elements.

### push(value)

What do we want to accomplish? Adding a new element to the END of the stack. 

```javascript
push(value) {
  this.arr.push(value);
}
```

### pop()

Now we want to remove and return the last element, which is also very simple using Arrays.

```javascript
pop() {
  return this.arr.pop();
}
```

### peek()

We want to just be able to access the element on top of the stack. 

```javascript
peek() {
  // Get Last Index based on length
  const lastIndex = this.arr.length - 1;

  // Return value
  return this.arr[lastIndex];
}
```

### isEmpty()

Check if the stack is empty.

```javascript 
isEmpty() {
  // Check if array length is zero
  return this.arr.length === 0;
}
```

### Putting it all Together

```javascript
class Stack {

  constructor() {
    this.arr = [];
  }

  push(value) {
    this.arr.push(value);
  }

  pop() {
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
    return this.arr.length === 0;
  }

}
```

As you can see, pretty simple right? Stacks are simple to conceptualize and code once you understand the fundementals. 

## Excercises
1. Write a function `reverseStr` that reverse a string using a stack. Return the reversed strings. You might not reverse the string using other methods that do not involve a stack instance.
2. Solve [`validParentheses`](https://github.com/joinpursuit/Pursuit-Core-DSA/blob/master/problems/StackProblems/ValidParentheses.md) using an instance of your stack. This problem is also in HackerRank as [Balanced Brackets](https://www.hackerrank.com/challenges/balanced-brackets/problem)
3. Solve [`isPalindrome`](https://github.com/joinpursuit/Pursuit-Core-DSA/blob/master/problems/StringProblems/Palindrome.md). You can also do it in [HackerRank](https://www.hackerrank.com/challenges/30-queues-stacks/problem?h_r=internal-search)
4. Solve [`removeAdjacentDups`](https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/) using a Stack.
5. Implement a Stack using a [Linked Lists](../../linked_lists/web). You may not use any Array or built in Array methods. Your stack should have the standard stack methods
  * **push(value)**: Add new element to the top of the stack.
  * **pop()**: Remove element from top of the stack and return it. 
  * **peek()**: Returns the top element of the stack without removing it. 
  * **isEmpty()**: Returns a boolean indicating if the stack is empty or not.
