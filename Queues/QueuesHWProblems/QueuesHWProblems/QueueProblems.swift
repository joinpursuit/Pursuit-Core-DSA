//
//  QueueProblems.swift
//  QueuesHWProblems
//
//  Created by C4Q  on 11/1/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//In all problems, the input queue should be in its original state after your function is done running.



//Find the sum of a queue
func sum(q: Queue<Int>) -> Int? {
    guard !q.isEmpty() else { return nil }
    let newQ = Queue<Int>()
    var sum = 0
    while !q.isEmpty() {
        let tempNum = q.deQueue()!
        newQ.enQueue(newElement: tempNum)
        sum += tempNum
    }
    
    while !newQ.isEmpty() {
        q.enQueue(newElement: newQ.deQueue()!)
    }
    
    return sum
}

//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
    guard !q.isEmpty() else { return nil }
    let newQ = Queue<T>()
    var smallest = q.peek()!
    while !q.isEmpty() {
        let tempElement = q.deQueue()!
        newQ.enQueue(newElement: tempElement)
        if tempElement < smallest {
            smallest = tempElement
        }
    }
    
    while !newQ.isEmpty() {
        q.enQueue(newElement: newQ.deQueue()!)
    }
    
    return smallest
}

//Find out whether or not a queue is in sorted order from smallest to biggest
//True example:   (Back) 9 - 6 - 2 - 1 (Front)
//False example   (Back) 4 - 19 - 134 200 (Front)
func isSorted<T: Comparable>(q: Queue<T>) -> Bool? {
    guard !q.isEmpty() else { return nil }
    let newQ = Queue<T>()
    var sorted = true
    while !q.isEmpty() {
        let tempElement = q.deQueue()!
        newQ.enQueue(newElement: tempElement)
        if let nextElement = q.peek () {
            if tempElement > nextElement {
                sorted = false
                break
            }
        }
    }
    while !newQ.isEmpty() {
        q.enQueue(newElement: newQ.deQueue()!)
    }
    return sorted
}

//Return a reversed queue.
func reverse<T>(q: Queue<T>) -> Queue<T> {
    guard !q.isEmpty() else { return Queue<T>() }
    let newQ = Queue<T>()
    let tempStack = Stack<T>()
    
    while !q.isEmpty() {
        let tempElement = q.deQueue()!
        newQ.enQueue(newElement: tempElement)
        tempStack.push(element: tempElement)
    }
    
    var reversedQueue = Queue<T>()
    
    while !tempStack.isEmpty() {
        reversedQueue.enQueue(newElement: tempStack.pop()!)
        q.enQueue(newElement: newQ.deQueue()!)
    }
    
    return reversedQueue
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    if qOne === qTwo { return true }

    let q1 = Queue<T>()
    let q2 = Queue<T>()
    var isEqual = true

    while !qOne.isEmpty() || !qTwo.isEmpty() {
        if qOne.isEmpty() || qTwo.isEmpty() {
            isEqual = false
            break
        }
        let tempElement1 = qOne.deQueue()!
        let tempElement2 = qTwo.deQueue()!

        q1.enQueue(newElement: tempElement1)
        q2.enQueue(newElement: tempElement2)
        
        if tempElement1 != tempElement2 {
            isEqual = false
            break
        }
    }
    
    while !q1.isEmpty() || !q2.isEmpty() {
        if !q1.isEmpty() {
            qOne.enQueue(newElement: q1.deQueue()!)
        }
        if !q2.isEmpty() {
            qTwo.enQueue(newElement: q2.deQueue()!)
        }
    }
    return isEqual
}

//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

