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
    let head  = Node<T>()
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
    }
    
    func append(element: T) {
        if head.key == nil {
            head.key = element
        } else {
            var currentNode = head
            while currentNode.next != nil {
                currentNode = currentNode.next!
            }
            let newNode = Node<T>()
            newNode.key = element
            currentNode.next = newNode
        }
    }
    
    func getElement(at Index: Int) -> Node<T>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentIndex < Index {
            if currentNode.next == nil {
                return nil
            }
            currentIndex += 1
            currentNode = currentNode.next!
        }
        
        return currentNode
    }
    
    func insert(_ key: T, at index: Int) {
        
        
        
        
    }
    
    func contains(element targetKey: T) -> Bool {return false}
    
    func remove(at index: Int) {}
}

