//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Node<T> {
    var key: T!
    var next: Node?
}




class LinkedList<T: Equatable> {
    var head = Node<T>()
    
    func printAllKeys() {
        
        var currentNode: Node<T>! = head
        
        while currentNode != nil {
            print(currentNode.key)
            currentNode = currentNode.next
        }
    }
    
    var count: Int {
        if head.key == nil {
            return 0
        } else {
            var currentNode = head
            var counter = 1
            while currentNode.next != nil {
                currentNode = currentNode.next!
                counter += 1
            }
            return counter
        }
    }
    
    func append(element newKey: T) {
        guard head.key != nil else {
            head.key = newKey
            return
        }
        
        var currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        currentNode.next = Node()
        currentNode.next!.key = newKey
    }
    
    func getElement(at index: Int) -> Node<T>? {
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
        if index > self.count - 1 || index < 0 || head.key == nil {
            append(element: key)
        } else {
            var currentNode = head
            var currentIndex = 0
            while currentIndex != index - 1 {
                currentNode = currentNode.next!
                currentIndex += 1
            }
            let newNode = Node<T>()
            newNode.key = key
            newNode.next = currentNode.next
            currentNode.next = newNode
        }
    }
    
    func contains(element targetKey: T) -> Bool {
        var currentNode: Node? = head
        while currentNode != nil {
            if currentNode?.key == targetKey {
                return true
            }
            currentNode = currentNode?.next!
        }
        
        return false
    }
    
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
            currentNode.next = currentNode.next?.next
        }
        
    }
}
