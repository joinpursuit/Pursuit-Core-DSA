
# Pretty Print / Traverse

| Difficulty | Tags | Solution Link
| --- | --- | --- | 
| Easy | [Linked Lists] | [To Do]() | 


## Problem Description

Traverse a linked list, console logging each value in order.


## Setup

Use the following to construct a linked list

```js
class Node {
    constructor(val) {
        this.next = null
        this.val = val
    }
}

let list = new Node(556)
list.next = new Node(41)
list.next.next = new Node(33)
list.next.next.next = new Node(150)
list.next.next.next.next = new Node(11)
```

## Sample

```js
function traverse(items) {
    // ....
}

traverse(list)
// 556
// 41
// 33
// 150
// 11
```