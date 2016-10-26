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
        
        var counter = 1
        var currentNode = head
        while currentNode.next != nil {
            counter += 1
        currentNode = currentNode.next!
        }
        
        return counter

        var currentNode: Node? = head
        while currentNode != nil {
            print(currentNode?.key)
            currentNode = currentNode?.next
        }

>>>>>>> 152ebcbc3744988038a608b04c70b77254a5e489
    }
    
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
        return nil}
    
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
    
    func contains(element targetKey: T) -> Bool {
        if head.key == targetKey {
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
    
    func remove(at index: Int) {
        var counter = 0
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
}


