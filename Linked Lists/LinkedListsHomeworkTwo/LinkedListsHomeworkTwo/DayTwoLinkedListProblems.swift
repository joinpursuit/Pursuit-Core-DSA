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

    //Problem One
    //See Exercise One (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)
    func equals(otherList: LinkedList ) -> Bool {
<<<<<<< HEAD
        var current1: Node? = head
        var current2: Node? = otherList.head
        
        while current1 != nil && current2 != nil {
            if current2!.key == current1!.key {
                current1 = current1!.next
                current2 = current2!.next
            } else {
                return false
            }
        }
        
=======
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
>>>>>>> 508aea3b9a0434e2bbb7125488be8a91c82c7e87
        return true
    }
}

//Problem Two
//See Exercise Three (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)

func mergeSortedLists<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
    
    var currentNodeListOne: Node<T>? = listOne.head
    let currentNodeListTwo: Node<T>? = listTwo.head
    var previousNode: Node<T>? = nil
    
    while currentNodeListOne != nil {
        currentNodeListOne = currentNodeListOne!.next
        if currentNodeListOne?.next == nil {
            currentNodeListOne?.next = currentNodeListTwo
            currentNodeListOne? = listOne.head
        }
    }
    
    while currentNodeListOne != nil {
        let temp = currentNodeListOne!.next

        
        if let next = currentNodeListOne!.next, currentNodeListOne!.key > next.key {
            currentNodeListOne!.next = previousNode
            previousNode = currentNodeListOne
            currentNodeListOne = temp
        }
    }
    
    let mergedList = LinkedList<T>()
    mergedList.head = currentNodeListOne!
    
    while currentNodeListOne != nil {
        print(currentNodeListOne!.key)
    }
    
    return mergedList
}
