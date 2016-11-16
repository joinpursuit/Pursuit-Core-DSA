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
    
    var largest = stack.peek()
    
    while stack.isEmpty() == false {
        if stack.peek()! > largest! {
            largest = stack.peek()
        }
        _ = stack.pop()
    }
    
    return largest!
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    
    var sum = 0
    
    while stack.isEmpty() == false {
        sum += stack.pop()!
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
    
    while stack.isEmpty() == false {
        tempStack.push(element: stack.pop()!)
    }
    
    return tempStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    
    guard stackOne.isEmpty() == true || stackTwo.isEmpty() == true else {return false}
    
    while stackOne.isEmpty() == false && stackTwo.isEmpty() == false {
        if stackOne.peek() != stackTwo.peek() {
            return false
        }
       _ = stackOne.pop()
       _ = stackTwo.pop()
    }
    
    return true
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    
    let tempStack = Stack<T>()
    
    
    while stack.isEmpty() == false {
        tempStack.push(element: stack.pop()!)
    }
    
    tempStack.push(element: newElement)

    while tempStack.isEmpty() == false {
        stack.push(element: tempStack.pop()!)
    }

    return Stack<T>()
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
    return false
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    return ""
}

