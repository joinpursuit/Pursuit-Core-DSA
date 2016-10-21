# Recursion

## Table of Contents
1. [What is Recursion?](#what-is-recursion)
2. [How to Use Recursion](#how-to-use-recursion)
  - [The Base Case](#the-base-case)
  - [Recursive Examples Step By Step](#recursive-examples-step-by-step)
  - [Recursive vs Iterative Loops](#recursive-vs-iterative-loops)
  - [Recursive State](#recursive-state)
3. [When to Use Recursion](#when-to-use-recursion)
4. [Calculating Big O of Recursive Functions](#calculating-big-o-of-recursive-functions)
5. [Resources](#resources)

### *"In order to understand recursion, you must first understand recursion"* - Marty McFly

# What is Recursion?
In computer science, recursion basically means a function that calls itself. Recursion can be a little mind bending at first but is actually relatively simple: it's basically just another way to create loops.

In fact, anything that can be done iteratively with a `for` loop or `while` loop can also be solved with recursion, and vice versa. There are some languages (like [Haskell](https://www.haskell.org/)) that do not even have iterative `for`loops or `while` loops at all, and use recursion for all looping instead!

Recursion is often used in functional programming. Mastering recursion can help you do some magical things in code.

Let's dive in.

# How to Use Recursion
## The Base Case
The most important part of any recursive function is the 'base case'. The base case is basically a conditional that tells the function to stop calling itself (the base case is usually just a simple `if` statement). Without a base case, recursive functions would call themselves infinitely, and leave you stuck in an endless loop, like Patrick:

<details open>
<summary>Recursive Patrick</summary>

![recursive patrick](https://media.giphy.com/media/xlTwaFb20TVjW/giphy.gif)
</details>

The function should NOT call itself within the base case. In other words, the base case `if` statement should do the very last thing the function does before ending.

Here's an example of a recursive function without a base case:

```js
function countForever(num) {
  console.log(num);
  countForever(num + 1);
}
```

And here's an example of a recursive function with a base case:

```js
function countToTen(num) {
  if(num === 10) {
    console.log(10);
  }
  else {
    console.log(num);
    countToTen(num + 1);
  }
}
```
Make sure your recursive functions always have a base case!

<details open>
<summary>Recursive Triangle</summary>
![recursive triangle](http://i.stack.imgur.com/HAEZW.gif)
</details>



## Recursive Examples Step by Step
Here's an example of a recursive solution for summing an array:
```js
function sumArray(arr, sum) {
	if(arr.length === 1) {
		return arr[0];
	}
	else {
		return arr[0] + sumArray(arr.slice(1));
	}
}
```
If we could get a look behind the scenes at what's happening if we called `sumArray([1, 2, 3, 4, 5])` ,the series of function calls would be the following:
```js
//Initial function call:
sumArray([1, 2, 3, 4, 5]);
//Behind the scenes look at the recursive function calls:
1 + sumArray([2, 3, 4, 5]);
1 + (2 + sumArray([3, 4, 5]));
1 + (2 + (3 + sumArray([4, 5])));
1 + (2 + (3 + (4 + sumArray([5]))));
//arr.length is now 1, so it will hit the base case
1 + (2 + (3 + (4 + 5)));
//returns 15
```

## Recursive vs Iterative Loops
Here is an example of a typical `for` loop that logs number to the console. The function starts at 0 and goes up to a 'max' number that's passed in as an argument:
```js
function iterativeLog(max) {
  //Loops from 0 to the max, and logs each number
  for(var i = 0; i <= max; i++) {
    console.log(i);
  }
}
iterativeLog(10);
```

Here's how you would write the same function resursively:

```js
function recursiveLog(max, i) {
  //Base case:
  if(i === max){
  	console.log(i);
  }
  //Recursive call:
  else {
  	console.log(i);
  	recursiveLog(max, i + 1);
  }
}
recursiveLog(10, 0);
```

You can take a closer look at the similarities between the iterative solution and recursive solution below:

![recursion color coded](http://i.imgur.com/Jaidtko.png)

Here's another good summary of the differences between recursion and iterative loops:

![recursion vs iterative table](http://i.imgur.com/EU13LeM.png)
Source: [Mastering Recursive Programming](https://www.ibm.com/developerworks/library/l-recurs/)

## Recursive State
In recursive functions, state is passed down through arguments. In other words, you should generally not save variables within your recursive functions. Instead, if you want to keep track of any data, you should pass them down through arguments. In this way the function's arguments basically keep a history of the state of the function. This makes recursive functions immutable, which is one of their advantages.

# When to use recursion
In general, you should only use recursion if it would be significantly simpler than the iterative solution. A good rule of thumb is to use recursion when it helps makes your code more readable. In most cases iterative solutions are preferable over recursive solutions because recursion has some added performance costs, like extra function calls.

A common, real world example of when to use recursion is the fibonnaci sequence. Here is an iterative solution for finding the nth number of a Fibonacci sequence:

```js
function fibIterative(n) {
  var a = 1;
  var b = 0;
  var c = null;
  while (n > 0) {
    c = a;
    a = b + a;
    b = c;
    n--;
  }
  return b;
}
```
And here's a recursive solution:
```js
function fibRecursive(n) {
  if (n <= 1) {
    return n;
  } else {
    return fibRecursive(n - 2) + fibRecursive(n - 1);
  }
}
```

Source: [Writing a Fibonacci implementation in JavaScript](https://www.gregjs.com/javascript/2016/writing-a-fibonacci-implementation-in-javascript/)

As you can see, the recursive solution is significantly simpler.

# Calculating Big O of Recursive Functions
In iterative loops, we count the number of loops in order to figure out the Big O complexity. Similarly, with recursion, we count the number of times the function is being called.

# Resources
- [Recursion, Recursion, Recursion](https://medium.freecodecamp.com/recursion-recursion-recursion-4db8890a674d#.kcw8k9ec6)
- [Recursion in Functional JavaScript](https://www.sitepoint.com/recursion-functional-javascript/)
- [Mastering Recursive Programming](https://www.ibm.com/developerworks/library/l-recurs/)
- [Recursion in JavaScript](http://kevvv.in/untitledrecursion-in-javascript/)
- [What are the Advantages of Iteration over Recursion, and Vice Versa?](http://benpfaff.org/writings/clc/recursion-vs-iteration.html)
- [Writing a Fibonacci implementation in JavaScript (Iterative vs Recursive)](https://www.gregjs.com/javascript/2016/writing-a-fibonacci-implementation-in-javascript/)
