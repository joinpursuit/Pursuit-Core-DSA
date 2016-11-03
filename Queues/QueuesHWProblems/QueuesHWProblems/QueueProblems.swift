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
    guard !(q.isEmpty()) else {
        return nil
    }
    var sum = 0
    while !(q.isEmpty()) {
        let top = q.deQueue()
        sum += top!
        
        
    }
    return sum
    
    
}

//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
    guard !(q.isEmpty()) else {
        return nil
    }
    var smallest = q.peek()
    
    while !(q.isEmpty()) {
        let top = q.deQueue()
        if top! < smallest! {
            smallest = top
        }
        
        
    }
    
    return smallest
}

//Find out whether or not a queue is in sorted order from smallest to biggest
//True example:   (Back) 9 - 6 - 2 - 1 (Front)
//False example   (Back) 4 - 19 - 134 200 (Front)
func isSorted<T: Comparable>(q: Queue<T>) -> Bool? {
    guard !(q.isEmpty()) else {
        return nil
    }
    var firstQ = q.deQueue()
    var nextQ = q.deQueue()
    
    while !(q.isEmpty()) {
        if nextQ! > firstQ! {
            return true
        }
    }
    return false
}
    

//Return a reversed queue.
func reverse<T>(q: Queue<T>) -> Queue<T> {
    
    let tempStack = Queue<T>()
    while !(q.isEmpty()) {
        var stax = q.deQueue()
        tempStack.enQueue(newElement: stax!)
    }
    return tempStack
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    
    let q1 = qOne.deQueue()
    let q2 = qTwo.deQueue()
    
    while !(qOne.isEmpty()) && !(qTwo.isEmpty()) {
        if q1 == q2 {
            return true
        }
    
    return false
}

//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

