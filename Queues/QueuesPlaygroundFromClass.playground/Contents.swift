//: Playground - noun: a place where people can play

import UIKit

class Node<T> {
    var key: T?
    var next: Node<T>?
}

class LinekdList<T> {
    var head: Node<T>
    var tail: Node<T>
    init() {
        self.head = Node<T>()
        self.tail = head
    }
}














/*
class Queue<T> {
    private var list = LinekdList<T>()
    
    func enQueue(newElement: T) {
        if list.head.key == nil {
            list.head.key = newElement
            return
        } else {
            let newNode = Node<T>()
            newNode.key = newElement
            list.tail.next = newNode
            list.tail = newNode
        }
    }
    
    func deQueue() -> T? {
        if let oldHeadKey = list.head.key {
            if let nextNode = list.head.next {
                list.head = nextNode
            } else {
                list.head.key = nil
            }
            return oldHeadKey
        } else {
            return nil
        }
    }
    
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
    
    func peek() -> T? {
        return list.head.key
    }
}
 */


