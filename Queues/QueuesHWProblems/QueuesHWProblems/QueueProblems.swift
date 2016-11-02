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
        sum += q.deQueue()!
    }
    return sum
}

//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
    if q.isEmpty() {
        return nil
    }
    var smallest = q.peek()
    while !q.isEmpty() {
        if let s = q.peek() {
            if s < smallest! {
            smallest = q.deQueue()
            }
            else {
                q.deQueue()
            }
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
    while !q.isEmpty() {
        if let top = q.deQueue(), let bottom = q.peek() {
            if top > bottom {
                return false
            }
        }
    }
    return true
}

//Return a reversed queue.
func reverse<T>(q: Queue<T>) -> Queue<T>? {
    let r = Stack<T>()
    //let r = Queue<T>()
    if q.isEmpty() {
        return nil
    }
    
    while !q.isEmpty() {
        r.push(element: q.deQueue()!)
    }
    
    while !r.isEmpty() {
        q.enQueue(newElement: r.pop()!)
    }
    
    return q
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    
//    if qOne.isEmpty() && qTwo.isEmpty() {
//        return true
//    }
//    
//    if qOne.isEmpty() || !qTwo.isEmpty() {
//        return false
//    }
//    
//    if !qOne.isEmpty() || qTwo.isEmpty() {
//        return false
//    }
    
    while !qOne.isEmpty() && !qTwo.isEmpty() {
        if qOne.deQueue() != qTwo.deQueue() {
            print("False not qOne.deQueue() != qTwo.deQueue()  ")
            return false
        }
    }
    
    while !qTwo.isEmpty() && qOne.isEmpty() {
        print("False !qTwo.isEmpty() && qOne.isEmpty() ")
        return false
    }
    
    while !qOne.isEmpty() && qTwo.isEmpty() {
        print("False !qOne.isEmpty() && qTwo.isEmpty() ")
        return false
    }
    
    return true
}

//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

