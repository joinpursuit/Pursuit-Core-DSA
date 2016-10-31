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
    
    //empty list check
    func isEmpty() -> Bool {
        guard head.key != nil else { return true }
        return false
    }
    
    
    
    //add link item
    func append(element key: T) {
        guard head.key != nil else {
            head.key = key
            return
        }
        
        var currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        let newNode = Node<T>()
        currentNode.next = newNode
        newNode.previous = currentNode
        newNode.key = key
    }
    
    //print all keys for the class
    func printAllKeys() {
        var currentNode: Node? = head
        while currentNode != nil {
            print(currentNode?.key)
            currentNode = currentNode?.next
        }
    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>! {
    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        
    }
    
    //remove at specific index
    func remove(at index: Int) {

    }
}
