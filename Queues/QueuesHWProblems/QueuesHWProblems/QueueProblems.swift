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
    guard !(q.isEmpty()) else { return nil }
    let tempQ = Queue<Int>()
    var sum = 0
    while !(q.isEmpty()) {
        sum += q.peek()!
        tempQ.enQueue(newElement: q.deQueue()!)
    }
    while !(tempQ.isEmpty()) {
        q.enQueue(newElement: tempQ.deQueue()!)
    }
    return sum
}

//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
    guard !(q.isEmpty()) else { return nil }
    let tempQ = Queue<T>()
    var smallest = q.peek()!
    while !(q.isEmpty()) {
        if q.peek()! < smallest {
            smallest = q.peek()!
        }
        tempQ.enQueue(newElement: q.deQueue()!)
    }
    while !(tempQ.isEmpty()) {
        q.enQueue(newElement: tempQ.deQueue()!)
    }
    return smallest

}

//Find out whether or not a queue is in sorted order from smallest to biggest
//True example:   (Back) 9 - 6 - 2 - 1 (Front)
//False example   (Back) 4 - 19 - 134 200 (Front)

func isSorted<T: Comparable>(q: Queue<T>) -> Bool? {
    guard !(q.isEmpty()) else { return nil }
    
    var myBool = true
    let tempQ = Queue<T>()
    var current = q.peek()!
    while !(q.isEmpty()) {
        if q.peek()! < current {
            myBool = false
        } else {
            current = q.peek()!
        }
        tempQ.enQueue(newElement: q.deQueue()!)
    }
    while !(tempQ.isEmpty()) {
        q.enQueue(newElement: tempQ.deQueue()!)
    }
    return myBool
}

//Return a reversed queue.
func reverse<T>(q: Queue<T>) -> Queue<T> {
    let tempStack = Stack<T>()
    while !(q.isEmpty()) {
        tempStack.push(element: q.deQueue()!)
    }
    while !(tempStack.isEmpty()) {
        q.enQueue(newElement: tempStack.pop()!)
    }
    return q
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    let tempQ1 = Queue<T>()
    let tempQ2 = Queue<T>()
    var myBool = true
    while !(qOne.isEmpty()) && !(qTwo.isEmpty()) {
        if qOne.peek() != qTwo.peek() {
            myBool = false
        }
        tempQ1.enQueue(newElement: qOne.deQueue()!)
        tempQ2.enQueue(newElement: qTwo.deQueue()!)
    }
    while !(qOne.isEmpty()) && qTwo.isEmpty() {
        myBool = false
        tempQ1.enQueue(newElement: qOne.deQueue()!)
    }
    while qOne.isEmpty() && !(qTwo.isEmpty()) {
        myBool = false
        tempQ2.enQueue(newElement: qTwo.deQueue()!)
    }
    while !(tempQ1.isEmpty()) {
        qOne.enQueue(newElement: tempQ1.deQueue()!)
    }
    while !(tempQ2.isEmpty()) {
        qTwo.enQueue(newElement: tempQ2.deQueue()!)
    }
    return myBool
}

//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

