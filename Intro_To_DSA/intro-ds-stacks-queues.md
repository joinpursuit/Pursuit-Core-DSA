- title: Intro to Data Structures
- tags: java, data structures, algorithms, time complexity, big o notation, lists, stacks, queues

# Objectives

- Define "What is a data structure?" and "What is an algorithm?".
- Gain exposure to calculating the runtime performance of an algorithm using Big O Notation.
- Review how information is stored in memory and gain familiarity with key differences between an array and a list.
- Practice implementing common data structures - nodes, lists, stacks and queues - in Java.

# Resources

- [Open Data Structures in Java](http://opendatastructures.org/ods-java.pdf)
- [UC San Diego Data Structures in Java - Coursera](https://www.coursera.org/learn/data-structures)
- [Itsy Bitsy Data Structures - an interesting and entertaining intro to data structures in JS](https://github.com/thejameskyle/itsy-bitsy-data-structures)
- [CS50 Wiki - Big O Notation](http://cs50.wiki/Big+O+notation)
- [Big O Cheat Sheet](http://bigocheatsheet.com/)
- [Visualgo.net - visualizing data structures](http://visualgo.net/)

# Lecture

## What is a data structure?

**Data structures** are different methods of storing and organizing data.

In Java, we're already familiar with some built-in **primitive** data types: `int`, `byte`, `char`, `boolean`, etc..

We're also already familiar with several data structures: arrays, lists, maps, stacks and queues. 

When discussing data structures, it is important to understand the difference between a data structure’s interface and its implementation. An **interface** describes what a data structure does, while an **implementation** describes how the data structure does it.

## Why do we care?

We care about understanding data structures because they can help:

- Manage complexity and make programs easier to follow.
- Build high-performance, memory-efficient programs.

Data can always be represented in many different ways. However, depending on what that data is and what you need to do with it, one representation will be a better choice than the others.

## What is an algorithm?

An **algorithm** is a set of step-by-step operations that accomplishes a task in a finite time period.

An algorithm could be as simple as a set of spoken directions that you share to a friend:

```
"Take a slice of bread"
"Put peanut butter on the slice"
"Take a second slice of bread"
"Put jelly on that slice"
"Press the slices of bread together"
```

Or it could be written down with pencil and paper:

```
1. Count from 1 to 100 according to the following rules
2. If the current number is divisible by 3, write "Fizz".
3. If the current number is divisible by 5, write "Buzz".
4. If the current number is divisible by 3 and 5, write "FizzBuzz".
5. Otherwise, write the current number.

```

Or it could be represented as Java source code:

```java
public class FizzBuzz {
    public static void main(String[] args) {
        for (int i = 1; i <= 100; i++) {
            boolean fizzOrBuzz = false;
            if (i % 3 == 0) {
                System.out.print("Fizz");
                fizzOrBuzz = true;
            }
            if (i % 5 == 0) {
                System.out.print("Buzz");
                fizzOrBuzz = true;
            }

            if (fizzOrBuzz) {
                System.out.println();
            } else {
                System.out.println(String.valueOf(i));
            }
        }
    }
}
```

Any given task can be implemented in an infinite number of ways. So for common tasks there are often many different algorithms that people have come up with. Each one of these different algorithms will be better for something, but in order to choose one best suited to a specific need, we need a way of comparing and measuring them.

When we compare the performance of algorithms we use a rough measurement of their average and worst-case performance using something called Big O Notation.

## Measuring performance

**Big O Notation** is a way of measuring the performance of algorithms in order to compare one against another - specifically by how they respond to the number of items (N) that you give them.
 
There are two primary things that you measure with Big O Notation:

- **Time complexity**: the total count of operations an algorithm will perform given a set of items.
- **Space complexity**: the total memory an algorithm will take up while running given a set of items.

We measure these independently from one another because while an algorithm may perform less operations than another, it may also take up way more memory. Depending on what your requirements are, one may be a better choice than the other.

For a problem of size N:
- a constant-time method is O(1)
- a linear-time method is O(N)
- a quadratic-time method is O(N2)


![common runtime complexity](https://i.stack.imgur.com/ia6VB.png)

## Basic operations

With data structures, you can perform four primary types of actions:
 
 - **Accessing**
 - **Searching** 
 - **Inserting**
 - **Deleting**

See the [Big O Cheat Sheet](http://bigocheatsheet.com/) for a reference table listing time and space complexity for these operations on common data structures.

## Arrays

An array is a data structure that is designed to store a group of objects of the same or different types. Arrays can hold primitives as well as references. Each item, or value, in an array is called an element, and each element is accessed by its integer index. 

Arrays offer constant time access to any value in the array.

Arrays are not very dynamic. Adding or removing an element near the middle of a list means that a large number of elements in the array need to be shifted to make room for the newly added element or to fill in the gap created by the deleted element.

Arrays cannot expand or shrink. When the number of elements in the data structure exceeds the size of the backing array, a new array needs to be allocated and the data from the old array needs to be copied into the new array. This is an expensive operation.

## Linked Lists

Let's look at another linear data structure that addresses some of the limitations of arrays. A **linked list** is a data structure consisting of a group of nodes which together represent a sequence.

Simplest form: each element (we will call it a **node**) of a list is comprising of two items - the **data** and a **reference** (aka "link") to the next node. The last node has a reference to `null`. The entry point into a linked list is called the **head** of the list. It should be noted that head is not a separate node, but the reference to the first node. If the list is empty then the head is a `null` reference.

```java
public class Node {
    Node next;
    Object data;
}
```

A linked list is a dynamic data structure, allocating the needed memory while the program is running. The number of nodes in a list is not fixed and it can grow and shrink on demand. 

One disadvantage of a linked list against an array is that it does not allow direct access to the individual elements. If you want to access a particular item then you have to start at the head and follow the references until you get to that item. Also, they have a tendency to use more memory than an array as the references require extra storage space.

## Types of linked lists

- **Singly-linked**: simplest form as described above.
- **Doubly-linked**: a list that has two references, one to the next node and another to previous node.
- **Circular-linked**: the last node of the list points back to the first node (or the head) of the list.

## Stacks

A **stack** is a last in, first out (LIFO) data structure that can be visualized like a stack of papers or pancakes. What you put on top (push) is the first item you take off (pop).

Stack interface:
- `void push(E item)` - inserts `item` at the top of the stack, O(1).
- `E pop()` - remove item at the top of the stack, O(1).
- `int size()` - return the number of items.
- `boolean isEmpty()` - return `true` if no items, otherwise `false`.
- `E top()` - return item at the top of the stack without removing it, O(1).
 
## Queues

A **queue** is a first in, first out (FIFO) data structure that can be visualized as a waiting line. You add to the back of the line (enqueue), the front of the line is the first item you take off (dequeue).

Queue interface:
- `void enqueue(E item)` - inserts `item` at the rear of the queue, O(1).
- `E dequeue()` - remove item from front of queue, O(1).
- `int size()` - return the number of items.
- `boolean isEmpty()` - return `true` if no items, otherwise `false`.
- `E front()` - return item at the front of the queue without removing it, O(1).

## [Exercises](intro-ds-exercises.md)
