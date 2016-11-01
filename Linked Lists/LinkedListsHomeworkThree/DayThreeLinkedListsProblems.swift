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
        }
        
        var currentHead = head
        var count = 1
        while currentHead.next != nil {
            count +=  1
            currentHead = currentHead.next!
            }
        return count
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
        if head.key == nil {
            head.key = key
        } else {
            var currentNode = head
            
            while currentNode.next != nil  {
                currentNode = currentNode.next!
            }
            let newNode = Node<T>()
            newNode.key = key
            currentNode = currentNode.next!
        }
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
