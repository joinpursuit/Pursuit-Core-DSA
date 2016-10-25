//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Node<T> {
    var key: T!
    var next: Node?
}

class LinkedList<T: Equatable> {
    let head = Node<T>()
    
    func printAllKeys() {
        var currentNode: Node! = head
        while currentNode != nil {
            print(currentNode.key)
            currentNode = currentNode.next
        }
    }
    
    func append(_ element: T) {
        //Trivial check
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
}



