# Linked Lists

##Array Review

Last week, we reviewed how [arrays](/link) are stored organized and stored in memory.  Arrays are stored in a contiguous block of memory and have the following performance:

<details>
	<summary>Access an element in an array</summary>
	O(1)
</details>

<details>
	<summary>Insert an element anywhere in an array</summary>
	O(n)
</details>

<details>
	<summary>Append an element to an array</summary>
	O(1)
</details>

<details>
	<summary>Find an element in an array</summary>
	O(n)
</details>

<details>
	<summary>Delete an element in an array</summary>
	O(n)
</details>


## Linked List

A linked list is a way of storing information.  A linked list consists of a series of nodes.  Each node contains data, as well as a pointer to the next node in the series.

![Linked list picture](https://upload.wikimedia.org/wikipedia/commons/6/6d/Singly-linked-list.svg)

|Linked List| Array |
|---|---|
|Ordered|Ordered|
|One Dimensional|One Dimensional|
|Indexed|Indexed|
|Variable Size|Fixed Size|
|Mutable|Mutable|

##Common Operations

###Access an element

![Linked List Access](https://upload.wikimedia.org/wikipedia/commons/6/6d/Singly-linked-list.svg)

<details>
	<summary>Runtime</summary>
	O(n)
</details>

<details>
	<summary>Explanation</summary>
	In order to access the node at index 4, we need to 	visit every node before it.
</details>	

###Insert an element

![Linked List Insertion](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/CPT-LinkedLists-addingnode.svg/474px-CPT-LinkedLists-addingnode.svg.png)


<details>
	<summary>Runtime</summary>
	O(1)
</details>


<details>
	<summary>Explanation</summary>
	We can insert a node in constant time by changing the 	pointer of the previous node to point to the new 	node.
</details>	


###Find an element

![Linked List Find](https://upload.wikimedia.org/wikipedia/commons/6/6d/Singly-linked-list.svg)

<details>
	<summary>Runtime</summary>
	O(n)
</details>


<details>
	<summary>Explanation</summary>
	In order to find an element, we have to look at each 	node in the linked list.
</details>


###Delete an element

![Linked List Delete](https://modernpathshala.com/Images/singly-linked-list/Article/276195620161604035916Delete-Node-In-Linked-List.JPG)


<details>
	<summary>Runtime</summary>
	O(1)
</details>


<details>
	<summary>Explanation</summary>
	We need to change the pointer of a node to the node 	after the node we want to delete.
</details>


###Node Implementation

We can make a functional linked list of Ints with only a Node class.

```swift
class Node {
    var key: Int!
    var next: Node?
}
```

But what if we want to be able to make our Linked List Node not limited just to Ints?

###Generics

[Swift Documenation](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html)

Generics are a powerful tool in Swift that lets us extend code to multiple different types.  The symbol: 'T' indicates a generic.  Let's rewrite the code from above:

```swift
class Node<T> {
	var key: T!
	var next: Node?
}
```

The 'T' in angle brackets indicates that the class will use generics.

###Linked List Implementation

Live-coding
