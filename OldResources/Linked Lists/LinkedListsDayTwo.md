#Linked Lists Day Two

##Homework Review

###getElement(at:)

###insert(_:at:)

###contains(element:)

###remove(at:)


##What are pointers anyways?

A pointer is a variable which contains the address in memory of another variable.  In some languages (e.g. C), you can interact directly with pointers. In Swift, we don't have to worry about accessing pointers directly, but we can talk about references to objects.


##Pass by value vs. Pass by reference

Objects in Swift can be classified by whether they pass by value or by reference.

![High quality image](http://i.stack.imgur.com/fNEsL.jpg)


![Cup animation](http://i.stack.imgur.com/QdcG2.gif)

Let's take a look at a Playground and see what happens with some common objects in Swift

(Live Coding)


##Swap

A very common pattern we'll use in solving algorithms is to swap two elements.  Let's practice with a quick problem.

**Write a function that swaps the first and last elements of an array**

##Linked List Exercises

###1) Write a function that checks if two linked lists are the same
  
**Sample Input 1**:  
3 -> 8 -> 4 -> 1 -> nil
 				  
1 -> 4 -> 8 -> 3 -> nil

**Sample Output 1**: false

 
**Sample Input 2**: 

3 -> 8 -> 4 -> 1 -> nil
 				   
3 -> 8 -> 4 -> 1 -> nil
 				   
**Sample Output 2**: true

###2) Write a function that reverses a linked list

**Sample Input 1**: 

3 -> 8 -> 4 -> 1 -> nil

**Sample Output 1**: 

1 -> 4 -> 8 -> 3 -> nil


###3) Write a function that takes two sorted linked lists as input and returns a single sorted linked list

**Sample Input 1**

1 -> 3 -> 5 -> 6 -> nil

2 -> 4 -> 7 -> nil

**Sample Output 1**

1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> nil

**Sample Input 2**

15 -> nil

12 -> nil

**Sample Output 2**

12 -> 15 -> nil

