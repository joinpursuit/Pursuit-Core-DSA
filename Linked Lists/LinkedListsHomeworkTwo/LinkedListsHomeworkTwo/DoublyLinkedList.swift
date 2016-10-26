//
//  DoublyLinkedList.swift
//  LinkedListsHomeworkTwo
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T> {
    var key: T!
    var next: Node?
    var previous: Node?
}


class LinkedList<T: Equatable> {
    var head  = Node<T>()
    
    
    func printAllKeys() {
        var currentNode = head
        while currentNode.next != nil {
            print(currentNode.key)
            currentNode = currentNode.next!
        }
        print(currentNode.key)
    }
    
    var count: Int {
        
        if head.key == nil {
            return 0
        }
        
        var currentNode = head
        var counter = 1
        
        while currentNode.next != nil  {
            counter += 1
            currentNode = currentNode.next!
        }
        return counter}
    
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
            currentNode = currentNode.next!
        }
        
    }
    
    func getElement(at Index: Int) -> Node<T>? {
        
        var counter = 0
        var currentNode = head
        while currentNode.next != nil {
            if counter == Index {
                return currentNode
            }
            currentNode = currentNode.next!
            counter += 1
        }
        return nil }
    
    func insert(_ key: T, at index: Int) {
        var counter = 1
        var currentNode = head
        while currentNode.next != nil {
            if counter == index {
                let newNode = Node<T>()
                newNode.key = key
                newNode.next = currentNode.next
                currentNode.next = newNode
                break
            }
            currentNode = currentNode.next!
            counter += 1
            
            
        }

    
    }
    
    func contains(element targetKey: T) -> Bool {if head.key == targetKey {
        return true
        }
        var currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next!
            if currentNode.key == targetKey {
                return true
            }
        }
        return false
}
    
    func remove(at index: Int) { var counter = 0
        var currentNode = head
        
        while currentNode.next != nil {
            if counter == index {
                currentNode.next = currentNode.next?.next
                break
            }
            
            //currentNode = currentNode.next!
            counter += 1
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
}
