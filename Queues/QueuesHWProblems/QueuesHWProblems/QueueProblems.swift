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
<<<<<<< HEAD
    guard !(q.isEmpty()) else {
        return nil
    }
    var tempArr = [Int]()
    var sum: Int = 0
    while !(q.isEmpty()) {
        sum += q.peek()!
        tempArr.append(q.deQueue()!)
    }
    
    for i in tempArr{
        q.enQueue(newElement: i)
    }
    
=======
    guard !q.isEmpty() else {
        return nil
    }
    let tempQ = Queue<Int>()
    var sum = 0
    while !(q.isEmpty()) {
        let temp = q.deQueue()!
        sum += temp
        q.enQueue(newElement: temp)
    }
    //Rebuild
    while !(tempQ.isEmpty()) {
        let temp = tempQ.deQueue()!
        q.enQueue(newElement: temp)
    }
>>>>>>> 820db60d277bc2ddeaba1ba30f91d2a4dbfef67e
    return sum
}

//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
    guard !(q.isEmpty()) else {
        return nil
    }
    var tempArr = [T]()
    var temp = q.peek()!
    while !(q.isEmpty()) {
        if q.peek()! < temp{
            temp = q.peek()!
        }
        tempArr.append(q.deQueue()!)
    }
    
    for i in tempArr{
        q.enQueue(newElement: i)
    }
    
    return temp
}

//Find out whether or not a queue is in sorted order from smallest to biggest
//True example:   (Back) 9 - 6 - 2 - 1 (Front)
//False example   (Back) 4 - 19 - 134 200 (Front)
func isSorted<T: Comparable>(q: Queue<T>) -> Bool? {
    guard !(q.isEmpty()) else {
        return nil
    }
    var tempArr: [T] = []
    tempArr.append(q.deQueue()!)
    var condition: Bool = true
    while !(q.isEmpty()) {
        if tempArr.last! > q.peek()!{
            condition = false
        }
        tempArr.append(q.deQueue()!)
    }
    
    for i in tempArr{
        q.enQueue(newElement: i)
    }
    
    return condition
}

//Return a reversed queue.
func reverse<T>(q: Queue<T>) -> Queue<T> {
    let tempStack = Stack<T>()
    var tempArr = [T]()
    let finalQueue = Queue<T>()
    while !(q.isEmpty()) {
        tempArr.append(q.peek()!)
        tempStack.push(element: q.deQueue()!)
    }
    while !(tempStack.isEmpty()) {
        finalQueue.enQueue(newElement: tempStack.pop()!)
    }
    for i in tempArr{
        q.enQueue(newElement: i)
    }
    return finalQueue
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    let tempQueOne = Queue<T>()
    let tempQueTwo = Queue<T>()
    var condition = true
    while !(qOne.isEmpty()) && !(qTwo.isEmpty()) {
        if qOne.peek() != qTwo.peek(){
            condition = false
        }
        tempQueOne.enQueue(newElement: qOne.deQueue()!)
        tempQueTwo.enQueue(newElement: qTwo.deQueue()!)
    }
    if !(qOne.isEmpty() && qTwo.isEmpty()){
        condition = false
    }
    while !(tempQueOne.isEmpty()) {
        qOne.enQueue(newElement: tempQueOne.deQueue()!)
        qTwo.enQueue(newElement: tempQueTwo.deQueue()!)
    }
    return condition
}

//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

