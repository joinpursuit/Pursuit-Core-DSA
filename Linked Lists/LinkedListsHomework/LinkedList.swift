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
    var head  = Node<T>()
    
    func printAllKeys() {
        var currentNode = head
        while currentNode.next != nil {
            print(currentNode.key)
            currentNode = currentNode.next!
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
    
//    func getElement(at Index: Int) -> Node<T>? {
//        var currentNode = head
//        var counter = 1
//        while currentNode.next != nil {
//            if counter == Index {
//                return currentNode
//            } else {
//                currentNode = currentNode.next!
//                counter += 1
//            }
//        }
//        return nil
//    }
    
    func insert(_ key: T, at index: Int) {
        if index > self.count - 1 || index < 0 || head.key == nil {
            head.key = key
        }else{
            var currentNode = head
            var currentIndex = 0
            while currentIndex != index - 1{
                currentNode = currentNode.next!
                currentIndex += 1
            }
            let tempNode = Node<T>()
            tempNode.key = key
            tempNode.next = currentNode.next
            currentNode.next = tempNode
        }
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
        if index > self.count - 1 || index < 0 || head.key == nil {
            return
        }else{
            var currentNode = head
            var currentIndex = 0
            while currentIndex != index - 1{
                currentNode = currentNode.next!
                currentIndex += 1
            }
            currentNode.next = currentNode.next?.next
        }
    }
    
    func remove1(at index: Int) {
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
    
    func reverse() {
        var previousNode: Node<T>? = nil
        var currentNode: Node<T>? = head
        while currentNode != nil {
            print(currentNode?.key)
            let temp = currentNode!.next
            
            currentNode!.next = previousNode
            previousNode = currentNode
            currentNode = temp
        }
        self.head = previousNode!
    }
    
}

