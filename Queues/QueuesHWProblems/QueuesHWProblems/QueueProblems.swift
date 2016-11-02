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
  
  var sum = 0
  while !q.isEmpty(){
    let num = q.deQueue()
    sum += num!
  }
  return sum
}

//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
  guard !q.isEmpty() else { return nil }
  
  var small = q.peek()!
  
  while !q.isEmpty() {
    let isThisSmaller = q.deQueue()
    if isThisSmaller! <= small {
      small = isThisSmaller!
    }
  }
  
  return small
}

//Find out whether or not a queue is in sorted order from smallest to biggest
//True example:   (Back) 9 - 6 - 2 - 1 (Front)
//False example   (Back) 4 - 19 - 134 200 (Front)
func isSorted<T: Comparable>(q: Queue<T>) -> Bool? {
  guard !q.isEmpty() else { return nil }
  
  var arr = [T]()
  
  while !q.isEmpty() {
    let next = q.deQueue()
    arr.append(next!)
  }
  
  guard arr == arr.sorted() else { return false }
  return true
}

//Return a reversed queue.
func reverse<T>(q: Queue<T>) -> Queue<T> {
  
  let stack = Stack<T>()
  let newQ = Queue<T>()
  
  while !q.isEmpty() {
    let next = q.deQueue()
    stack.push(element: next!)
  }
  
  while !stack.isEmpty() {
    let next = stack.pop()!
    newQ.enQueue(newElement: next)
  }
  
  return newQ
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
  guard !qOne.isEmpty() && !qTwo.isEmpty() else { return true }
  if qOne === qTwo { return true }
  
  while !qOne.isEmpty() || !qTwo.isEmpty() {
    if qOne.isEmpty() || qTwo.isEmpty() { return false }
    let one = qOne.deQueue()
    let two = qTwo.deQueue()
    guard one == two else { return false }
  }
  return true
}

//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

