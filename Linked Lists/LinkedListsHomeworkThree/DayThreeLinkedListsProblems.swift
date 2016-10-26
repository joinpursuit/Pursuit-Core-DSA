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
    
    var count: Int {
        return 0
    }
    
    //empty list check
    func isEmpty() -> Bool {
        return false
    }
    
    
    
    //add link item
    func append(element key: T) {
  
    }
    
    //print all keys for the class
    func printAllKeys() {

    }
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>! {
        return Node<T>()
    }
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        
    }
    
    //remove at specific index
    func remove(at index: Int) {

    }
}
