//
//  DayThreeLinkedListsProblems.swift
//  LinkedListsHomeworkThree
//
//  Created by C4Q  on 10/26/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation


class Node<T> {
    var key: T!
    var next: Node?
    var previous: Node?
}

class LinkedList<T: Equatable> {
    
    var head = Node<T>()
    
    var count: Int {
        guard self.head.key != nil else {
            return 0
        }
        var count: Int = 1
        var currentNode = head
        while currentNode.next != nil {
            count += 1
            currentNode = currentNode.next!
        }
        return count
        
    }
    
    //empty list check
    func isEmpty() -> Bool {
        guard self.head.key == nil && self.head.next == nil else {
            return false
        }
        
        return true
    }
    
    
    
    //add link item
    func append(element key: T) {
        let newNode = Node<T>()
        newNode.key = key
        var currentNode: Node? = head
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        currentNode?.next = newNode
        newNode.previous = currentNode
    }
    
    //print all keys for the class
    func printAllKeys() {
        var currentNode: Node? = head
        while currentNode?.next != nil {
            print(currentNode?.key)
            currentNode = currentNode?.next
        }
    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>! {
        var count: Int = 1
        var currentNode: Node? = head
        while count <= index {
            count += 1
            currentNode = currentNode?.next
        }
        return currentNode
    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        var count: Int = 1
        var currentNode: Node? = head
        while count < index {
            currentNode = currentNode?.next
            count += 1
        }
        let newNode = Node<T>()
        newNode.key = key
        newNode.next = currentNode
        newNode.previous = currentNode?.previous
        currentNode?.previous?.next = newNode
        currentNode?.previous = newNode
    }
    
    //remove at specific index
    func remove(at index: Int) {
        var currentNode: Node? = head
        
        if index < 2 {
            self.head = (currentNode?.next)!
            head.previous = nil
            
        }else{
            var count: Int = 0
            
            while count < index {
                currentNode = currentNode?.next
                count += 1
            }
            
            let nextNode: Node? = currentNode?.next?.next
            currentNode?.next = nextNode
            nextNode?.previous = currentNode
        }
    }
}


