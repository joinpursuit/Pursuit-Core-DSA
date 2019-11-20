## Abstract Data Types

---

### What's a Data Type?

- Basic building blocks of code
- Different ways to store information
- Allows you to perform operations 

---

### Native Data Types

- Integer
- Float
- Char
- String
- Boolean

-

```javascript
let num = 2;
let stringNum = "2";

console.log( num + 2 ); // 4
console.log( stringNum + 2 ) // 22
```

Depending on the data type, we carry out different types of operations

---

### Abstract Data Types

Also called Abstract Data Structures, help us deal with "big picture" problems without getting lost in the details.

-

Imagine creating a program that keeps track of a group of people sitting together in a movie theater

![](https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2a1fe3e63c97f40568e673fae29af4aa&auto=format&fit=crop&w=600&q=80)

-
### Approach 1

VERY BAD
```javascript 
let person1 = "Joe";
let person2 = "Amy";
let person3 = "Emily";
```

How would we keep track of who is on which spot?

-

### Approach 2 

Much better!

```javascript 
let group = [ "Joe", "Amy", "Emily" ]; 
```

Using an array we can easily and sequentially order our people. 

But there are still some questions:

- How do I find the right most person in perspective to the screen?
- Who went to the bathroom last?
- Who currently has the popcorn?

---

### Abstract Data Structures

- Allows us to perform custom operations to solve the problems at hand
- Don't have to worry about nitty gritty details 
- Is datatype agnostic: could be humans, aliens, cats

-

```javascript 
// Create a movie group with peeps
let group = new MovieGroup([ "Joe", "Amy", "Emily" ]);

group.screenPerspective();
// Screen --------> [ XXXXXXXXXX ]
// Group  --------> [ "Joe", "Amy", "Emily" ]

group.leftSeat(); // Joe
group.rightSeat(); // Emily

group.addNewLeftSeat("Bob"); // Added Bob to the collection
group.leftSeat(); // Bob

group.whoHasPopcorn(); // Amy
group.whoWentToBathroom(); // [ "Amy", "Emily" ]
```

---
### Final Thoughts

![](http://interactivepython.org/courselib/static/pythonds/_images/adt.png)

Abstract data structures help us focus on high level problems and provide us with some sort of interface to work with

---

### Activity 

Design and develop the MovieGroup data structure with the following interface and results:

```javascript 
// Create a movie group with peeps
let group = new MovieGroup([ "Joe", "Amy", "Emily" ]);

group.screenPerspective();
// Screen --------> [ XXXXXXXXXX ]
// Group  --------> [ "Joe", "Amy", "Emily" ]

group.leftSeat(); // Joe
group.rightSeat(); // Emily

group.addNewLeftSeat("Bob"); // Added Bob to the collection
group.leftSeat(); // Bob

group.flipScreen();

group.screenPerspective();
// Group  --------> [ "Bob", "Joe", "Amy", "Emily" ]
// Screen --------> [ XXXXXXXXXX ]

group.leftSeat(); // Emily
group.rightSeat(); // Bob

```

