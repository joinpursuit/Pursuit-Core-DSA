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

### *"In order to understand recursion, you must first understand recursion"*

# What is Recursion?
In computer science, recursion basically means a function that calls itself. Recursion can be a little mind bending at first but is actually relatively simple: it's basically just another way to create loops.

In fact, anything that can be done iteratively with a `for` loop or `while` loop can also be solved with recursion, and vice versa. There are some languages (like [Haskell](https://www.haskell.org/)) that do not even have iterative `for`loops or `while` loops at all, and use recursion for all looping instead!

Recursion is often used in functional programming. Mastering recursion can help you do some magical things in code.

Let's dive in.

# How to Use Recursion

A recursive function consists of two things:

1. A recursive call
2. A base case

## The Recursive Call
A recursive function is a function that calls iteself.

```swift
func recurse() {
	print("hi")
	recurse()
}
```
recurse() is a recursive function.  It will print "hi", then call itself, which will print "hi" and then call itself, which will print "hi" and then call itself, and so on.  

<details open>
<summary>Recursive Patrick</summary>

![recursive patrick](https://media.giphy.com/media/xlTwaFb20TVjW/giphy.gif)
</details>


How can we stop this process and have it do something more useful?

## The Base Case
The most important part of any recursive function is the 'base case'. The base case is basically a conditional that tells the function to stop calling itself (the base case is usually just a simple `if` statement):


The function should NOT call itself within the base case. In other words, the base case `if` statement should do the very last thing the function does before ending.

Here's another example of a recursive function without a base case:

```swift
func countDown(from currentNum: Int) {
    print(currentNum)
    countDown(from: currentNum - 1)
}
```



<details open>
<summary> When do want this function to stop running? </summary>
        One idea is to stop at zero.
</details>

Let's add that base case:

```swift
func countDown(from currentNum: Int) {
    if currentNum == 0 {
        return
    }
    print(currentNum)
    countDown(from: currentNum - 1)
}
```
Make sure your recursive functions always have a base case!

<details open>
<summary>Recursive Triangle</summary>
![recursive triangle](http://i.stack.imgur.com/HAEZW.gif)
</details>



## Practice problem 1

Write a function that counts up to a target number.

```swift
func countUp(to target: Int, startingAt currentNum: Int) {
}
```

## Recursive vs Iterative Loops
We just saw an example of how to write a loop recursively. 

We could have done that iteratively pretty easily:

```swift
func countUp(to target: Int, startingAt currentNun: Int) {
   for i in currentNum..<target {
      print(i)
   }
}
```

Anything that we can solve iteratively, we can solve recurseively and vice versa. 

This leads to a natural question.  If recursion looks more confusing, why would we ever want to use it solve problems?

# When to use recursion
In general, you should only use recursion if it would be significantly simpler than the iterative solution. A good rule of thumb is to use recursion when it helps makes your code more readable. In most cases iterative solutions are preferable over recursive solutions because recursion has some added performance costs, like extra function calls.

A common, real world example of when to use recursion is the fibonnaci sequence. Here is an iterative solution for finding the nth number of a Fibonacci sequence:

The Fibonacci sequence is made by adding the two previous numbers together:

0, 1, 1, 2, 3, 5, 8, 13, 21, 34 ...

Let's made an iterative solution first, then let's compare it to a recursive solution:

## Recursive State
In recursive functions, state is passed down through arguments. In other words, you should generally not save variables within your recursive functions. Instead, if you want to keep track of any data, you should pass them down through arguments. In this way the function's arguments basically keep a history of the state of the function. This makes recursive functions immutable, which is one of their advantages.


# Calculating Big O of Recursive Functions
In iterative loops, we count the number of loops in order to figure out the Big O complexity. Similarly, with recursion, we count the number of times the function is being called.



# Exercises:

1. Print out all elements in an array recursively

2. Concatenate all the elements in an array of Strings

Sample Input: ["Hi", "there", ",", " ", "user","!"]

Sample Output: "Hi there, user!"

2. Find the sum of all the numbers in an array

Sample Input: [3,6,1,3,2]

Sample Output: 15

3. Find the sum of all the even numbers in an array

Sample Input: [3,6,1,3,2]

Sample Output: 8

4. Find the factorial of a given number

Factorial definition:

5 factorial = 5! = 5 * 4 * 3 * 2 * 1 = 120

