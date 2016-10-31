//
//  PracticeProblems.swift
//  LinkedListPracticeProblems
//
//  Created by C4Q  on 10/27/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Review One: Write a Node class and a Singly Linked List class that has a variable Node() at the head
class Node<T>{
    var key: T!
    var next: Node?
}

class LinkedList<T:Equatable> {
    var head = Node<T>()
    
    var count: Int {
        if head.key == nil {
            return 0
        }
        var currentNode = head
        var counter = 1
        while currentNode.next != nil{
            currentNode = currentNode.next!
            counter += 1
        }
        return counter
    }
    
    //Review Two: Write a print printAllKeys() method in your linked list class
    func printAllKeys() {
        var currentNode = head
        while currentNode.next != nil {
            print(currentNode.key)
            currentNode = currentNode.next!
        }
    }
    //Review Three: Write an append(newlement:) method in your linked list class
    func append(newElement: T ){
        var currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }
        let newNode = Node<T>()
        newNode.key = newElement
        currentNode.next = newNode
    }
    //Review Four: Write a reverse() method in your linked list class
    func reverse() {
        var previousNode : Node<T>? = nil
        var currentNode : Node<T>? = head
        while currentNode?.next != nil {
            let temp = currentNode?.next
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = temp
        }
        self.head = previousNode!
    }
    
    func remove(at index: Int) {
        if index > self.count - 1 || index < 0 || head.key == nil {
            return
        }else{
            var currentNode = head
            var currentIndex = 0
            while currentIndex != index - 1{
                currentNode = currentNode.next!
                currentIndex += 1
            }
            currentNode.next = currentNode.next?.next
        }
    }

}
//Problem One: Given a singly linked list as input, write a function that returns the nth to last element

//Example
//Input: a -> b -> c -> d-> e, 2
//Output: d
func linkedListNthLastElement<T:Equatable>(_ imput: LinkedList<T>, index: Int) -> Node<T>? {
    if index > imput.count || index < 0 || imput.head.key == nil {
        return nil
    } else{
    var counter = 0
    var currentNode = imput.head
    var array = [T]()
    let returnNode = Node<T>()
        
        while currentNode.next != nil{
            array.append(currentNode.key)
            currentNode = currentNode.next!
            counter += 1
        }
        returnNode.key = array[counter-index]
        return returnNode
    }
}


//    func retunsNthElement (at index: Int) -> T? {
//        if index > self.count || index < 0 || head.key == nil {
//            return nil
//        } else {
//        var currentNode = head
//        var counter = 0
//        var array = [T]()
//        while currentNode.next != nil{
//            array.append(currentNode.key)
//            currentNode = currentNode.next!
//            counter += 1
//        }
//        return array[counter-index]
//        }
//    }


//Problem Two: Implement an algorithm to delete a node in the middle of a single linked list, given only access to that node.
//EXAMPLE
//Input: the node ‘c’ from the linked list a->b->c->d->e
//Result: nothing is returned, but the new linked list looks like a->b->d->e

func deleteNodeEqualToKey<T:Equatable> (_ imput: LinkedList<T> , _ key: T) {
    var counter = 0
    let imputLinkedList = imput
    var currentNode = imput.head
    
    while currentNode.next != nil{
        if currentNode.key == key {
            imputLinkedList.remove(at: counter)
        }
        currentNode = currentNode.next!
        counter += 1
    }
}

//    func deleteNthElement (at index: Int) -> Node<T>? {
//        if index > self.count || index < 0 || head.key == nil {
//            return nil
//        } else {
//            var currentNode = head
//            var counter = 0
//            var returnedNode = Node<T>()
//            while currentNode.next != nil{
//                if counter == index {
//                    let temp = currentNode.next
//                    returnedNode = currentNode
//                    returnedNode.next = nil
//                    currentNode.key = nil
//                    currentNode.next = nil
//                    currentNode = temp!
//                } else {
//                currentNode = currentNode.next!
//                counter += 1
//                }
//            }
//            return returnedNode
//        }
//    }


//Problem Three: You have two numbers represented by a singly linked list, where each node contains a single digit. The digits are stored in reverse order, such that the 1’s digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list.

//EXAMPLE
// 513 + 295 = 808
//Input: (3 -> 1 -> 5) + (5 -> 9 -> 2)
//Output: 8 -> 0 -> 8

func linkedListAddition(_ imput1: LinkedList<Int>, _ imput2: LinkedList<Int>) -> LinkedList<Int> {
    var imput1Value = 0
    var imput2Value = 0
    var sum = 0
    var counter = 0
    var currentNodeImput1 = imput1.head
    var currentNodeImput2 = imput2.head
    let outComeLinkedList = LinkedList<Int>()
    
    while currentNodeImput1.next != nil {
        imput1Value += (currentNodeImput1.key! * Int(pow(10, Double(counter))))
        currentNodeImput1 = currentNodeImput1.next!
        counter += 1
    }
    
    while currentNodeImput2.next != nil {
        imput2Value += (currentNodeImput2.key! * Int(pow(10, Double(counter))))
        currentNodeImput2 = currentNodeImput2.next!
        counter += 1
    }
    
    sum = imput1Value + imput2Value
    
    while counter >= 0 {
        outComeLinkedList.append(newElement: sum % Int(pow(10, Double(counter))))
        counter -= 1
    }
    
    return outComeLinkedList
    
}


//Problem Four: Split a linked list in half
//Input: a -> b -> c -> d-> e
//Output: (a->b->c, d->e)


func splitInHalf<T:Equatable> (_ imput: LinkedList<T>) -> (LinkedList<T>,LinkedList<T>)? {
    if imput.count < 3 || imput.head.key == nil {
        return nil
    } else {
        var currentNode = imput.head
        let linkedList1 = LinkedList<T>()
        let linkedList2 = LinkedList<T>()
        let index = Int(round(Double(imput.count)/2.0))
        var counter = 0
        while currentNode.next != nil{
            if counter < index {
                linkedList1.head = currentNode
                currentNode = currentNode.next!
                counter += 1
            } else if counter == index {
                linkedList1.head = currentNode
                linkedList1.head.next = nil
                currentNode = currentNode.next!
                counter += 1
            }
            else {
                linkedList2.head = currentNode
                currentNode = currentNode.next!
                counter += 1
            }
        }
        return (linkedList1,linkedList2)
    }
}

//    func splitInHalf() -> (Node<T>, Node<T>)? {
//        if self.count < 3 || head.key == nil {
//            return nil
//        } else {
//            var currentNode = head
//            var linkedList1 = Node<T>()
//            var linkedList2 = Node<T>()
//            let index = Int(round(Double(self.count)/2.0))
//            var counter = 0
//            while currentNode.next != nil{
//                if counter < index {
//                    linkedList1 = currentNode
//                    currentNode = currentNode.next!
//                    counter += 1
//                } else if counter == index {
//                    linkedList1 = currentNode
//                    linkedList1.next = nil
//                    currentNode = currentNode.next!
//                    counter += 1
//                }
//                else {
//                    linkedList2 = currentNode
//                    currentNode = currentNode.next!
//                    counter += 1
//                }
//            }
//            return (linkedList1,linkedList2)
//        }
//    }

    
