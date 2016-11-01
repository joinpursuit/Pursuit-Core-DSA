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

//this will make our stack empty. so we'll have to re populate the stack
func largest(stack: Stack<Int>) -> Int {
    var arr = Array<Int>()
    
    while !stack.isEmpty() {
        if let poppedInt = stack.pop() {
            arr.append(poppedInt)
        }
    }
    var largestInt = arr[0]
    for anInt in arr {
        if largestInt < anInt {
            largestInt = anInt
        }
    }
    return largestInt
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var arr = Array<Int>()
    
    while !stack.isEmpty() {
        if let poppedInt = stack.pop() {
            arr.append(poppedInt)
        }
    }
    
    var sum = 0
    for anInt in arr {
        sum += anInt
        
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
    
    let reversedStack = Stack<T>()
    
    while !stack.isEmpty() {
        if let poppedT = stack.pop() {
            reversedStack.push(element: poppedT)
            
        }
        
    }
    return reversedStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    
    var arr1 = Array<T>()
    var arr2 = Array<T>()
    
    while !stackOne.isEmpty() {
        if let poppedT = stackOne.pop() {
            arr1.append(poppedT)
        }
    }
    
    while !stackTwo.isEmpty() {
        if let poppedT = stackTwo.pop() {
            arr2.append(poppedT)
        }
    }
    
    if arr1 == arr2 {
        return true
    }
    else {
        return false
    }
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    var arr = Array<T>()
    let newStack = Stack<T>()
    
    while !stack.isEmpty() {
        if let poppedT = stack.pop() {
            arr.append(poppedT)
        }
    }
    
    arr.append(newElement)
    for i in 0..<arr.count {
        newStack.push(element: arr[arr.count-1-i])
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
//Sample output: true


func isBalanced(str: String) -> Bool {
    let stringStack = Stack<String>()
    var counter1 = 0
    var counter2 = 0
    
    for aChar in Array(str.characters){
        stringStack.push(element: String(aChar))
    }
    while !stringStack.isEmpty() {
        let el = stringStack.pop()
        if  el == "(" {
            counter1 += 1
        }
        else if el == ")" {
            counter2 += 1
        }
    }
    if counter1 == counter2 {
        return true
    }
    else {
        return false
    }
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    let newStack = Stack<String>()
    var myNum = num
    var str = ""
    
    while myNum > 0 {
        newStack.push(element: String(myNum % 2))
        myNum = myNum / 2
    }
    while !newStack.isEmpty() {
        let binaryStr = newStack.pop()
        str += binaryStr!
    }
    
    return str
}

