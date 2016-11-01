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
    var largest: Int = 0
    let tempStack = Stack<Int>()
    
    while !(stack.isEmpty()) {
        let top = stack.pop()!
        if top > largest {
            largest = top
        }
        tempStack.push(element: top)
    }
    
    while !(tempStack.isEmpty()) {
        stack.push(element: tempStack.pop()!)
    }
    
    return largest
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
//    var sum = 0
//    let pop = stack.pop()
//    
//    while !(stack.isEmpty()) {
//        
//    }
    
    return 0
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
    let reverseStack = Stack<T>()
    
    while !(stack.isEmpty()) {
        let top = stack.pop()!
        reverseStack.push(element: top)
    }
    
    return reverseStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    
    var result = false
    
    while !stackOne.isEmpty() && !stackTwo.isEmpty() {
        let topOne = stackOne.pop()
        let topTwo = stackTwo.pop()
        
        if topOne != topTwo {
            result = false
            break
        } else {
            result = true
        }
    }
    
    return result
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
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

