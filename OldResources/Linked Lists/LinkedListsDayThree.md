##Homework Review

```swift
func mergeSortedLists<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
    var listOneCurrentNode: Node? = listOne.head
    var listTwoCurrentNode: Node? = listTwo.head
    let finalList = LinkedList<T>()
    
    while listOneCurrentNode != nil && listTwoCurrentNode != nil {
        if (listOneCurrentNode?.key)! < (listTwoCurrentNode?.key)! {
            finalList.append(element: (listOneCurrentNode?.key)!)
            listOneCurrentNode = listOneCurrentNode?.next
        } else {
            finalList.append(element: (listTwoCurrentNode?.key)!)
            listTwoCurrentNode = listTwoCurrentNode?.next
        }
    }
    
    while listOneCurrentNode != nil {
        finalList.append(element: (listOneCurrentNode?.key)!)
        listOneCurrentNode = listOneCurrentNode?.next
    }
    
    while listTwoCurrentNode != nil {
        finalList.append(element: (listTwoCurrentNode?.key)!)
        listTwoCurrentNode = listTwoCurrentNode?.next
    }
    return finalList
}
```

##Linked List Exercise

Detect if a linked list has a cycle in it.

So far, we have had our linked lists end with a reference to *nil*

![Linked list](http://interactivepython.org/runestone/static/pythonds/_images/linkedlist.png)

However, a linked list can contain a cycle.

![Linked list with cycle](http://i.stack.imgur.com/irw1S.jpg)

Maybe someone made a mistake and set the next property of Node 6 to Node 3 instead of to *nil*

In any case, our challenge now is to write a function that can whether or not a linked list ends or whether there is a cycle inside.


##Solving Cycles

<details>
	<summary> Step One: Clarify Problem </summary>
	What else do we need to know?
</details>

<details>
	<summary> Step Two: Inputs </summary>
	Linked List
</details>

<details>
	<summary> Step Three: Outputs </summary>
	Bool
</details>

<details>
	<summary> Step Four: Explain solution in words </summary>
	
</details>

<details>
	<summary> Step Five: Code solution </summary>
	
</details>
 
 
<details>
	<summary> Step Six: Test solution </summary>
	
</details> 

##Doubly Linked List

A doubly linked list is very similar to a singly linked list.  The only distinction is that each Node has both a next Node as well as a previous Node.

![Doubly Linked List](https://upload.wikimedia.org/wikipedia/commons/5/5e/Doubly-linked-list.svg)


The main advantage to using a doubly linked list is that we can iterate through in either direction.

We'll need to rewrite our Node to include a previous Node.


```swift
class Node<T> {
   var key: T!
   var next: Node?
   var previous: Node?
}
```
