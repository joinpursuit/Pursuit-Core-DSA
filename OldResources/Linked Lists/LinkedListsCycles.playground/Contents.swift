//: Playground - noun: a place where people can play

import UIKit

class Node {
    var key: Int!
    var next: Node?
}

class LinkedList {
    var head = Node()
}


//func doesContainCycle(list: LinkedList) -> Bool {
//    var tortoiseNode: Node? = list.head
//    var hareNode: Node? = list.head
//    while hareNode != nil {
//        tortoiseNode = tortoiseNode?.next
//        hareNode = hareNode?.next?.next
//        if tortoiseNode === hareNode {
//            return true
//        }
//    }
//    return false
//}
//
//var myList = LinkedList()
//
//myList.head.key = 10
//
//myList.head.next = Node()
//myList.head.next?.key = 15
//
//myList.head.next?.next = Node()
//myList.head.next?.next?.key = 20
//
//myList.head.next?.next?.next = nil
//
//print(doesContainCycle(list: myList))

