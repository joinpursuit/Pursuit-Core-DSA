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
            var counter = 1
            var currentNode = head
            while currentNode.next != nil {
                counter += 1
                currentNode = currentNode.next!
            }
            return counter
        }
    }
    
    //empty list check
    func isEmpty() -> Bool {
        if head.key == nil {
            return true
        } else {
            return false
        }
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
            newNode.previous = currentNode
            currentNode.next = newNode
        }
    }
    
    //print all keys for the class
    func printAllKeys() {
        if head.key == nil {
            print("No Elements In List")
        } else {
            var currentNode = head
            while currentNode.next != nil {
                print(currentNode.key)
                currentNode = currentNode.next!
            }
            print(currentNode.key!)
        }
    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>? {
        if (index >= self.count || index < 0 || head.key == nil) {
            return nil
        } else {
            var count = 0
            var currentNode: Node<T>? = head
            while currentNode?.next != nil {
                if count == index {
                    return currentNode
                }
                currentNode = currentNode?.next
                count += 1
            }
            return nil
        }
    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        if (index > self.count - 1 || index < 0 || head.key == nil) {
            return
        } else {
            var count = 1
            var currentNode = head
            while currentNode.next != nil {
                if count == index {
                    let newNode = Node<T>()
                    newNode.key = key
                    newNode.next = currentNode.next
                    newNode.previous = currentNode
                    currentNode.next = newNode
                    break
                }
                currentNode = currentNode.next!
                count += 1
            }
        }
    }
    
    //remove at specific index
    func remove(at index: Int) {
        var count = 0
        var currentNode = head
        while currentNode.next != nil {
            if count == index - 1 {
                currentNode.next = currentNode.next?.next
                currentNode.next?.previous = currentNode
                break
            }
            currentNode = currentNode.next!
            count += 1
        }
    }
    
    func reverse() {
        var previousNode: Node<T>? = nil
        var currentNode: Node<T>? = head
        while currentNode != nil {
            let temp = currentNode!.next
            currentNode?.previous = currentNode?.next
            currentNode!.next = previousNode
            previousNode = currentNode
            currentNode = temp
        }
        head = previousNode!
    }

    
}
