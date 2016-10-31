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
<<<<<<< HEAD
        if head.key == nil { return 0 }
            var currentNode: Node<T>! = head
            var counter = 1
            while currentNode.next != nil {
                currentNode = currentNode.next!
                counter += 1
            }
            return counter
        }
    
    //empty list check
    func isEmpty() -> Bool {
        guard head.key != nil else { return true }
=======
        return 0
    }
    
    //empty list check
    func isEmpty() -> Bool {
>>>>>>> 607363b2f7754fc5fec293484caeaeaf223d265a
        return false
    }
    
    
<<<<<<< HEAD
    //add link item
    func append(element key: T) {
        var currentNode: Node<T>! = head

        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        currentNode.next?.key = key
=======
    
    //add link item
    func append(element key: T) {
  
>>>>>>> 607363b2f7754fc5fec293484caeaeaf223d265a
    }
    
    //print all keys for the class
    func printAllKeys() {
<<<<<<< HEAD
        var currentNode: Node<T>! = head
        
        while currentNode != nil {
            currentNode = currentNode.next
            print(currentNode.key)
        }
=======

>>>>>>> 607363b2f7754fc5fec293484caeaeaf223d265a
    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>! {
<<<<<<< HEAD
//        var currentNode: Node<T>! = head
//        var currentIndex = 0
//        if index > self.count - 1 || currentNode == nil || index < 0 {
//            return nil
//        } else {
//            while currentIndex != index {
//                currentNode == currentNode.next
//                currentIndex += 1
//            }
//        }
=======
>>>>>>> 607363b2f7754fc5fec293484caeaeaf223d265a
        return Node<T>()
    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        
    }
    
    //remove at specific index
    func remove(at index: Int) {

    }
}
