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

//Using Linked List
class Queue <T> {
    var list = LinkedList<T>()
    func enQueue(newElement: T) {
        guard list.tail.key != nil else {
            list.head.key = newElement
            return
        }
        let newNode = Node<T>()
        newNode.key = newElement
        
        list.tail.next = newNode
        list.tail = newNode
    }
    
    func deQueue() -> T?  {
        if let oldHeadKey = list.head.key {
            if let next = list.head.next {
                list.head = next
            } else {
//                Create a new Node and move it
//                list.head = Node<T>()
//                list.tail = list.head
                list.head.key = nil
            }
            return oldHeadKey
        }
        return nil
    }
    
    func peek() -> T? {
       return list.head.key
    }
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
}

let myQ = Queue<Int>()

myQ.enQueue(newElement: 4)
print(myQ.peek())

myQ.enQueue(newElement: 10)
print(myQ.peek())

myQ.enQueue(newElement: 12)
print(myQ.peek())

myQ.enQueue(newElement: 14)
print(myQ.peek())

//myQ.deQueue()
//myQ.deQueue()
//myQ.deQueue()
//myQ.deQueue()
print(myQ.isEmpty())

func sum(q: Queue<Int>) -> Int? {
    var sum = 0
    while !q.isEmpty() {
        sum += q.deQueue()!
    }
    return sum
}
sum(q: myQ)

//Using two stacks
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
    private var enQueueStack = Stack<T>() //enqueue the top by add an element
    private var deQueueStack = Stack<T>() //dequeue the pop by subtract an element
    
    func enQueue(newElement: T) {
        while !(deQueueStack.isEmpty()) {
            enQueueStack.push(element: deQueueStack.pop()!)
        }
        enQueueStack.push(element: newElement)
    }
    
    func deQueue () -> T? {
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

//Pretty much constant time if someones is enQueueing a lot at a time
let myQwithStack = QueueTwoStacks<Int>()

myQwithStack.enQueue(newElement: 4)
print(myQwithStack.peek())

myQwithStack.enQueue(newElement: 10)
print(myQwithStack.peek())

myQwithStack.enQueue(newElement: 12)
print(myQwithStack.peek())

myQwithStack.enQueue(newElement: 14)
print(myQwithStack.peek())

myQwithStack.deQueue()
myQwithStack.deQueue()
myQwithStack.deQueue()
myQwithStack.deQueue()
print(myQwithStack.isEmpty())




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


