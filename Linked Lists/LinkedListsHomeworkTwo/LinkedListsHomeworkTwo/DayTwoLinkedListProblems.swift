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
<<<<<<< HEAD
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
		guard self.count == otherList.count else { return false }
		var currentNode: Node? = head
		var otherNode: Node? = otherList.head
		while currentNode != nil  {
			if currentNode?.key != otherNode?.key {
				return false
			} else {
				currentNode = currentNode?.next
				otherNode = otherNode?.next
			}
		}
		return true
	}
=======
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
        guard self.count == otherList.count else {
            return false
        }
        var selfCurrentNode: Node? = self.head
        var otherCurrentNode: Node? = otherList.head
        while selfCurrentNode != nil {
            if selfCurrentNode?.key! != otherCurrentNode?.key! {
                return false
            } else {
                selfCurrentNode = selfCurrentNode?.next
                otherCurrentNode = otherCurrentNode?.next
            }
        }
        return true
    }
>>>>>>> 508aea3b9a0434e2bbb7125488be8a91c82c7e87
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
