# Exercises

## Measuring performance

Q1. Consider the following three algorithms for determining whether anyone in the room has the same birthday as you.

- **Algorithm 1:** You say your birthday, and ask whether anyone in the room has the same birthday. If anyone does have the same birthday, they answer yes.
- **Algorithm 2:** You tell the first person your birthday, and ask if they have the same birthday; if they say no, you tell the second person your birthday and ask whether they have the same birthday; etc, for each person in the room.
- **Algorithm 3:** You only ask questions of person 1, who only asks questions of person 2, who only asks questions of person 3, etc. You tell person 1 your birthday, and ask if they have the same birthday; if they say no, you ask them to find out about person 2. Person 1 asks person 2 and tells you the answer. If it is no, you ask person 1 to find out about person 3. Person 1 asks person 2 to find out about person 3, etc.

For each algorithm, what is the factor that can affect the number of questions asked (the "problem size")?
In the worst case, how many questions will be asked for each of the three algorithms?
For each algorithm, is it constant, linear, or quadratic in the problem size in the worst case?

Q2. Why do you think that we analyze algorithms from a theoretical standpoint using Big O notation, instead of just counting runtime in seconds or the like?

Q3. How might we use time complexity analysis to our benefit as programmers before we even write any code?

## Data structures

Refer to the following `Node` definition to complete the data structure implementations. 

```java
// Node definition

public class Node {
    Node next;
    Object data;
}
```

## Lists

Q1. Implement a List data structure with the following interface:
- `void add(int index, Object element)` - inserts `element` at index.
- `void add(Object element)` - appends `element` to the end of the list.
- `Object get(int index)` - returns the item at index without removing it.
- `Object remove(int index)` - removes the item at index and returns it.
- `void set(int index, Object element)` - replaces the item at index in this list with the specified item.
- `int size()` - return the number of items.
- `boolean isEmpty()` - return `true` if no items, otherwise `false`.

Q2. Implement a `void delete(Object targetElement)` method that removes all instances of `targetElement` from the
list.

Q3. Add a `Node prev` field to the Node structure and implement a doubly-linked list.

Q4. Write a method `Node reverse(Node list)` that takes a list and returns a copy with the order of the items reversed. The original list should not be modified.

Q5. Write a method `boolean isPalindrome()` that returns `true` if the list is a [palindrome](https://en.wikipedia.org/wiki/Palindrome).

## Stacks & Queues

Q1. Implement a Stack data structure with the following interface:
- `void push(Object element)` - inserts `element` at the top of the stack.
- `Object pop()` - remove item at the top of the stack.
- `int size()` - return the number of items.
- `boolean isEmpty()` - return `true` if no items, otherwise `false`.
- `Object top()` - return item at the top of the stack without removing it.

Q2. Implement a Queue data structure with the following interface:
- `void enqueue(Object element)` - inserts `element` at the rear of the queue.
- `Object dequeue()` - remove item from front of queue.
- `int size()` - return the number of items.
- `boolean isEmpty()` - return `true` if no items, otherwise `false`.
- `Object front()` - return item at the front of the queue without removing it.

## More Exercises

Q1. Given a string made only from the characters `{}()[]`, write a program that returns `true` when balanced and returns `false` when unbalanced, e.g.

```
([{}])  ->   true
    
{[}]    ->   false

(([]))) ->   false

()[{}]  ->   true
```

Q2. Work to improve the performance of your implementations from the previous questions using any tricks you can think of. Experiment and think about how you could improve the performance of `add(int index, Object element)` and `remove(int index)` in your List implementation.
