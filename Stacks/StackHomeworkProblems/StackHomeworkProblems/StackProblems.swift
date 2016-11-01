//
//  StackProblems.swift
//  StackHomeworkProblems
//
//  Created by C4Q  on 10/30/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

/*
class Stack<T> {

private var arr = Array<T>()

func pop() -> T? {
return arr.popLast()
}

func push(element: T) {
arr.append(element)
}

func peek() -> T? {
guard arr.count > 0 else {
return nil
}
return arr[arr.count - 1]
}

func isEmpty() -> Bool {
return arr.count == 0
}
}
*/

//Problem One:
//Find the largest integer in a Stack of Ints

func largest(stack: Stack<Int>) -> Int {
	var largest: Int
	let tempStack = Stack<Int>()
	largest = stack.peek()!
	
	while !stack.isEmpty() {
		if largest < stack.peek()! {
			largest = stack.peek()!
		}
		tempStack.push(element: stack.pop()!)
	}
	
	while !tempStack.isEmpty() {
		stack.push(element: tempStack.pop()!)
	}
	
	return largest
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
	guard !stack.isEmpty() else { return 0 }
	var sum = 0
	let tempStack = Stack<Int>()
	
	while !stack.isEmpty() {
		sum += stack.peek()!
		tempStack.push(element: stack.pop()!)
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
	let newStack = Stack<T>()
	let tempStack = Stack<T>()
	
	while !stack.isEmpty() {
		let temp = stack.pop()!
		newStack.push(element: temp)
		tempStack.push(element: temp)
	}
	
	while !tempStack.isEmpty() {
		stack.push(element: tempStack.pop()!)
	}
	
	return newStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
	guard !stackOne.isEmpty() && !stackTwo.isEmpty() else { return true }
	
	let tempOne = Stack<T>()
	let tempTwo = Stack<T>()
	var isEqual = true
	
	outer: while !stackOne.isEmpty() || !stackTwo.isEmpty() {
		let top1 = stackOne.pop()
		if top1 != nil {
			tempOne.push(element: top1!)
		}
		let top2 = stackTwo.pop()
		if top2 != nil {
			tempTwo.push(element: top2!)
		}
		if top1 != top2 {
			isEqual = false
			break outer
		}
	}
	
	while !tempOne.isEmpty() {
		stackOne.push(element: tempOne.pop()!)
	}
	
	while !tempTwo.isEmpty() {
		stackTwo.push(element: tempTwo.pop()!)
	}
	
	return isEqual
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
	let newStack = Stack<T>()
	let reversed = reverse(stack: stack)
	
	newStack.push(element: newElement)
	while !reversed.isEmpty() {
		let temp = reversed.pop()!
		stack.push(element: temp)
		newStack.push(element: temp)
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
	let newStack1 = Stack<String>()
	let newStack2 = Stack<String>()
	
	for all in str.characters {
		if all == "(" {
			newStack1.push(element: "x")
		}
		else if all == ")" {
			newStack2.push(element: "x")
		}
	}
	
	return equalStacks(stackOne: newStack1, stackTwo: newStack2)
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
	let tempStack = Stack<Int>()
	var number = num
	var binaryString = String()
	
	func checkBinaryDigitAt(num: Int) {
		let binaryDigit = Int(pow(2.0, Double(num)))
		if number >= binaryDigit {
			tempStack.push(element: 1)
			number -= binaryDigit
		} else {
			tempStack.push(element: 0)
		}
	}
	
	for x in (0..<8).reversed() {
		checkBinaryDigitAt(num: x)
	}
	
	let reversedStack = reverse(stack: tempStack)
	
	// test requires no zeroes before the first one
	while reversedStack.peek() == 0 {
		reversedStack.pop()
	}
	
	while !reversedStack.isEmpty() {
		binaryString += "\(reversedStack.pop()!)"
	}
	
	return binaryString
}

