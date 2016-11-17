var str = "Hello, playground"

//Two Dimensional Arrays
//Write a function that takes a square 2-Dimensional array of Ints and rotates it 90 degrees
//Sample input:
let testArr = [[1,2,3],
               [4,5,6],
               [7,8,9]]

//Sample output:
let testArrOut = [[7,4,1],
                  [8,5,2],
                  [9,6,3]]


func rotates(arr: [[Int]]) -> [[Int]]{
    var finalArr: [[Int]] = []
    
    for count in 0..<arr[0].count{
        var newArr: [Int] = []
        for index in 0..<arr.count{
            newArr.append(arr[index][count])
        }
        finalArr.append(newArr.reversed())
    }
    
    
    return finalArr
}

rotates(arr: testArr)

//Bonus: Handle arrays that are not square
let testArr2 = [[1,2,3,4],
                [5,6,7,8]]

let testArr2Out = [[5,1],
                   [6,2],
                   [7,3],
                   [8,4]]

rotates(arr: testArr2)

//Stacks
//Implement a Stack using an Array
class Stack<T> {
    private var arr: [T] = []
    
    func pop() -> T?{
        return arr.removeLast()
    }
    func push(newElement: T){
        arr.append(newElement)
    }
    func peek() -> T?{
        return arr.last!
    }
    func isEmpty() -> Bool{
        return arr.count == 0
    }
    func myMap(closure: ((T) -> T)) -> [T]{
        var finalArr = [T]()
        let tempStack = Stack<T>()
        
        while !isEmpty() {
            tempStack.push(newElement: self.pop()!)
        }
        
        while !tempStack.isEmpty() {
            finalArr.append(closure(tempStack.peek()!))
            self.push(newElement: tempStack.pop()!)
        }
        
        return finalArr
    }
    func myFilter(closure: ((T) -> Bool)) -> [T]{
        var finalArr = [T]()
        let tempStack = Stack<T>()
        
        while !self.isEmpty() {
            tempStack.push(newElement: self.pop()!)
        }
        
        while !tempStack.isEmpty() {
            if closure(tempStack.peek()!){
                finalArr.append(tempStack.pop()!)
            }
            else{
                self.push(newElement: tempStack.pop()!)
            }
        }
        
        return finalArr
    }
    func myReduce(initial: T, closure: (( T, T) -> T )) -> T{
        var finalVariable = initial
        let tempStack = Stack<T>()
        
        while !self.isEmpty() {
            tempStack.push(newElement: self.pop()!)
        }
        
        while !tempStack.isEmpty() {
            finalVariable = closure(finalVariable, tempStack.peek()!)
            self.push(newElement: tempStack.pop()!)
        }
        
        return finalVariable
    }
}

let a = Stack<Int>()

a.push(newElement: 1)
a.push(newElement: 2)
a.push(newElement: 3)
a.pop()
a.pop()
a.peek()


//Linked Lists
//Implement a singly linked list with the following methods
class Node<T>{
    var key: T!
    var next: Node?
}

class LinkedList<T> {
    
    var head = Node<T>()
    
    func isEmpty() -> Bool {
        return count == 0
    }
    
    func append(newElement: T) {
        if isEmpty() == true {
            head.key = newElement
            count += 1
        }
        else{
            var currentNode = head
            while currentNode.next != nil {
                currentNode = currentNode.next!
            }
            let newNode = Node<T>()
            newNode.key = newElement
            currentNode.next = newNode
            count += 1
        }
    }
    
    func delete(at: Int) -> T?{
        guard at < count else {
            return nil
        }
        if at == 0 {
            let returnElement = head.key
            head = head.next!
            count -= 1
            return returnElement
        }
        else{
            
            var currentNode = head
            for _ in 1..<at{
                currentNode = currentNode.next!
            }
            let returnElement = currentNode.next?.key
            currentNode.next = currentNode.next?.next
            count -= 1
            return returnElement
        }
    }
    
    func insert(at: Int, newElement: T) {
        if at > count{
            
        }
        else if at == 0{
            let newNode = Node<T>()
            newNode.key = newElement
            newNode.next = head
            head = newNode
            count += 1
        }
        else{
            var currentNode = head
            for _ in 1..<at{
                currentNode = currentNode.next!
            }
            
            let newNode = Node<T>()
            newNode.key = newElement
            newNode.next = currentNode.next
            currentNode.next = newNode
            count += 1
        }
    }
    
    func printAll(){
        var currentNode = head
        while currentNode.next != nil {
            print(currentNode.key)
            currentNode = currentNode.next!
        }
        print(currentNode.key)
    }
    
    var count: Int = 0
}


//Queues
//Implement a Queue using a Linked List.
class Queue<T> {
    private var list = LinkedList<T>()
    
    func enQueue(newElement: T){
        self.list.append(newElement: newElement)
    }
    
    func deQueue() -> T?{
        guard !isEmpty() else {
            return nil
        }
        
        return list.delete(at: 0)
    }
    
    func peek() -> T?{
        guard !isEmpty() else {
            return nil
        }
        return list.head.key
    }
    
    func isEmpty() -> Bool{
        return list.isEmpty()
    }
    
    func printQueue(){
        list.printAll()
    }
}

//Advanced:
//1) Write map, filter and reduce functions for your Stack, Queue and LinkedList

//2) Write a reverse() function for your Stack, Queue and LinkedList
//2b) Write a reverse() funciton for your LinkedList that works in O(1) space

//3) https://projecteuler.net/problem=2
/*
 Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
 By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
 */

//4) https://projecteuler.net/problem=7
/*
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 What is the 10 001st prime number?
 */
