//
//  LinkedList.swift
//  LinkedListsHomework
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T> {
  var key: T!
  var next: Node?
}

class LinkedList<T: Equatable> {
  
  var head  = Node<T>()
  
  func printAllKeys() {
    var currentNode = head
    while currentNode.next != nil {
      print(currentNode.key)
      currentNode = currentNode.next!
    }
  }
  
  func count() -> Int {
    
    if head.key == nil {
      return 0
    }
    var currentNode = head
    var counter = 1
    while currentNode.next != nil {
      counter += 1
      currentNode = currentNode.next!
    }
    return counter
  }
  
  
  func append(element newKey: T) {
    if head.key == nil {
      head.key = newKey
    }
    var currentNode = head
    while currentNode.next != nil {
      currentNode = currentNode.next!
    }
    let newNode = Node<T>()
    newNode.key = newKey
    currentNode.next = newNode
  }
  
  func getElement(at Index: Int) -> Node<T>? {
    var counter = 0
    var currentNode = head
    while counter < Index {
      guard currentNode.next != nil else { return nil }
      currentNode = currentNode.next!
      counter += 1
    }
    return currentNode
  }
  
  func insert(_ key: T, at index: Int) {
    var counter = 0
    var currentNode = head
    let newNode = Node<T>()
    newNode.key = key
    
    if index == 0 {
      newNode.next = currentNode
      head = newNode
    }
    
    while currentNode.key != nil {
      if counter == index - 1 {
        if let next = currentNode.next {
          newNode.next = next
        } else{
          newNode.next = nil
        }
        currentNode.next = newNode
      }
      counter += 1
      
      guard let next = currentNode.next else { return }
      currentNode = next
    }
  }
  
  func contains(element targetKey: T) -> Bool {
    var currentNode = head
    guard head.key != targetKey else { return true }
    
    while currentNode.next != nil {
      currentNode = currentNode.next!
      guard currentNode.key != targetKey else { return true }
    }
    
    return false
  }
  
  func remove(at index: Int) {
    var counter = 0
    var currentNode = head
    if index == 0 {
      if let next = currentNode.next {
        currentNode = next
      }
    }
    
    while currentNode.key != nil {
      if counter == index - 1 {
        if currentNode.next?.next != nil {
          currentNode.next = currentNode.next?.next
        } else {
          currentNode.next = nil
        }
      }
      counter += 1
      
      guard let next = currentNode.next else { return }
      currentNode = next
    }
  }
  
}

