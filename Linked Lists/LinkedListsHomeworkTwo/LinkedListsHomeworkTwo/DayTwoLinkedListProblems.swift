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
        var currentNode = head
        var otherNode = otherList.head
        while currentNode.next != nil {
            if currentNode.key != otherNode.key || otherNode.next == nil {
                print("currentNode.key \(currentNode.key)")
                print("otherNode.key \(otherNode.key)")
                return false
            }
            currentNode = currentNode.next!
            otherNode = otherNode.next!
        }
        return true
    }
    
    func equals2(otherList: LinkedList ) -> Bool {
        guard self.count == otherList.count else {
            return false
        }
        var currentNode: Node? = self.head
        var otherCurrentNode: Node? = otherList.head
        while currentNode?.next != nil && otherCurrentNode?.next != nil {
            if currentNode?.key != otherCurrentNode?.key {
                print("currentNode.key \(currentNode?.key)")
                print("otherNode.key \(otherCurrentNode?.key)")
                return false
            } else {
                currentNode = currentNode?.next!
                otherCurrentNode = otherCurrentNode?.next!
            }
        }
        return true
    }
}
//Problem Two
//See Exercise Three (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)

func mergeSortedLists<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
    let mergedSortedList = LinkedList<T>()
    var firstList = listOne.head
    var secondList = listTwo.head
    
    while firstList.next != nil && secondList.next != nil {
        if firstList.key <= secondList.key  {
            if mergedSortedList.head.key == nil {
                mergedSortedList.head.key = firstList.key
            } else {
                mergedSortedList.head.next = firstList
            }
            firstList = firstList.next!
        }
        if firstList.key >= secondList.key{
            if mergedSortedList.head.key == nil {
                mergedSortedList.head.key = secondList.key
            } else {
                mergedSortedList.head.next = secondList
            }
            secondList = secondList.next!
        }
    }
    while secondList.next != nil {
        mergedSortedList.head.next = secondList
        secondList = secondList.next!
    }
    while firstList.next != nil {
        mergedSortedList.head.next = firstList
        firstList = firstList.next!
    }
    print(mergedSortedList.head)
    return mergedSortedList
}

func mergeSortedLists2<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
    let mergedSortedList = LinkedList<T>()
    var firstList: Node? = listOne.head
    var secondList: Node? = listTwo.head
    
    while firstList != nil && secondList != nil {
        if (firstList?.key)! < (secondList?.key)!  {
            if mergedSortedList.head.key == nil {
                mergedSortedList.append(element: (firstList?.key)!)
                firstList = firstList?.next
            } else {
                mergedSortedList.append(element: (secondList?.key)!)
                secondList = secondList?.next!
            }
        }
    }
    while secondList != nil {
        mergedSortedList.append(element: (firstList?.key)!)
        secondList = secondList?.next!
    }
    while firstList != nil {
        mergedSortedList.append(element: (secondList?.key)!)
        firstList? = (firstList?.next!)!
    }
    print(mergedSortedList.head)
    return mergedSortedList
}

