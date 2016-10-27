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
        
        if self.isEmpty() {
            return 0
        }
        
        var counter = 0
        var currentNode: Node<T>? = head
        while currentNode != nil {
            currentNode = currentNode!.next
            counter += 1
        }
        
        return counter
    }
    
    //empty list check
    func isEmpty() -> Bool {
        if head.key == nil {
            return true
        }
        return false
    }
    
    
    
    //add link item
    func append(element key: T) {
        
        let newNode = Node<T>()
        newNode.key = key
        var currentNode: Node<T>? = self.head

        if self.isEmpty() {
            head = newNode
        }
        
        while currentNode != nil {
            currentNode = currentNode!.next
        }
        
        if currentNode == nil {
            newNode.previous = currentNode
            currentNode?.next = newNode
        }
    }
    
    //print all keys for the class
    func printAllKeys() {
        var currentNode: Node<T>? = head
        
        while currentNode != nil {
            print(currentNode!.key)
            currentNode = currentNode!.next
        }

    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>? {
        
        var currentNode: Node<T>? = head
        var counter = 0
        
        while currentNode != nil {
            if counter == index {
                return currentNode
            }
            currentNode = currentNode?.next
            counter += 1
        }
        
        return currentNode
    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        
        var currentNode: Node<T>? = head
        let newNode = Node<T>()
        newNode.key = key
        var counter = 0
        
        if index == 0 {
            newNode.next = currentNode
            currentNode?.previous = newNode
            head = newNode
        }
        
        while currentNode != nil {
            if counter == index - 1 {
                
                newNode.previous = currentNode
                newNode.next = currentNode?.next
                currentNode?.next?.previous = newNode
                currentNode?.next = newNode
                
            }
            counter += 1
            currentNode = currentNode!.next
            
        }
        
    }
    
    //remove at specific index
    func remove(at index: Int) {
        var currentNode: Node<T>? = head
        var counter = 0
        
        if index == 0 {
            guard let next = currentNode!.next else {
                head.key = nil
                head.next = nil
                return
            }
            head = next
            head.previous = nil
            return
        }
        
        while currentNode != nil {
            if index == counter {
                let temp: Node<T>? = currentNode!.previous
                
                temp?.next = currentNode?.next
                currentNode?.next?.previous = temp
                currentNode!.previous = nil
                currentNode!.next = nil
                
                return
            }
            counter += 1
            currentNode = currentNode!.next
        }
        
        
    }

}
