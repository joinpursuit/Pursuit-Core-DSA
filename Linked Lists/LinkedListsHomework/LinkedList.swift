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
<<<<<<< HEAD
        var current = head
        while current.next != nil {
            print(current.key)
            current = current.next!
        }
=======
        var currentNode: Node? = head
        while currentNode != nil {
            print(currentNode?.key)
            currentNode = currentNode?.next
        }

>>>>>>> 321c09273869ee2667f77230880a936df0b168f8
    }
    
    //
    func append(element newKey: T) {
        if head.key == nil {
            head.key = newKey
        } else {
            var current = head
            while current.next != nil {
                let newNode = Node<T>()
                newNode.key = newKey
                current.next = newNode
            }
        }
        
        //count
        var count: Int {
            if head.key == nil {
                return 0
            }
            var counter = 1
            var current = head
            while current.next != nil {
                counter += 1
                current = current.next! //force unwrap?
            }
            return counter
        }
    }
    //
    func getElement(at Index: Int) -> Node<T>? {
        if head.key == nil {
            return nil
        }
        var current = head
        var count = 1
        while count < Index && current.next != nil {
            count += 1
            current = current.next!
        }
        return current
    }
    //
    func insert(_ key: T, at index: Int) {
        if head.key == nil {
          head.key = key
        }
        
        var counter = 1
        let current = head
        while counter <= index && current.next != nil {
            counter += 1
            if counter == index {
                let newNode = Node<T>()
                newNode.key = key
                current.next = newNode
            }
        }
    }
    
    //
    func contains(element targetKey: T) -> Bool {
        if head.key == nil {
            return false
        }
        
        let target = Node<T>()
        target.key = targetKey
        let current = head
        
        while current.next != nil {
            if current.key == target.key {
                return true
            }
        }
        return false
        
    }
    //??
    func remove(at index: Int) {
        var count = 1
        var current = head
        while count <= index && current.next != nil{
            count += 1
        }
    }
}


