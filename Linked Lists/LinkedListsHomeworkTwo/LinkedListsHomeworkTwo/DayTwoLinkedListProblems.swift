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
<<<<<<< HEAD
    func equals(otherList: LinkedList) -> Bool { // this is a method inside a linkedlist class
        guard self.count == otherList.count else { return false }
        
        var selfCurrentNode: Node? = self.head
        var otherCurrentNode: Node? = otherList.head
        
=======
    func equals(otherList: LinkedList ) -> Bool {
        guard self.count == otherList.count else {
            return false
        }
        var selfCurrentNode: Node? = self.head
        var otherCurrentNode: Node? = otherList.head
>>>>>>> 607363b2f7754fc5fec293484caeaeaf223d265a
        while selfCurrentNode != nil {
            if selfCurrentNode?.key! != otherCurrentNode?.key! {
                return false
            } else {
                selfCurrentNode = selfCurrentNode?.next
                otherCurrentNode = otherCurrentNode?.next
            }
        }
        return true
<<<<<<< HEAD
=======
    }
>>>>>>> 607363b2f7754fc5fec293484caeaeaf223d265a
}

//Problem Two
//See Exercise Three (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)

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
        // check if the two linkedlists are the same length
        while listOneCurrentNode != nil {
            finalList.append(element: (listOneCurrentNode?.key)!)
            listOneCurrentNode = listOneCurrentNode?.next // will return nil if listOne is shorter
        }
        
        while listTwoCurrentNode != nil {
            finalList.append(element: (listTwoCurrentNode?.key)!)
            listTwoCurrentNode = listTwoCurrentNode?.next
        }
        return finalList
    }
}
