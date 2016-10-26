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
        var temp: Node? = head
        
        while temp != nil {
            print(temp?.key)
            temp = temp?.next
        }
=======
        var currentNode: Node? = head
        while currentNode != nil {
            print(currentNode?.key)
            currentNode = currentNode?.next
        }

>>>>>>> 321c09273869ee2667f77230880a936df0b168f8
    }
    
    var count: Int {return 0}
    
    func append(element newKey: T) {}
    
    func getElement(at Index: Int) -> Node<T>? {return nil}
    
    func insert(_ key: T, at index: Int) {}
    
    func contains(element targetKey: T) -> Bool {
        var currentNode:Node? = head
        
        while currentNode != nil {
            if currentNode?.key == targetKey {
                return true
            }
            currentNode = currentNode?.next!
        }
        
        return false
    }
    
    func remove(at index: Int) {
//        if index > self.count - 1 || index < 0 || head.key == nil {
//            return
//        } else {
//            var currentNode = head
//            var currentIndex = 0
//            while currentIndex == 0
//        }
    }
}


