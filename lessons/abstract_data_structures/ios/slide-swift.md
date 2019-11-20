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

```swift
let num: Int = 2
let stringNum: String = "2"

print( num + 2 ) // 4
print( stringNum + "2" ) // 22
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
```swift 
let person1 = "Joe"
let person2 = "Amy"
let person3 = "Emily"
```

How would we keep track of who is on which spot?

-

### Approach 2 

Much better!

```swift 
let group: [String] = [ "Joe", "Amy", "Emily" ] 
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

```swift 
// Create a movie group with peeps
let group = MovieGroup(collection: [ "Joe", "Amy", "Emily" ])
 
group.screenPerspective() 
// Screen --------> [ XXXXXXXXXX ]
// Group  --------> [ "Joe", "Amy", "Emily" ]

group.leftSeat() // Joe
group.rightSeat() // Emily

group.addNewLeftSeat("Bob") // Added Bob to the collection
group.leftSeat() // Bob

group.whoHasPopcorn() // Amy
group.whoWentToBathroom() // [ "Amy", "Emily" ]
```

---
### Final Thoughts

![](http://interactivepython.org/courselib/static/pythonds/_images/adt.png)

- We care about the high level problems the structure solves
- We don't care about the implementation