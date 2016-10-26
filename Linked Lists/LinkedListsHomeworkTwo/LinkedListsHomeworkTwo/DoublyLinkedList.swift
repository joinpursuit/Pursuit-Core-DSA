//
//  DoublyLinkedList.swift
//  LinkedListsHomeworkTwo
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T: Comparable> {
  var key: T!
  var next: Node?
}


class LinkedList<T: Comparable> {
  var head  = Node<T>()
  
  func printAllKeys() {
    
    var currentNode: Node<T>! = head
    
    while currentNode != nil {
      print(currentNode.key)
      currentNode = currentNode.next
    }
  }
  
  var count: Int {
    if head.key == nil {
      return 0
    } else {
      var currentNode = head
      var counter = 1
      while currentNode.next != nil {
        currentNode = currentNode.next!
        counter += 1
      }
      return counter
    }
  }
  
  func append(element newKey: T) {
    guard head.key != nil else {
      head.key = newKey
      return
    }
    
    var currentNode = head
    while currentNode.next != nil {
      currentNode = currentNode.next!
    }
    currentNode.next = Node()
    currentNode.next!.key = newKey
  }
  
  
  
  //Problem One
  //See Exercise One (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)
  
  func equals(otherList: LinkedList ) -> Bool {
    var currentNode = head
    var otherNode = otherList.head
    guard currentNode.key == otherNode.key else { return false }
    
    while currentNode.next != nil {
      currentNode = currentNode.next!
      otherNode = otherNode.next!
      guard currentNode.key == otherNode.key else { return false }
      guard currentNode.next != nil && otherNode.next != nil else { return true }
    }

    return false
  }
  
}

//Problem Two
//See Exercise Three (https://github.com/C4Q/AC-DSA/blob/master/Linked%20Lists/LinkedListsDayTwo.md)

func mergeSortedLists<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
  var currentNode = listOne.head
  var otherNode = listTwo.head
  let newList = LinkedList<T>()
  var array = [currentNode, otherNode]
  
  while currentNode.next != nil {
    currentNode = currentNode.next!
    array.append(currentNode)
  }
  
  while otherNode.next != nil {
    otherNode = otherNode.next!
    array.append(otherNode)
  }
  
  let sortedNodes = array.sorted(by: {$0.key! < $1.key!})
  
  for item in sortedNodes {
    newList.append(element: item.key)
  }
  
  return newList
}











