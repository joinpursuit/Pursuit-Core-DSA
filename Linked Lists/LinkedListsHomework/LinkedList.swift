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
        var currentNode: Node! = head
        while currentNode.next != nil {
            print(currentNode.key)
            currentNode = currentNode.next
        }

    }
    var count: Int {
        if head.key == nil {
            return 0
        }
        var counter = 1
        var currentNode = head
        while currentNode.next != nil {
            counter += 1
            currentNode = currentNode.next!
        }
        return counter
    }
    
    func append(element newKey: T) {
        var currentNode: Node! = head
        while currentNode.next != nil {
            currentNode = currentNode.next
        }
        let newNode = Node<T>()
        newNode.key = newKey
        currentNode.next = newNode
       
    }
    
    func getElement(at Index: Int) -> Node<T>? {
        var count: Int = 0
        var currenNode = head
        while count != Index {
            currenNode = currenNode.next!
            count += 1
        }
        return currenNode
    }
    
    func insert(_ key: T, at index: Int) {
        var count: Int = 0
        var currentNode: Node! = head
        while count != index-1{
            currentNode = currentNode.next
            count += 1
        }
        let newNode = Node<T>()
        newNode.key = key
        newNode.next = currentNode.next
        currentNode.next = newNode
    }
    
    func contains(element targetKey: T) -> Bool {
        var currentNode: Node? = head
        while currentNode != nil{
            if currentNode?.key == targetKey{
                return true
            }
            currentNode = currentNode?.next
        }
        return false
    }
    
    func remove(at index: Int) {
        guard index > 0 else {
            return
        }
        var count: Int = 0
        var currentNode = head
        while count != index-1{
            currentNode = currentNode.next!
            count += 1
        }
        currentNode.next = currentNode.next?.next
    }
}


func swap(arr: [Int])-> [Int]{
    var arrCopy = arr
    let firstEle = arrCopy[0]
    arrCopy[0] = arrCopy[arrCopy.count-1]
    arrCopy[arrCopy.count-1] = firstEle
    return arrCopy
}
