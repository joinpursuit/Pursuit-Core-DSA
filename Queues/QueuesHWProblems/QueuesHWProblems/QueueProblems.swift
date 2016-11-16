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
    guard q.isEmpty() == true else {return nil}
    
    var sum = 0
    
    let tempQ = Queue<Int>()
    
    while q.isEmpty() == false {
        sum += q.deQueue()!
        tempQ.enQueue(newElement: q.peek()!)
        print(sum)
    }
    
    while tempQ.isEmpty() == false {
        q.enQueue(newElement: tempQ.deQueue()!)
    }
    
    print(q)
    return sum
}

//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
    guard var smallest = q.peek() else {return nil}
    
    while q.isEmpty() == false {
        if let integer = q.deQueue(), integer < smallest {
            smallest = integer
        }
    }
    
    return smallest
}

//Find out whether or not a queue is in sorted order from smallest to biggest
//True example:   (Back) 9 - 6 - 2 - 1 (Front)
//False example   (Back) 4 - 19 - 134 200 (Front)
func isSorted<T: Comparable>(q: Queue<T>) -> Bool? {
    return false
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

