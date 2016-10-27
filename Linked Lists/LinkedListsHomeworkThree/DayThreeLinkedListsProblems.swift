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
        if self.count < 1 {
            return nil
        } else {
            var currentNode = head
            var counter = 0
            while currentNode.next != nil {
                currentNode = currentNode.next!
                counter += 1
            }
            return counter
        }
    }
    
    //empty list check
    func isEmpty() -> Bool {
        if self.count > 0 {
            return false
        }
        return true
    }
    
    
    
    //add link item
    func append(element key: T) {
        if head.key == nil {
            head.key = key
        } else {
            var currentNode = head
            while currentNode.next != nil {
                currentNode = currentNode.next!
            }
            let newNode = Node<T>()
            newNode.key = key
            currentNode.next = newNode
        }
    }
    
    //print all keys for the class
    func printAllKeys() {
        if self.count != 0 {
            var currentNode = self.head
            while currentNode.next != nil {
                print(currentNode)
                currentNode = currentNode.next!
            }
        }
    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>! {
        if self.count < 0 {
            return nil
        } else {
            var currentNode = head
            var currentPosition = 0
            while currentPosition != 0 {
                currentNode = currentNode.next!
                currentPosition += 1
            }
            return currentNode
        }
    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        if self.count < 0 {
            print("nothing here")
        } else {
            var currentNode = head
            var currentPosition = 0
            while currentPosition != index {
                currentNode = currentNode.next!
                currentPosition += 1
            }
            let newNode = Node<T>() //make node first then assign key
            newNode.key = key
            currentNode.next = newNode
        }
    }
    
    //remove at specific index
    func remove(at index: Int) {
        if self.count < 0 {
            print("nada")
        } else {
            var currentNode = head
            var currentPosition = 0
            while currentPosition != index {
                currentNode = currentNode.next!
                currentPosition += 1
            }
            //currentNode.next = nil does not work
            currentNode.next = currentNode.next?.next
        }
    }
}
