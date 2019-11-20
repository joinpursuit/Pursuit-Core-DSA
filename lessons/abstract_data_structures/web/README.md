# Abstract Data Structures

## Goals
- Understand what's a Data Type
- Understand Abstract vs. Native Data Structures
- Purpose of Abstract Data Structures
- Implement a simple Abstract Data Structure

## Lesson 

## What's a Data Type?

We have been working with data types since the beginning of our programming careers. Data types allow us to store information for different purposes. Want to store a person's name? String. How about the person's age? Integer. 

#### Different ways to store information:

| Data Type | Example | Purpose |
| --- | --- | --- |
| Boolean | true, false | To be used for conditionals and apply logic
| Number | 100, 3.14 | To hold numerical values and apply mathematical operations
| String | 'Hello world', 'John Smith' | To store alphanumerical values
| Null | Null | To indicate invalid reference to a nonexistent address

#### Performing operations:

Depending on the data type you perform different set of rules to apply.

*Number operations*
```javascript
2 + 2
=> 4
```

*String operations*
```javascript
'2' + '2'
=> '22'
```

## Abstract Data Structures

The reason these are known as "structures" is because they usually are built on top of many Native Data Types. Also called Abstract Data Types (ADT), help us deal with "big picture" problems without getting lost in the details. 

#### Movie Theater Example

![Theater Seats](assets/theater.jpeg)

Imagine creating a program that keeps track of a group of people sitting together in a movie theater. 

#### Here are some problems we would want to solve: 
1. Who's sitting next to who? In what order?
2. Who's the left most person in perspective to the screen?
3. Who's the right most person in perspective to the screen?
4. Who has the popcorn right now? 
5. Who went to the bathroom last?

These are very high level problems. You as the programmer don't want to deal with all the nitty gritty details. 

Now imagine if we wanted to solve the problem of who's sitting to who with Native Data Types:
```javascript 
let person1 = "Joe"
let person2 = "Amy"
let person3 = "Emily"
```

This obviously becomes too annoying to deal with. We can make this simpler using an Abstract Data Structure we've been using all along! The Array! 

```javascript 
let group = [ "Joe", "Amy", "Emily" ];
```

Why is this better? 
1. We can sequence the users more easily
2. We can add and remove users in different positions

The Array data structure is directly providing us with an *INTERFACE* to work with. This interface allows us as the programmer to solve higher level problems. While the Array handles all the nitty dritty details. 

But wait...

The Array *DOESN'T* help us solve the following questions does it?
1. How do I find the right most person perspective screen?
2. Who went to the bathroom last?
3. Who currently has the popcorn?
4. What if the theater wanted to switch the screen to the back of the theater? How does that affect the orientation of the people?

This is why we create our own Abstract Data Structures! 

### Building an Abstract Data Structure

Abstract Data Structures are designed to perform and solve very unique problems you may run into for your program. It provides a high level interface where we can just focus on solving the problem. It should be Datatype agnostic! That means in our Movie theater example, it could be a group of Humans, Aliens or Cats watching a movie together.


### Activity

Design and develop this 'MovieGroup' abstract data structure.

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







