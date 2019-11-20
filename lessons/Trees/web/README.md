# Trees

## Goals
- Understand what's a Tree
- Components of a Tree
- General Purpose Tree
- Implementing a General Purpose Tree
- What's a Binary Search Tree
- Implementing Binary Search Tree


## Lesson 

## What's a Tree?

![Tree Diagram](assets/tree-diagram.png)

Trees play a major role in computer science. It is used to tackle many recurring challenges in software development, such as:
- Representing hierarchical relationships
- Managing sorted data
- Facilitating fast lookup operations

There are many types of trees each with their unique quirks and purposes. For the sake of this lesson we will be tackling the following:

1. General Purpose Tree
2. Binary Search Tree


## Components of a Tree

Before we dive into the different types of trees. We must understand what every tree has in common. A tree is composed of a couple important pieces. They are:

1. Node
2. Root
3. Parent / Child
4. Leaf

### Node 

As you can tell by now Nodes are the building blocks of basically all Abstract Data Structures (ADS). What makes them so useful:
- Abstraction to hold some sort of value
- Allows the ability to chain or link together other Nodes

That ability to chain and link together Nodes is what essentially makes an ADS. 

![Node Diagram](assets/node-diagram.png)

### Root

The first and topmost Node in a tree is called the Root. This Node has no parent or any previous Node linking to it.

![Root Diagram](assets/root-diagram.png)

### Parent / Child

Whenever a Node has a link to other Nodes it creates this Parent / Child relationship. The parent is the top Node that links to the new Nodes (child nodes).

![Parent/Child Diagram](assets/parent-child-diagram.png)

### Leaf

A Leaf is any Node that does not contain any children Nodes. Essentially, they are the end of the line for the tree for that particular branch. 

![Leaf Diagram](assets/leaf-diagram.png)

### General Purpose Tree

A general purpose tree is very good at showing relationships and hierarchies. Some real world examples: 

- DOM: Document Object Model of a web page
- View hierarchy on a mobile application

## General Purpose Tree Implementation

### Node

```javascript
class TreeNode {

  constructor(value) {
    this.value = value;
    this.children = [];
  }

}
```

For our tree node we need two member variables. One to store the value. The other is an array called "children". This is a little different from what we are used to. We usually have a reference variable to hold the next Nodes. But, for the sake of a General Purpose Tree, we have no idea how many children we are going to have. So using an Array to hold children Nodes is best practice.

This tree node will act as the Root and foundation of any tree.

### Adding Children

Add the following to the TreeNode class:

```javascript
add(value) {
  // Assign value to a new TreeNode
  const newTreeNode = new TreeNode(value);

  // Add the new TreeNode to our childrens array
  this.children.push(newTreeNode);

  // Return a reference to the Tree, incase you want to add subtrees
  return newTreeNode;
}
```

So now, we can use our Tree to create some cool relationships!

```javascript
let animalKingdom = new TreeNode("Animals");

const feline = animalKingdom.add("Feline");
const canine = animalKingdom.add("Canine");

feline.add("Cat");
feline.add("Tiger");
feline.add("Lion");

canine.add("Wolf");
const dog = canine.add("Dog");
dog.add("Husky");
dog.add("Corgi");
```

Would result in the following relationship:

![Animal Tree](assets/animals-tree.png)

### Traversing 



