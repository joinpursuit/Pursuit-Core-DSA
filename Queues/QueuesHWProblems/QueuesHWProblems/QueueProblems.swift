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
    if q.isEmpty() {
        return nil 
    }
    var sum = 0
    while !q.isEmpty() {
        let a = q.deQueue()
        sum += a!
    }
    return sum
}

//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
    if q.isEmpty() {
        return nil
    }
    var smallest = q.peek()!
    while !q.isEmpty() {
        let a = q.deQueue()!
        if a < smallest{
            smallest = a
        }else {
            continue
        }
        
    }
    return smallest
}

//Find out whether or not a queue is in sorted order from smallest to biggest
//True example:   (Back) 9 - 6 - 2 - 1 (Front)
//False example   (Back) 4 - 19 - 134 200 (Front)

func isSorted<T: Comparable>(q: Queue<T>) -> Bool? {
    if q.isEmpty() {
        return nil
    }
    let first = q.peek()!
    while !q.isEmpty() {
        let next = q.deQueue()!
        if next < first {
            return false
        } else {
            continue
        }
    }
    return true
}


//Return a reversed queue.
func reverse<T>(q: Queue<T>) -> Queue<T> {
    let tempStack = Stack<T>()
    while !(q.isEmpty()) {
        let a = q.deQueue()
        tempStack.push(element: a!)
    }
    while !tempStack.isEmpty() {
        q.enQueue(newElement: tempStack.pop()!)
    }
    
    return q
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    if qOne.isEmpty() && qTwo.isEmpty() {
        return true
    }
    while (!qOne.isEmpty() && !qTwo.isEmpty()) {
        let a = qOne.peek()
        let b = qTwo.peek()
        if a != b {
             break
        }
        if qOne.deQueue() == qTwo.deQueue() {
            return true 
        }
    }

    
    return false
}



//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

