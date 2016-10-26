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
        var currentNode: Node! = head
        var inputNode: Node! = otherList.head
        while currentNode.next != nil || inputNode.next != nil {
            if currentNode.key != inputNode.key{
                return false
            }
            currentNode = currentNode.next
            inputNode = inputNode.next
        }
        return true
    }
    
}

//Problem Two
//See Exercise Three (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)

func mergeSortedLists<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
    let newNode = Node<T>()
    var currenNode: Node! = listOne.head
    while currenNode.next != nil {
        if newNode.key == nil{
            newNode.key = currenNode.key
        }else if newNode.next == nil{
            if currenNode.key >= newNode.key{
                newNode.key = currenNode.key
            }else{
                newNode.next?.key = newNode.key
                newNode.key = currenNode.key
            }
        }else{
            var tempNode: Node! = newNode
            if newNode.key >= currenNode.key{
                let tempNode = Node<T>()
                tempNode.key = key
                tempNode.next = currentNode.next
                currentNode.next = temp
            }
            while newNode.next != nil {
                if currenNode.key >= tempNode.key{
                    
                }
            }
        }

        currenNode = currenNode.next
    }
    
    
    return LinkedList<T>()
}








