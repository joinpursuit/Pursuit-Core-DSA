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
    var largest:Int = stack.peek()!
    
    while stack.isEmpty() != true {
        if stack.peek()! > largest {
            largest = stack.peek()!
        }
        tempStack.push(element: stack.pop()!)
    }
    while tempStack.isEmpty() != true {
        stack.push(element: tempStack.pop()!)
    }
    return largest
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
  
    let tempStack = Stack<Int>()
    var sum = 0
    
    while stack.isEmpty() != true {
        sum += stack.peek()!
        tempStack.push(element: stack.pop()!)
    }
    while tempStack.isEmpty() != true {
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
    
    let stack2 = Stack<T>()
    let stack3 = Stack<T>()
    while stack.isEmpty() != true {
        stack3.push(element: stack.peek()!)
        stack2.push(element: stack.pop()!)
    }
    while !(stack3.isEmpty()) {
        stack.push(element: stack3.pop()!)
    }
    
    return stack2
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    let stackOneTemp = Stack<T>()
    let stackTwoTemp = Stack<T>()
    var returnValue = true
    
    while !(stackOne.isEmpty()) && !(stackTwo.isEmpty()) {
        if stackOne.peek() != stackTwo.peek() {
            returnValue = false
        }
        stackOneTemp.push(element: stackOne.pop()!)
        stackTwoTemp.push(element: stackTwo.pop()!)
    }
    if stackOne.isEmpty() && !(stackTwo.isEmpty()) || !(stackOne.isEmpty()) && stackTwo.isEmpty() {
        returnValue = false
    }
   
    while stackOneTemp.isEmpty() != true && stackTwoTemp.isEmpty() != true {
        stackOne.push(element: stackOneTemp.pop()!)
        stackTwo.push(element: stackTwoTemp.pop()!)
    }
    
    return returnValue
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    let tempStack = Stack<T>()
    while !(stack.isEmpty()) {
        tempStack.push(element: stack.pop()!)
    }
    stack.push(element: newElement)
    while !(tempStack.isEmpty()) {
        stack.push(element: tempStack.pop()!)
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
    var open = 0
    var close = 0
    for char in str.characters {
        if char == "(" { open += 1 }
        if char == ")" { close += 1 }
    }
    return open == close
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    return String(num, radix: 2)
}

