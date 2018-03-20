//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

import Foundation

class Node<T> {
    
    var key: T!
    var next: Node?
    var previous: Node?
    
}

public class LinkedList<T: Equatable> {
    
    
    //new instance
    private var head = Node<T>()
    
    
    
    var count: Int {
        
        if head.key == nil {
            return 0
        }
            
        else  {
            
            var current: Node = head
            var x: Int = 1
            
            
            //cycle through the list of items
            while current.next != nil {
                current = current.next!
                x += 1
            }
            
            return x
            
        }
    }
    
    
    
    //empty list check
    func isEmpty() -> Bool! {
        return self.count == 0 || head.key == nil
    }
    
    
    
    //add link item
    func append(element key: T) {
        
        
        //trivial check
        guard head.key != nil else {
            head.key = key
            return
        }
        
        
        var current: Node? = head
        
        
        while current != nil {
            
            if current?.next == nil {
                
                let childToUse = Node<T>()
                
                childToUse.key = key
                childToUse.previous = current
                current!.next = childToUse
                break
            }
                
            else {
                current = current?.next
            }
            
            
        } //end while
        
    }
    
    
    
    //print all keys for the class
    func printAllKeys() {
        
        var current: Node! = head
        
        print("------------------")
        
        //assign the next instance
        
        while current != nil {
            print("link item is: \(current.key)")
            current = current.next
        }
        
    }
    
    
    //MARK: Key & index operations
    
    
    //obtain link at a specific index
    func getElement(at index: Int) ->Node<T>! {
        
        
        //check empty conditions
        if ((index < 0) || (index > (self.count - 1)) || (head.key == nil)) {
            return nil
        }
            
            
        else  {
            var current: Node<T>! = head
            var x: Int = 0
            
            
            //cycle through elements
            while (index != x) {
                current = current.next
                x += 1
            }
            
            return current
            
        } //end else
        
        
    }
    
    
    
    
    //insert at specific index
    func insert(_ key: T, at index: Int) {
        
        
        //check for nil conditions
        if ((index < 0) || (index > (self.count - 1))) {
            print("link index does not exist..")
        }
        
        
        //establish the head node
        guard head.key != nil else {
            head.key = key
            return
        }
        
        
        //establish the trailer, current and new items
        var current: Node<T>? = head
        var trailer: Node<T>?
        var listIndex: Int = 0
        
        
        //iterate through the list to find the insertion point
        while (current != nil) {
            
            if (index == listIndex) {
                
                let childToUse: Node = Node<T>()
                
                //create the new node
                childToUse.key = key
                
                
                //connect the node infront of the current node
                childToUse.next = current
                childToUse.previous = trailer
                
                
                //use optional binding when using the trailer
                if let linktrailer = trailer {
                    linktrailer.next = childToUse
                    childToUse.previous = linktrailer
                }
                
                
                //point new node to the current / previous
                current!.previous = childToUse
                
                
                //replace the head node if required
                if (index == 0) {
                    head = childToUse
                }
                
                
                break
                
            } //end if
            
            
            //iterate through to the next item
            trailer = current
            current = current?.next
            listIndex += 1
            
            
        } //end while
        
    }
    
    
    
    
    //remove at specific index
    func remove(at index: Int) {
        
        //check for nil conditions
        if ((index < 0) || (index > (self.count - 1)) || (head.key == nil)) {
            print("link index does not exist..")
            return
        }
        
        
        var current: Node<T>? =  head
        var trailer: Node<T>?
        var listIndex: Int = 0
        
        
        //determine if the removal is at the head
        if (index == 0) {
            current = current?.next
            head = current!
            return
        }
        
        
        //iterate through the remaining items
        while current != nil {
            
            if listIndex == index {
                
                //redirect the trailer and next pointers
                trailer!.next = current?.next
                current = nil
                break
                
            }
            
            //update the assignments
            trailer = current
            current = current?.next
            listIndex += 1
            
        } //end while
        
        
    } //end function
}