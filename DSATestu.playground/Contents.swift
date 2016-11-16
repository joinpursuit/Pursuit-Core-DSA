//: Playground - noun: a place where people can play

import UIKit

//class Node<T> {
//    var key: T!
//    var next: Node?
//}
//
//class LinkedList<T: Equatable> {
//    var head: Node<T>
//}

/*
Sample input: [1,4,2,3,10,2,6,4,2,3,2,10]

Sample output: 24

Write a function that returns the sum of the first 5 even numbers in an array. If an array has less than 5 even numbers, then return the sum of all even numbers in the array
*/
/*
//SIX
var numArray = [1,4,2,3,10,2,6,4,2,3,2,10]

func addFirstFiveEvens (numArray arr: [Int]) -> Int {
    var sum = 0
    var numberOfEvensCounter = 0
    
    for eachNum in arr {
        if eachNum % 2 == 0 {
            sum += eachNum
            numberOfEvensCounter += 1
            guard numberOfEvensCounter != 5 else {
                break
            }
        }
    }
    return sum
}
addFirstFiveEvens(numArray: numArray)
 */

/*
 Sample input:
 [[1,2,3],
 [4,5,6],
 [7,8,9]]
 
 Sample output: 25
 
 Write a function that returns the sum of all the Ints except the corners in an array of arrays of Integers ( [[Int]] ). Assume that the [[Int]] is of size n x n (it has the same number of rows and columns) *
*/
/*
var numArrays = [[1,2,3],
                 [4,5,6],
                 [7,8,9]]


func sumExceptCorners(numArrays: [[Int]]) -> Int {
    var arrs = numArrays
    var sum = 0
    for var eachArr in arrs {
        if eachArr == arrs[0] || eachArr == arrs[arrs.count - 1] { //If first or last numArray, then add everything but the first and last elements 
            for i in 1..<eachArr.count - 1 {
                sum += eachArr[i]
            }
        }
        else {
            for i in 0..<eachArr.count {
                sum += eachArr[i]
            }
        }
    }
    return sum
}

sumExceptCorners(numArrays: numArrays)
 
*/
/*
class Node {
    var key: Int?
    var next: Node?
}

class LinkedList {
    var head = Node()
    func sum() {
        guard head.key != nil else { //Checks if theres at least one Node
            return
        }
        var sum = 0
        var currentNode = head
        while currentNode.key != nil { //
            sum += currentNode.key! //Adds node's key value to sum
            currentNode = currentNode.next! //Keeps going to next node until nil breaks while loop
        }
    }
    
    
    
}

*/

/*
 Implement a stack using an array. Give your stack a method min() that returns the smallest element in the stack. For full credit, you should be able to create an instance of a Stack of any type that conforms to the Comparable protocol.
 */

//Stacks are FIRST IN LAST OUT, literally like a stack
//So with an Array you add the element, and its from left -> right as bottom -> top in terms of a Stack
//
// class Stack<T> {
//    var stack = Stack<T>()
//    var arr: [T] = []
//    func push(element: T) {
//        arr.append(element)
//    }
//    func pop() -> T?{
//        guard arr.count != 0 else {
//            return nil
//        }
//        return arr.last
//    }
//    func peek() -> T? {
//        guard arr.count != 0 else {
//            return nil
//        }
//        return arr.last
//    }
//    func isEmpty() -> Bool {
//        guard arr.count != 0 else {
//            return true
//        }
//        return false
//    }
//    func min() -> T? {
//        guard !(stack.isEmpty()) else {
//            return nil
//        }
//        var minimum = stack.peek() //Return the top element without removing
//        while !(stack.isEmpty()) { //As long as stack has an element
//            var num = stack.pop() //remove top element of the stack and assign it to num var
//            if num < minimum { //If any of these numbers are less than the 1st num we peeked at
//                minimum = num //then reassign minimum as num
//            }
//            
//        }
//        return minimum
//    }
//}
//











/*
 The Node and LinkedList classes are implemented correctly. The Queue class above has a bug in one of its methods. Which method has the bug? What is the bug? Rewrite the method so that it is bug-free.
 */

class Node<T> {
    var key: T?
    var next: Node<T>?
}

class LinkedList<T> {
    var head: Node<T>
    var tail: Node<T>
    init() {
        self.head = Node<T>()
        self.tail = head
    }
}

class Queue<T> {
    private var list = LinkedList<T>()
    //Queue is FIRST IN FIRST OUT & LAST IN LAST OUT
    //current head's next property becomes head, new heads key property becomes old heads key property
    func deQueue() -> T? {
        if let oldHeadKey = list.head.key { //current head key is assigned to oHK
            if let nextNode = list.head.next { //the pointer or next property of the current head is assigned to nN
                list.head = nextNode //
            } else {
                list.head.key = nil //the key of current head is deleted
            }
            return oldHeadKey
        } else {
            return nil
        }
    }
    
    func enQueue(newElement: T) {
        if list.head.key == nil { //
            list.head.key = newElement
            return
        } else { //else if theres a head
            let newNode = Node<T>()
            newNode.key = newElement //the
            list.tail.next = newNode
        }
    }
    
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
    
    func peek() -> T? {
        return list.head.key
    }
}

var q = Queue<Int>()
print(q.isEmpty())
q.enQueue(newElement: 3)
q.enQueue(newElement: 6)
print(q.peek()!)
print(q.isEmpty())
q.deQueue()
print(q.peek())
print(q.isEmpty())





