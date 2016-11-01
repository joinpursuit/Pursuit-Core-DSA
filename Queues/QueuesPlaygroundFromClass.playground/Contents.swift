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

class Queue<T> {
    
    private var list = LinekdList<T>()
    
    func enQueue(newElement: T) {
        guard list.tail.key != nil else {
            list.tail.key = newElement
            return
        }
        
        let newNode = Node<T>()
        newNode.key = newElement
        
        list.tail.next = newNode
        list.tail = newNode
    }
    
    func deQueue() -> T? {
        
        if let oldHeadKey = list.head.key {
            if let next = list.head.next {
                list.head = next
            } else {
                list.head.key = nil
            }
            return oldHeadKey
        }
        
        return nil
        
    }
    
    func peek() -> T? {
        return list.head.key
    }
    
    func isEmpty() -> Bool{
        return list.head.key == nil
    }
}


//MARK: implementing two stacks

class Stack<T> {
    
    private var arr = Array<T>()
    
    func pop() -> T? {
        return arr.popLast()
    }
    
    func push(element: T) {
        arr.append(element)
    }
    
    func peek() -> T? {
        guard arr.count > 0 else {
            return nil
        }
        return arr[arr.count - 1]
    }
    
    func isEmpty() -> Bool {
        return arr.count == 0
    }
}

class QueueTwoStacks<T> {
    private var enQueueStack = Stack<T>()
    private var deQueueStack = Stack<T>()
    
    func enQueue(newElement: T) {
        while !(deQueueStack.isEmpty()) {
            enQueueStack.push(element: deQueueStack.pop()!)
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


