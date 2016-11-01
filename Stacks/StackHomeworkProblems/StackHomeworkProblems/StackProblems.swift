//
//  StackProblems.swift
//  StackHomeworkProblems
//
//  Created by C4Q  on 10/30/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation


//Problem One:
//Find the largest integer in a Stack of Ints

func largest(stack: Stack<Int>) -> Int {
  let tempStack = Stack<Int>()
  var largest = stack.peek()!
  
  while !(stack.isEmpty()) {
    let top = stack.pop()!
    if top > largest {
      largest = top
    }
    tempStack.push(element: top)
  }
  
  while !tempStack.isEmpty() {
    stack.push(element: tempStack.pop()!)
  }
  return largest
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
  let tempStack = Stack<Int>()
  var sum = 0
  
  while !(stack.isEmpty()) {
    let top = stack.pop()!
    sum += top
    tempStack.push(element: top)
  }
  
  while !tempStack.isEmpty() {
    stack.push(element: tempStack.pop()!)
  }
  
  return sum
}

//Problem Three:
//Reverse a Stack without using an Array

//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

func reverse<T>(stack: Stack<T>) -> Stack<T> {
  let tempStack = Stack<T>()
  let originalStack = Stack<T>()
  
  while !stack.isEmpty() {
    let new = stack.pop()!
    tempStack.push(element: new)
    originalStack.push(element: new)
  }
  while !originalStack.isEmpty() {
    stack.push(element: originalStack.pop()!)
  }
  return tempStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
  let tempStack = Stack<T>()
  
  if stackOne === stackTwo { return true }
  
  while !stackOne.isEmpty() || !stackTwo.isEmpty() {
    guard !stackOne.isEmpty() && !stackTwo.isEmpty() else { return false }
    guard stackOne.peek() == stackTwo.peek() else { return false }
    let newOne = stackOne.pop()!
    let newTwo = stackTwo.pop()!
    tempStack.push(element: newOne)
    tempStack.push(element: newTwo)
  }
  
  while !tempStack.isEmpty() {
    let tempOne = tempStack.pop()!
    let tempTwo = tempStack.pop()!
    stackTwo.push(element: tempTwo)
    stackOne.push(element: tempOne)
  }
  
  return true
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
  let tempStack = Stack<T>()
  
  while !stack.isEmpty() {
    let top = stack.pop()!
    tempStack.push(element: top)
  }
  
  stack.push(element: newElement)
  
  while !tempStack.isEmpty() {
    let top = tempStack.pop()!
    stack.push(element: top)
  }
  
  return stack
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false


func isBalanced(str: String) -> Bool {
  var a = 0
  var b = 0
  
  for char in str.characters {
    if char == "(" {
      a += 1
    }
    if char == ")" {
      b += 1
    }
  }
  
  if a == b {
    return true
  }
  
  return false
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
  return ""
}


