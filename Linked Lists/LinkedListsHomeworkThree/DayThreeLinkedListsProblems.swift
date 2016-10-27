//
//  DayThreeLinkedListsProblems.swift
//  LinkedListsHomeworkThree
//
//  Created by C4Q  on 10/26/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation


class Node<T> {
  var key: T!
  var next: Node?
  var previous: Node?
}

class LinkedList<T: Equatable> {
  
  var head = Node<T>()
  
  
  
  func doesContainCycle() -> Bool {
    var tortoiseNode: Node? = head
    var hareNode: Node? = head
    guard head.key != nil else { return false }
    
    while hareNode?.next != nil {
      tortoiseNode = tortoiseNode?.next
      hareNode = hareNode?.next?.next
      if tortoiseNode === hareNode {
        return true
      }
    }
    
    return false
  }
  
  
  
  var count: Int {
    guard !doesContainCycle() else { return 0 }
    guard head.key != nil else { return 0 }
    var counter = 1
    var currentNode = head
    var temp = head
    
    while currentNode.next != nil {
      temp = currentNode
      currentNode = currentNode.next!
      currentNode.previous = temp
      counter += 1
    }
    
    return counter
  }
  
  
  
  //empty list check
  func isEmpty() -> Bool {
    guard head.key != nil else { return true }
    return false
  }
  
  
  
  //add link item
  func append(element key: T) {
    guard !doesContainCycle() else { return }
    var currentNode = head
    var temp = head
    let newNode = Node<T>()
    
    while currentNode.next != nil {
      temp = currentNode
      currentNode = currentNode.next!
      currentNode.previous = temp
    }
    temp = currentNode
    newNode.key = key
    currentNode.next = newNode
    newNode.previous = temp
  }
  
  
  
  //print all keys for the class
  func printAllKeys() {
    guard !doesContainCycle() else { return }
    var currentNode = head
    var temp = head
    print(currentNode.key)
    while currentNode.next != nil {
      temp = currentNode
      currentNode = currentNode.next!
      currentNode.previous = temp
      print(currentNode.key)
    }
  }
  
  
  
  //obtain link at a specific index
  func getElement(at index: Int) ->Node<T>! {
    var counter = 0
    var currentNode = head
    var temp = head
    
    while counter < index {
      temp = currentNode
      currentNode = currentNode.next!
      currentNode.previous = temp
      counter += 1
    }
    return currentNode
  }
  
  
  
  //insert at specific index
  func insert(_ key: T, at index: Int) {
    guard !doesContainCycle() else { return }
    var counter = 0
    var currentNode = head
    var temp = head
    let newNode = Node<T>()
    newNode.key = key
    
    while counter < index {
      temp = currentNode
      currentNode = currentNode.next!
      currentNode.previous = temp
      counter += 1
    }
    
    newNode.previous = temp
    currentNode = currentNode.next!
    newNode.next = currentNode
    
  }
  
  //remove at specific index
  func remove(at index: Int) {
    var currentNode: Node? = head
    
    if index < 2 {
      self.head = (currentNode?.next)!
      head.previous = nil
      
    }
    else {
      var count: Int = 0
      
      while count < index {
        currentNode = currentNode?.next
        count += 1
      }
      
      let nextNode: Node? = currentNode?.next?.next
      currentNode?.next = nextNode
      nextNode?.previous = currentNode
    }
  }
  
}
