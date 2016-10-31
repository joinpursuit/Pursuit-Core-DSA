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
        var currentNode = self.head
        var counter = 0
        while currentNode.next != nil {
            currentNode.previous = currentNode
            currentNode = currentNode.next!
            counter += 1
        }
        counter += 1
        
        return counter
    }
    
    //empty list check
    func isEmpty() -> Bool {
        if self.head == nil {
            return true
        }
        return false
    }
    
    
    
    //add link item
    func append(element key: T) {
  
    }
    
    //print all keys for the class
    func printAllKeys() {

    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>! {
        return Node<T>()
    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        
    }
    
    //remove at specific index
    func remove(at index: Int) {

    }
}
