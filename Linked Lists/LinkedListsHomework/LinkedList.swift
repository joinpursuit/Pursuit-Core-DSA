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
            print(currentNode?.next)
            currentNode = currentNode?.next
        }
    }
    
    var count: Int {return 0}
    
    func append(element newKey: T) {
        if head.key == nil {
            head.key = newKey
        }
        var currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        let newNod = Node<T>()
        newNod.key = newKey
        currentNode.next = newNod
    } // first get to the end, then append
   
    func getElement(at index: Int) -> Node<T>? {
        if index > self.count - 1 || index < 0 || head.key == nil {
            return nil
        } else {
            var currentNode = head
            var currentIndex = 0
            while currentIndex != index {
                currentNode = currentNode.next!
                currentIndex += 1
            }
            return currentNode
        }
    }
    /*
 func getElement(at Index: Int) -> Node<T>? {
 var counter = 0
 var currentNode = head
 
 while currentNode.key != nil {
 if counter == Index {
 return currentNode
 }
 counter += 1
 
 guard let next = currentNode.next else{ return nil}
 currentNode = next
 
 }
 return nil
    }*/
 
    func insert(_ key: T, at index: Int) {
            if index > self.count - 1 || index < 0 || head.key == nil {
                
        }
        } // constant time
    
    func contains(element targetKey: T) -> Bool {
       var currentNode = head
        while currentNode.next != nil {
            if currentNode.key == targetKey {
                return true
            }
            currentNode = currentNode?.next!
        }
        return false
}
    
    
    
    
    func remove(at index: Int) {
        if index > self.count - 1 || index < 0 || head.key == nil {
    
        }
    }
}


