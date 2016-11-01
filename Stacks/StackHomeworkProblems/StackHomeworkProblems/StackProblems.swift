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
//[1,2,3,4]
func largest(stack: Stack<Int>) -> Int {
    var max = 0
    var current = 0
    while !stack.isEmpty() {
        if current > max {
            max = current
            current = stack.pop()!
        }
    }
    return max
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var current = 0
    var sum = 0
    while !stack.isEmpty() {
        sum += current
        current = stack.pop()!
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


func reverse<T: Comparable>(stack: Stack<T>) -> Stack<T> {
    
    let newStack = Stack<T>()
    while !(stack.isEmpty()) {
        newStack.push(element: stack.pop()!)
    }
    return newStack
}




//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    var answer = false
    var currentOne = stackOne.peek()
    var currentTwo = stackTwo.peek()
    
    while !stackOne.isEmpty() && !stackTwo.isEmpty() {
        currentOne = stackOne.pop()
        currentTwo = stackTwo.pop()
        if currentOne != currentTwo {
            answer = false
            break
        } else {
            answer = true
        }
    }
    return answer
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    let newStack = newElement as! Stack<T>
    while !stack.isEmpty() {
    newStack.push(element: stack.pop()!)
    }
    return newStack
    
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false

//not finished
func isBalanced(str: String) -> Bool {
    var check = true
    //change str to stack
    let tempStr = str.components(separatedBy: "")
    let tempStack = Stack<String>()
    for i in tempStr {
        tempStack.push(element: i)
    }
    
    //stacks
    var leftCount = 0
    var rightCount = 0
    while !tempStack.isEmpty() {
        let current = tempStack.pop()
        if current == "(" {
            leftCount += 1
        } else {
            rightCount += 1
        }
    }
    
    //conditionals
    if leftCount != rightCount {
        check = false
    }
    return check
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    let numStack = Stack<Int>()
    numStack.push(element: num)
    
    let binary = Stack<String>()
    while numStack.peek()! != 0 {
            binary.push(element: String(numStack.peek()!%2))
    }
    
    //convert to string
    
    
    
    return ""
}

