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
        var currentNode = head
        var counter = 1
        while currentNode.next != nil {
            currentNode = currentNode.next!
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
        var currentNode = head
        if head.key == nil {
            currentNode.key = key
        }
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        let newNode = Node<T>()
        newNode.key = key
        currentNode.next = newNode
        newNode.previous = currentNode
        
    }
    
    //print all keys for the class
    func printAllKeys() {
        var currentNode = head
        while currentNode.next != nil {
            print(currentNode.key)
            currentNode = currentNode.next!
        }
    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>! {
        if index > self.count - 1 || index < 0 || head.key == nil {
            return nil
        } else {
            var currentNode = head
            var counter = 0
            while counter != index {
                    currentNode = currentNode.next!
                    counter += 1
                }
            return currentNode
            }
        }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        if index > self.count - 1 || index < 0 || head.key == nil {
            append(element: key)
        } else {
            var currentNode = head
            var currentIndex = 0
            while currentIndex != index - 1 { //It's index - 1, so the new node will have the index, instead of the index after
                currentNode = currentNode.next!
                currentIndex += 1
            }
            let newNode = Node<T>()
            newNode.key = key
            newNode.next = currentNode.next
            newNode.previous = currentNode
            currentNode.next = newNode
            newNode.next?.previous = newNode
        }
    }
    
    //remove at specific index
    func remove(at index: Int) {
        if index > self.count - 1 || index < 0 || head.key == nil {
            return
        } else {
            var currentNode = head
            var currentIndex = 0
            while currentIndex != index - 1 {
                currentNode = currentNode.next!
                currentIndex += 1
            }
            currentNode.next = currentNode.next?.next!
            currentNode.next?.next?.previous = currentNode
        }
        
    }
}
