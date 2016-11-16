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
    var largest = stack.pop()
    while !(stack.isEmpty()) {
        let num = stack.pop()
        if num! > largest! {
            largest = num
        }
    }
    return largest!
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
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
    return Stack<T>()
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

