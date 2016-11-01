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
    //Class is pass by referece, when we pop, we also pop the original
    var largest = stack.peek()!
    let tempStack = Stack<Int>()
    while !(stack.isEmpty()) {
        let top  = stack.pop()!
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
    var sum = 0
    let tempStack = Stack<Int>()
    while !(stack.isEmpty()) {
        sum += stack.peek()!
        let top = stack.pop()!
        tempStack.push(element: top)
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
    while !(stack.isEmpty()) {
        let top = stack.pop()!
        tempStack.push(element: top)
    }
    return tempStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    if stackOne === stackTwo {return true}
    
    let tempStack1 = Stack<T>()
    let tempStack2 = Stack<T>()
    while !(stackOne.isEmpty()) {
        var top1 = stackOne.peek()!
        print("\(top1)")
        var top2 = stackTwo.peek()!
        print("\(top2)")
        print("***********")
        if top1 != top2 {
            return false
        }
        top1 = stackOne.pop()!
        print("\(top1)")
        print("\(top2)")
        print("***********")
        top2 = stackTwo.pop()!
        print("\(top2)")
        print("\(top2)")
        print("***********")
        tempStack1.push(element: top1)
        tempStack2.push(element: top2)
    }
    while !(tempStack1.isEmpty()) {
        stackOne.push(element: tempStack1.pop()!)
        stackTwo.push(element: tempStack2.pop()!)
    }

    return true
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    let tempStack = Stack<T>()
    while !stack.isEmpty(){
        let top = stack.pop()
        tempStack.push(element: top!)
    }
    tempStack.push(element: newElement)
    
    while !tempStack.isEmpty() {
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
    let stack = Stack<Character>()
    for i in str.characters {
        if i == "(" {
            stack.push(element: i)
        } else if i == ")" {
            if stack.isEmpty(){
                return false
            }
            if stack.pop() != "(" {
                return false
            }
        }
    }
    return stack.isEmpty()
}

//    let stack = Stack<Character>()
//    let tempStack = Stack<Character>()
//    var count = 0
//    var sum = 0
//    for i in str.characters {
//        stack.push(element: i)
//        count += 1
//        if i == "(" {
//            stack.push(element: i)
//            sum += 1
//        } else if i == ")" {
//            stack.push(element: i)
//            sum -= 1
//        } else {
//            sum += 0
//        }
//    }
//    while !stack.isEmpty() {
//        tempStack.push(element: stack.pop()!)
//    }
//    
//    while !stack.isEmpty() {
//        if stack.pop() == "(" {
//    
//        }
//    }
//    
//    if count % 2 == 1 {
//        return false
//    }
//    
//    return sum == 0


//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    var number = num
    var stringNum = ""
    var returnString = ""
    var remainder = 0
    let stack = Stack<Character>()
    
    while number != 0  {
        remainder = number % 2
        stringNum += String(remainder)
        number /= 2
    }
    
    for i in stringNum.characters{
        stack.push(element: i)
    }
    
    while !stack.isEmpty() {
        let top = stack.pop()!
        returnString += String(describing: top)
    }
    
    return returnString
}

