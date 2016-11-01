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
    var tempStack = Stack<Int>()
    var largest = stack.peek()!
    while !stack.isEmpty() {
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
    var sum = 0
    var tempStack = Stack<Int>()
    
    while !stack.isEmpty() {
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
    var newStack = Stack<T>()
    var tempStack = Stack<T>()
    while !stack.isEmpty() {
        let top = stack.pop()!
        newStack.push(element: top)
        tempStack.push(element: top)
    }
    while !tempStack.isEmpty() {
        stack.push(element: tempStack.pop()!)
    }
    return newStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    
    if stackOne === stackTwo { return true }
    
    var stack1Temp = Stack<T>()
    var stack2Temp = Stack<T>()
    var isEqual = true
    
    while !stackOne.isEmpty() || !stackTwo.isEmpty() {
        let top1 = stackOne.pop()
        if top1 != nil {
            stack1Temp.push(element: top1!)
        }
        let top2 = stackTwo.pop()
        if top2 != nil {
            stack2Temp.push(element: top2!)
        }
        
        if top1 != top2 {
            isEqual = false
            break
        }
    }
    
    while !stack1Temp.isEmpty() || !stack2Temp.isEmpty() {
        if !stack1Temp.isEmpty() {
            stackOne.push(element: stack1Temp.pop()!)
        }
        if !stack2Temp.isEmpty() {
            stackTwo.push(element: stack2Temp.pop()!)
        }
    }
    
    return isEqual
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    var reversedStack = reverse(stack: stack)
    var newStack = Stack<T>()
    newStack.push(element: newElement)
    
    while !reversedStack.isEmpty() {
        newStack.push(element: reversedStack.pop()!)
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


func isBalanced(str: String) -> Bool {
    var beginNum = 0
    var endNum = 0
    for c in str.characters {
        if c == "(" {
            beginNum += 1
        } else {
            if c == ")" {
                endNum += 1
            }
        }
    }
    return beginNum == endNum
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    var stackOfBinary = Stack<Int>()
    var newNum = num
    while newNum >= 1 {
    if newNum % 2 == 1 {
        stackOfBinary.push(element: 1)
    } else {
        stackOfBinary.push(element: 0)
    }
        newNum /= 2
    }
    var newString = ""
    while !stackOfBinary.isEmpty() {
        let ones = String(stackOfBinary.pop()!)
        newString.append(ones)
    }
    return newString
}

