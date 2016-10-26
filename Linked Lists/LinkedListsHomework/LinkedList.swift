//
//  LinkedList.swift
//  LinkedListsHomework
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation
import UIKit

class Node<T> {
    var key: T!
    var next: Node?
}



class LinkedList<T: Equatable> {
    let head  = Node<T>()
    
    func printAllKeys() {
        var currentNode = head
        while currentNode.next != nil {
            print(currentNode.key)
            currentNode = currentNode.next!
        }
    }
    
    func printAllKeys2() {
        var temp: Node? = head
        while temp != nil {
            print(temp?.key)
            temp = temp?.next
        }
    }
    
    var count: Int {
        if head.key == nil {
            return 0
        }
        var currentNode = head
        var counter = 1
        while currentNode.next != nil{
            currentNode = currentNode.next!
            counter += 1
        }
        return counter
    }
    
    func append(element newKey: T) {
        var currentNode = head
        if head.key == nil {
            currentNode.key = newKey
        }
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        let newNode = Node<T>()
        newNode.key = newKey
        currentNode.next = newNode
    }
    
    func getElement2(at Index: Int) -> Node<T>? {
        var currentNode = head
        var counter = 0
        while currentNode.next != nil {
            if counter == Index {
                return currentNode
            } else {
                currentNode = currentNode.next!
                counter += 1
            }
        }
        return nil
    }
    
    func getElement(at index: Int) -> Node<T>?{
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
    
    
    func insert(_ key: T, at index: Int) {
        var currentNode = head
        var tempNode = Node<T>()
        var counter = 0
        if index > self.count - 1 || index < 0 || head.key == nil {
            head.key = key
        } else {
            while currentNode.next != nil{
                if counter == index {
                    tempNode = currentNode
                    currentNode.key = key
                    currentNode.next = tempNode.next
                    tempNode.next = currentNode
                    break
                } else {
                    currentNode = currentNode.next!
                    counter += 1
                }
            }
        }
        
    }
    
    func insert2 (_key: T, at index: Int) {
    }
    
    func contains(element targetKey: T) -> Bool {
        var currentNode = head
        if head.key == targetKey {
            return true
        }
        while currentNode.next != nil{
            currentNode = currentNode.next!
            if currentNode.key == targetKey{
                return true
            }
        }
        return false
    }
    
    func remove(at index: Int) {
        var currentNode = head
        let tempNode = Node<T>()
        var counter = 1
        while currentNode.next != nil{
            if counter == index {
                tempNode.next = currentNode.next
                currentNode.key = nil
                currentNode.next = nil
                currentNode = tempNode.next!
                break
            }
            currentNode = currentNode.next!
            counter += 1
        }
    }
}

