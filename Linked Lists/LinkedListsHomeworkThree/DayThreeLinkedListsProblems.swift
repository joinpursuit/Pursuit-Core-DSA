//
//  DayThreeLinkedListsProblems.swift
//  LinkedListsHomeworkThree
//
//  Created by C4Q  on 10/26/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation


class Node<T> {
	var key: T!
	var next: Node?
	var previous: Node?
}

class LinkedList<T: Equatable> {
	
	var head = Node<T>()
	
	var count: Int {
		guard head.key != nil && !doesContainCycle() else { return 0 }
		var currentNode = head
		var tempNode = head
		var counter = 1
		
		while currentNode.next != nil {
			tempNode = currentNode
			currentNode.previous = tempNode
			currentNode = currentNode.next!
			counter += 1
		}
		return counter
	}
	
	//empty list check
	func isEmpty() -> Bool {
		guard head.key != nil else { return true }
		return false
	}
	
	//add link item
	func append(element key: T) {
		guard !doesContainCycle() else { return }
		var currentNode = head
		var tempNode = head
		let newNode = Node<T>()
		
		while currentNode.next != nil {
			tempNode = currentNode
			currentNode.previous = tempNode
			currentNode = currentNode.next!
		}
		newNode.key = key
		tempNode = currentNode
		newNode.previous = tempNode
		currentNode.next = newNode
	}
	
	
	//print all keys for the class
	func printAllKeys() {
		guard !doesContainCycle() else { return }
		var currentNode = head
		var tempNode = head
		while currentNode.next != nil {
			print(currentNode)
			tempNode = currentNode
			currentNode.previous = tempNode
			currentNode = currentNode.next!
		}
		print(currentNode.next!)
	}
	
	//obtain link at a specific index
	func getElement(at index: Int) ->Node<T>! {
		var currentNode = head
		var tempNode = head
		var counter = 0
		while counter < index {
			if currentNode.next != nil {
				tempNode = currentNode
				currentNode.previous = tempNode
				currentNode = currentNode.next!
				counter += 1
			} else {
				return nil
			}
		}
		return currentNode
	}
	
	//insert at specific index
	func insert(_ key: T, at index: Int) {
		var currentNode = head
		var tempNode = head
		var counter = 1
		while counter < index {
			tempNode = currentNode
			currentNode.previous = tempNode
			currentNode = currentNode.next!
			counter += 1
		}
		let newNode = Node<T>()
		newNode.key = key
		newNode.next = currentNode.next
		newNode.previous = currentNode
		currentNode.next = newNode
	}
	
	//remove at specific index
	func remove(at index: Int) {
		var currentNode = head
		var tempNode = head
		var counter = 1
		while counter <= index {
			tempNode = currentNode
			currentNode.previous = tempNode
			currentNode = currentNode.next!
			counter += 1
		}
		if currentNode.next != nil {
			currentNode.key = currentNode.next!.key
		} else {
			currentNode.key = nil
		}
	}
	
	func doesContainCycle() -> Bool {
		var tortoiseNode: Node? = head
		var hareNode: Node? = head
		
		guard head.key != nil else { return false }
		while hareNode?.next != nil {
			tortoiseNode = tortoiseNode?.next
			hareNode = hareNode?.next?.next
			if tortoiseNode === hareNode {
				return true
			}
		}
		return false
	}
}
