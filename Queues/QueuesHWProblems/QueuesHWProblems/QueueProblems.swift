//
//  QueueProblems.swift
//  QueuesHWProblems
//
//  Created by C4Q  on 11/1/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//In all problems, the input queue should be in its original state after your function is done running.



//Find the sum of a queue
func sum(q: Queue<Int>) -> Int? {
	guard !q.isEmpty() else { return nil }
	let tempStack = Stack<Int>()
	let reversedStack = Stack<Int>()
	
	var sum = 0
	while !q.isEmpty() {
		let num = q.deQueue()!
		sum += num
		tempStack.push(element: num)
	}
	
	while !tempStack.isEmpty() {
		reversedStack.push(element: tempStack.pop()!)
	}
	
	while !reversedStack.isEmpty() {
		q.enQueue(newElement: reversedStack.pop()!)
	}
	
	return sum
}

//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
	guard !q.isEmpty() else { return nil }
	let tempStack = Stack<T>()
	let reversedStack = Stack<T>()
	
	var smallest = q.peek()!
	
	while !q.isEmpty() {
		let temp = q.deQueue()!
		tempStack.push(element: temp)
		if smallest > temp {
			smallest = temp
		}
	}
	
	while !tempStack.isEmpty() {
		reversedStack.push(element: tempStack.pop()!)
	}
	
	while !reversedStack.isEmpty() {
		q.enQueue(newElement: reversedStack.pop()!)
	}
	
	return smallest
}

//Find out whether or not a queue is in sorted order from smallest to biggest
//True example:   (Back) 9 - 6 - 2 - 1 (Front)
//False example   (Back) 4 - 19 - 134 200 (Front)
func isSorted<T: Comparable>(q: Queue<T>) -> Bool? {
	guard !q.isEmpty() else { return nil }
	let tempStack = Stack<T>()
	let reversedStack = Stack<T>()
	var sorted = true
	
	outer: while !q.isEmpty() {
		let temp1 = q.deQueue()!
		tempStack.push(element: temp1)
		guard let temp2 = q.peek() else {
			sorted = true
			break outer
		}
		if temp1 > temp2 {
			sorted = false
			break outer
		}
	}
	
	while !tempStack.isEmpty() {
		reversedStack.push(element: tempStack.pop()!)
	}
	
	while !reversedStack.isEmpty() {
		q.enQueue(newElement: reversedStack.pop()!)
	}
	
	return sorted
}

//Return a reversed queue.
func reverse<T>(q: Queue<T>) -> Queue<T> {
	let reversedQ = Queue<T>()
	let tempStack = Stack<T>()
	let reversedStack = Stack<T>()
	
	while !q.isEmpty() {
		tempStack.push(element: q.deQueue()!)
	}
	
	while !tempStack.isEmpty() {
		let temp = tempStack.pop()!
		reversedQ.enQueue(newElement: temp)
		reversedStack.push(element: temp)
	}
	
	while !reversedStack.isEmpty() {
		q.enQueue(newElement: reversedStack.pop()!)
	}
	
	return reversedQ
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
	guard !(qOne.isEmpty() && qTwo.isEmpty()) else { return true }
	guard qOne.peek() == qTwo.peek() else { return false }
	var equal = true
	
	let tempStackOne = Stack<T>()
	let reversedStackOne = Stack<T>()
	
	let tempStackTwo = Stack<T>()
	let reversedStackTwo = Stack<T>()
	
	while !qOne.isEmpty() || !qTwo.isEmpty() {
		if qOne.peek() != qTwo.peek() {
			equal = false
		}
		tempStackOne.push(element: qOne.deQueue()!)
		tempStackTwo.push(element: qTwo.deQueue()!)
	}
	
	if qOne.peek() != qTwo.peek() {
		equal = false
	}
	
	while !tempStackOne.isEmpty() {
		reversedStackOne.push(element: tempStackOne.pop()!)
	}
	
	while !reversedStackOne.isEmpty() {
		qOne.enQueue(newElement: reversedStackOne.pop()!)
	}
	
	while !tempStackTwo.isEmpty() {
		reversedStackTwo.push(element: tempStackTwo.pop()!)
	}
	
	while !reversedStackTwo.isEmpty() {
		qTwo.enQueue(newElement: reversedStackTwo.pop()!)
	}
	
	return equal
}

//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

