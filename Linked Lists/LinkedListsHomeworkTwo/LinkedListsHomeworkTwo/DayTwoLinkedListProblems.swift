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
    func equals(list: LinkedList, otherList: LinkedList ) -> Bool {
        var a = list.head
        var b = otherList.head
        while (a != nil && b != nil) {
            if (a.key != b.key) {
                return false
            }
            a = a.next!
            b = b.next!
            
        }
        return true
    }
    
}

//Problem Two
//See Exercise Three (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)

func mergeSortedLists<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
    let mergedList = LinkedList<T>()
    var a = mergedList.head
   
/*
    while listOne != nil && listTwo != nil {
        if listOne.head.key < listTwo.head.key {
            a.next = listOne.head
            a = listOne.head
            listOne = listOne.head.next
        } else {
            mergedList.head.next = listTwo.head
         


    return LinkedList<T>()
}
