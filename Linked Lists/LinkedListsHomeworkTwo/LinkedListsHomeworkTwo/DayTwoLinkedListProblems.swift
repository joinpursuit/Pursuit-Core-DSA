//
//  DoublyLinkedList.swift
//  LinkedListsHomeworkTwo
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T: Comparable> {
	var key: T!
	var next: Node?
}


class LinkedList<T: Comparable> {
	var head  = Node<T>()
	
	func printAllKeys() {
		
		var currentNode: Node<T>! = head
		
		while currentNode != nil {
			print(currentNode.key)
			currentNode = currentNode.next
		}
	}
	
	var count: Int {
		if head.key == nil {
			return 0
		} else {
			var currentNode = head
			var counter = 1
			while currentNode.next != nil {
				currentNode = currentNode.next!
				counter += 1
			}
			return counter
		}
	}
	
	func append(element newKey: T) {
		guard head.key != nil else {
			head.key = newKey
			return
		}
		
		var currentNode = head
		while currentNode.next != nil {
			currentNode = currentNode.next!
		}
		currentNode.next = Node()
		currentNode.next!.key = newKey
	}
	
	//Problem One
	//See Exercise One (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)
	func equals(otherList: LinkedList ) -> Bool {
		guard head.key != nil else { return false }
		var currentNode = head
		var otherNode = otherList.head
		while currentNode.next != nil && otherNode.next != nil {
			if currentNode.key != otherNode.key {
				return false
			}
			currentNode = currentNode.next!
			otherNode = otherNode.next!
		}
		
		if currentNode.key != otherNode.key {
			return false
		}
		
		if currentNode.next != nil || otherNode.next != nil {
			return false
		}
		
		return true
	}
}

//Problem Two
//See Exercise Three (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)

func mergeSortedLists<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
	var currentNode = listOne.head
	var otherNode = listTwo.head
	let newList = LinkedList<T>()
	var storageArray = [Int]()
	
	while currentNode.next != nil {
		storageArray.append(currentNode.key as! Int)
		currentNode = currentNode.next!
	}
	
	while otherNode.next != nil {
		storageArray.append(otherNode.key as! Int)
		otherNode = otherNode.next!
	}
	
	storageArray.append(currentNode.key as! Int)
	storageArray.append(otherNode.key as! Int)
	
	let newArray = storageArray.sorted {($0 < $1)}
	for num in newArray {
		newList.append(element: num as! T)
	}
	
	return newList
}
