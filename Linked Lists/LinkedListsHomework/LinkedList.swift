//
//  LinkedList.swift
//  LinkedListsHomework
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T> {
<<<<<<< HEAD
	var key: T!
	var next: Node?
}

class LinkedList<T: Equatable> {
	var head  = Node<T>()
	func printAllKeys() {
		var currentNode = head
		while currentNode.next != nil {
			print(currentNode.key)
			currentNode = currentNode.next!
		}
		print(currentNode.key!)
	}
	
	var count: Int {
		if head.key == nil {
			return 0
		}
		var counter = 1
		var currentNode = head
		while currentNode.next != nil {
			counter += 1
			currentNode = currentNode.next!
		}
		return counter
	}
	
	func append(element newKey: T) {
		if head.key == nil {
			head.key = newKey
		} else {
			var currentNode = head
			while currentNode.next != nil {
				currentNode = currentNode.next!
			}
			let newNode = Node<T>()
			newNode.key = newKey
			currentNode.next = newNode
		}
		
	}
	
	func getElement(at Index: Int) -> Node<T>? {
		var currentNode = head
		var counter = 0
		while counter < Index {
			if currentNode.next != nil {
				currentNode = currentNode.next!
				counter += 1
			} else {
				return nil
			}
		}
		return currentNode
	}
	
	func insert(_ key: T, at index: Int) {
		var currentNode = head
		var counter = 1
		while counter < index {
			currentNode = currentNode.next!
			counter += 1
		}
		let newNode = Node<T>()
		newNode.key = key
		newNode.next = currentNode.next
		currentNode.next = newNode
		
	}
	
	func contains(element targetKey: T) -> Bool {
		guard head.key != nil else { return false }
		var currentNode = head
		while currentNode.next != nil {
			if currentNode.key == targetKey {
				return true
			}
			currentNode = currentNode.next!
		}
		if currentNode.key == targetKey {
			return true
		} else {
			return false
		}
	}
	
	func remove(at index: Int) {
		var currentNode = head
		var counter = 1
		while counter <= index {
			currentNode = currentNode.next!
			counter += 1
		}
		if currentNode.next != nil {
			currentNode.key = currentNode.next!.key
		} else {
			currentNode.key = nil
		}
	}
	
	func reverse() {
		var previousNode: Node<T>? = nil
		var currentNode: Node<T>? = head
		while currentNode != nil {
			let temp = currentNode!.next
			
			currentNode!.next = previousNode
			previousNode = currentNode
			currentNode = temp
		}
		self.head = previousNode!
	}
=======
    var key: T!
    var next: Node?
    var previous: Node?
}

class LinkedList<T: Equatable> {
    var head  = Node<T>()
    
    func printAllKeys() {
        
    }
    var count: Int {return 0}
    
    func append(element newKey: T) {}
    
    func getElement(at Index: Int) -> Node<T>? {return nil}
    
    func insert(_ key: T, at index: Int) {}
    
    func contains(element targetKey: T) -> Bool {return false}
    
    func remove(at index: Int) {}
>>>>>>> 74b60d88e1113a7ee0062358f2eeaf7f3248cd43
}


