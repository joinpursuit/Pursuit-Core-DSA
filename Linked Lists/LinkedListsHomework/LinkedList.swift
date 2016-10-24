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
        
    }
    var count: Int {return 0}
    
    func append(element newKey: T) {}
    
    func getElement(at Index: Int) -> Node<T>? {return nil}
    
    func insert(_ key: T, at index: Int) {}
    
    func contains(element targetKey: T) -> Bool {return false}
    
    func remove(at index: Int) {}
}


