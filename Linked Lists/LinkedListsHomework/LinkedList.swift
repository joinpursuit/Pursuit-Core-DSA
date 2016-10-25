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
    var previous: Node?
}

class LinkedList<T: Equatable> {
    var head  = Node<T>()
    
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
    
    func append(_ element: T) {
        if head.key == nil {
            head.key = element
        } else {
            var currentNode = head
            while currentNode.next != nil {
                currentNode = currentNode.next!
            }
            let newNode = Node<T>()
            newNode.key = element
            currentNode.next = newNode
        }
    }

    func getElement(at index: Int) -> Node<T>? {
        if (index > self.count - 1 || index < 0 || head.key == nil) {
            return nil
        } else {
            var count = 0
            var currentNode = head
            while currentNode.next != nil {
                if count == index {
                    return currentNode
                }
                currentNode = currentNode.next!
                count += 1
            }
            return nil
        }
    }
    
    subscript(i: Int) -> Node<T>? {
        var count = 0
        var currentNode = head
        while currentNode.next != nil {
            if count == i {
                return currentNode
            }
            currentNode = currentNode.next!
            count += 1
        }
        return nil
    }
    
    func contains(element targetKey: T) -> Bool {
        if head.key == targetKey {
            return true
        }
        var currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next!
            if currentNode.key == targetKey {
                return true
            }
        }
        return false
    }
    
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
                    currentNode.next = newNode
                    break
                }
                currentNode = currentNode.next!
                count += 1
            }
        }
    }

    func remove(at index: Int) {
        if (index > self.count - 1 || index < 0 || head.key == nil) {
            return
        } else {
            var count = 0
            var currentNode = head
            while currentNode.next != nil {
                if count == index - 1 {
                    currentNode.next = currentNode.next?.next
                    break
                }
                currentNode = currentNode.next!
                count += 1
            }
        }
    }
    
    func reverse() {
        var previousNode: Node<T>? = nil
        var currentNode: Node<T>? = head
        while currentNode != nil {
            let temp = currentNode!.next
            currentNode!.next = previousNode
            previousNode = currentNode
            currentNode = temp
        }
        head = previousNode!
    }
    
}


