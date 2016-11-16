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
    var total = 0
    while !(q.isEmpty()) {
        total += q.peek()!
        q.deQueue()
    }
    while !(tempQ.isEmpty()) {
        tempQ.enQueue(newElement: q.deQueue()!)
    }
    return total
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
    
    let tempQ = Queue<T>()
    var temp = q.peek()!
    var myBool = true
    while !(q.isEmpty()) {
        if q.peek()! < temp {
            myBool = false
        }
        else {
            temp = q.peek()!
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
    return Queue<T>()
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    return false
}

//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

