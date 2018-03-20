#Queues

A **Queue** is another way to organize and store data.

A queue is like a line of people.  When someone enters the line, they enter at the back.  When someone leaves the line, they leave from the front.

![Line of people](https://pythonschool.net/data-structures-algorithms/images/queue.jpg)

In computer science, the following image models the abstract data type:

![Queue ADT](https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Data_Queue.svg/300px-Data_Queue.svg.png)

**Enqueue** means enter the queue

**Dequeue** means leave the queue

#First In First Out

In a queue, the first element to enter the queue is also the first one to leave it.  This is because we always remove from the front of the queue and insert at the back of the queue.  This order is called **First In First Out**, or **FIFO**.

As soon as we dequeue, we are dequeuing the elemnt that has been in line the longest.  Just like if you were queueing at a bank, if you are the first person in the queue, you will be the first one helped.

##Methods

A queue has the following methods:

**enQueue(newElement:)** : Adds an element to the back of the queue.

**deQueue()** : Removes and returns the first element in the queue.

**peek()** : Returns the element at the front of the queue without removing it

**isEmpty()** : Returns whether or not the queue has any elements inside of it

##Performance 

<details>
	<summary>Access an element</summary>
	O(n)
</details>	

<details>
	<summary>Find an element</summary>
	O(n)
</details>	

<details>
	<summarys>Insert an element </summary>
	O(1)
</details>	

<details>
	<summary>Delete an element</summary>
	O(1)
</details>

##Use Cases:

1. Managing calls at a help desk ("Your call will be answered in the order it was received")
2. Register at a grocery store
3. Traversing a binary tree

![Tree](http://www.geeksforgeeks.org//wp-content/uploads/tree6.png)


##Implementation

Just like with stacks, we can implement a queue using a variety of different data structures.  Common implementations include:

1. Using an array
2. Using a linked list
3. Using two stacks


##Implementation Live Coding