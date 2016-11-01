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
    var largest: Int = 0
    while !(stack.isEmpty()) {
        if stack.peek()! > largest{
            largest = stack.peek()!
            tempStack.push(element: stack.pop()!)
        }
        else{
            tempStack.push(element: stack.pop()!)
        }
    }
    
    while !(tempStack.isEmpty()) {
        stack.push(element: tempStack.pop()!)
    }
    
    return largest
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    let tempStack = Stack<Int>()
    var sum: Int = 0
    while !(stack.isEmpty()) {
        sum += stack.peek()!
        tempStack.push(element: stack.pop()!)
    }
    while !(tempStack.isEmpty()) {
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
    let finalStack = Stack<T>()
    while !(stack.isEmpty()) {
        tempStack.push(element: stack.peek()!)
        finalStack.push(element: stack.pop()!)
    }
    while !(tempStack.isEmpty()) {
        stack.push(element: tempStack.pop()!)
    }
    
    return finalStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    let tempStack = Stack<T>()
    while !(stackOne.isEmpty()) && !(stackTwo.isEmpty()) {
        if stackOne.peek()! == stackTwo.peek()!{
            tempStack.push(element: stackOne.pop()!)
            _ = stackTwo.pop()
        }
        else{
            while !(tempStack.isEmpty()) {
                stackOne.push(element: tempStack.peek()!)
                stackTwo.push(element: tempStack.pop()!)
            }
            return false
        }
    }
    if stackOne.isEmpty() && stackTwo.isEmpty(){
        while !(tempStack.isEmpty()) {
            stackOne.push(element: tempStack.peek()!)
            stackTwo.push(element: tempStack.pop()!)
        }
        return true
    }
    else{
        while !(tempStack.isEmpty()) {
            stackOne.push(element: tempStack.peek()!)
            stackTwo.push(element: tempStack.pop()!)
        }
        return false
    }
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    let tempStack = Stack<T>()
    let finalStack = Stack<T>()
    finalStack.push(element: newElement)
    while !(stack.isEmpty()) {
        tempStack.push(element: stack.pop()!)
    }
    
    while !(tempStack.isEmpty()) {
        finalStack.push(element: tempStack.peek()!)
        stack.push(element: tempStack.pop()!)
    }
    
    return finalStack
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
    
    guard str.characters.count%2 == 0 else {
        return false
    }
    
    let originStack = Stack<String>()
    let tempStack = Stack<String>()
    
    for i in str.components(separatedBy: ""){
        originStack.push(element: i)
    }
    
    for _ in 1...str.characters.count/2{
        let i = originStack.pop()
        if i == "(" {
            tempStack.push(element: ")")
        }
        else if i == ")"{
            tempStack.push(element: "(")
        }
    }
    return equalStacks(stackOne: originStack, stackTwo: tempStack)
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    return String(num, radix: 2)
}

