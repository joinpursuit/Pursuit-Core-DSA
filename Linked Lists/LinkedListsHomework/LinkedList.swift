//
//  LinkedList.swift
//  LinkedListsHomework
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T> {
    var key: T!
    var next: Node?
}



class LinkedList<T: Equatable> {
    var head  = Node<T>()
    
    func printAllKeys() {
        var currentNode: Node? = head
        while currentNode != nil {
            print(currentNode?.key)
            currentNode = currentNode?.next
        }
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
    
    func append(element: T) {
        if head.key == nil {
            head.key = element
        }
        var currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        let newNode = Node<T>()
        newNode.key = element
        currentNode.next = newNode
    }
    
    func getElement(at Index: Int) -> Node<T>? {
        var currentNode = head
        var counter = 1
        while currentNode.next != nil {
            if counter == Index {
                return currentNode
            }
            currentNode = currentNode.next!
            counter += 1
        }
        return nil
    }
    
    func insert(_ key: T, at index: Int) {
        var currentNode = head
        var counter = 1
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
    
    func contains(element targetKey: T) -> Bool {
        var currentNode = head
            if currentNode.key == targetKey {
                return true
            }
        while currentNode.next != nil {
            currentNode = currentNode.next!
            if currentNode.key == targetKey {
                return true
            }
        }
        return false
    }
    
    func remove(at index: Int) {
        var currentNode = head
        var counter = 1
        while currentNode.next != nil {
            if counter == index {
                currentNode.next = currentNode.next?.next
                break
            }
            currentNode = currentNode.next!
            counter += 1
        }
    }
    
}
