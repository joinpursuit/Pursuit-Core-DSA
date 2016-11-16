//: Playground - noun: a place where people can play

import UIKit

class Node<T> {
    var key: T?
    var next: Node<T>?
}

class LinkedList<T> {
    var head: Node<T>
    var tail: Node<T>
    init() {
        self.head = Node<T>()
        self.tail = head
    }
}

class Queue<T> {
    private var list = LinkedList<T>()
    
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

class QueueTwoStacks<T> {
    private var enQueueStack = Stack<T>()
    private var deQueueStack = Stack<T>()
    
    func enQueue(newElement: T) {
        while !(deQueueStack.isEmpty()) {
            enQueueStack.push(element: deQueueStack.pop())
        }
        enQueueStack.push(element: newElement)
    }
    
    func deQueue() -> T? {
        while !(enQueueStack.isEmpty()) {
            deQueueStack.push(element: enQueueStack.pop()!)
        }
        return deQueueStack.pop()
    }
    
    func peek() -> T? {
        while !(enQueueStack.isEmpty()) {
            deQueueStack.push(element: enQueueStack.pop()!)
        }
        return deQueueStack.peek()
    }
    
    func isEmpty() -> Bool {
        return enQueueStack.isEmpty() && deQueueStack.isEmpty()
    }
}