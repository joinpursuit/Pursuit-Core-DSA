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
        return 0
    }
    
    //empty list check
    func isEmpty() -> Bool {
        return false
    }
    
    
    
    //add link item
    func append(element key: T) {
        let newNode = Node()
    
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        }
            
        else {
            head = newNode
        }
        
        tail = newNode
    }
    
    //print all keys for the class
    func printAllKeys() {

    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>! {
        if index >= 0 {
            var node = head
            var i = index
            // 2
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        // 3
        return nil
    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        
    }
    
    //remove at specific index
    func remove(at index: Int) {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next // 1
        } else {
            head = next // 2
        }
        next?.previous = prev // 3
        
        if next == nil {
            tail = prev // 4
        }
        
        // 5
        node.previous = nil 
        node.next = nil
        
        // 6
        return node.value
    }
}
