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
        guard head.key != nil else {
            return false
        }
            var targetNode = otherList.head
            var currentNode = head
        
        //if a next key exists
        if targetNode.next != nil && currentNode.next != nil {
            //if the keys are not equal return false
            if targetNode.key != currentNode.key {
                return false
            }
            //move onto next node to check equality
            currentNode = currentNode.next!
            targetNode = targetNode.next!
            
            if currentNode.next != nil && targetNode.next != nil {
                return false
            }
            
            if targetNode.key! != currentNode.key! {
                return false
            }
        }
        return true
    }
}

//check that the two are the same lengths and output
//check the head and compare to other lists head, repeat comparison onto .next nodes

/* Correction:
 
 func equals(otherList: LinkedList ) -> Bool {
 guard self.count == otherList.count else {
 return false }
 var selfCurrentNode: Node? = self.head
 var otherCurrentNode: Node? = otherList.head
 
 while selfCurrentNode != nil {
    if selfCurrentNode?.key! != otherCurrentNode.key! {
    return false
 } else {
    selfCurrentNode = selfCurrentNode?.next
    otherCurrentNode = otherCurrentNode?.next
 }
 }
 return true
 }
 }
 */

//Problem Two
//See Exercise Three (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)

func mergeSortedLists<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
    return LinkedList<T>()
    var newArray = [Int]()
    var newList = LinkedList<T>()
    var firstNode = listOne.head
    var secondNode = listTwo.head
    
    if firstNode.key != nil && secondNode.key != nil {
    while firstNode.next != nil {
        newArray.append(firstNode as! Int)
        firstNode = firstNode.next!
        }
        while secondNode.next != nil {
            newArray.append(secondNode as! Int)
            secondNode = secondNode.next!
        }
        
        newArray.sorted{($0 < $1)}
        for number in newArray {
            newList.append(element: number as! T)
        }
    return newList
    }
}
    
    /* Correction:
 
 func mergeSortedLists<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
 var listOneCurrentNode: Node? = listOne.head
 var listTwoCurrentNode: Node? = listTwo.head
 let finalList = LinkedList<T>()
 
 while listOneCurrentNode != nil && listTwoCurrentNode != nil {
 if (listOneCurrentNode?.key)! < (listTwoCurrentNode?.key)! {
 finalList.append(element: (listOneCurrentNode?.key)!)
 listOneCurrentNode = listOneCurrentNode?.next
 } else {
 finalList.append(element: (listTwoCurrentNode?.key)!)
 listTwoCurrentNode = listTwoCurrentNode?.next
 }
 }
 
 while listOneCurrentNode != nil {
 finalList.append(element: (listOneCurrentNode?.key)!)
 listOneCurrentNode = listOneCurrentNode?.next
 }
 
 while listTwoCurrentNode != nil {
 finalList.append(element: (listTwoCurrentNode?.key)!)
 listTwoCurrentNode = listTwoCurrentNode?.next
 }
 return finalList
 }
 
 */


