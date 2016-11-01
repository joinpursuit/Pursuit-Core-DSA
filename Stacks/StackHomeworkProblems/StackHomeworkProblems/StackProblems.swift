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
//    let maxStack = Stack<Int>()
//    maxStack.push(element: stack.pop()!)
//    if maxStack.peek()! < stack.peek()! {
//        maxStack.push(element: stack.peek()!)
//    }
//    return maxStack.peek()!
    
    var max = 0
    while !(stack.isEmpty()) {
        let top = stack.pop()!
        if top > max {
            max = top
        }
    }
    return max
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var total = 0
    while !(stack.isEmpty()) {
        total += stack.peek()!
        stack.pop()!
    }
    return total
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
    let reversedStack = Stack<T>()
    while !(stack.isEmpty()) {
        reversedStack.push(element: stack.peek()!)
        stack.pop()!
    }
    return reversedStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    
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

