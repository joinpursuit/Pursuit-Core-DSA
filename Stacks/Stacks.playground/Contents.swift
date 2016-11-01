import UIKit

var str = "Hello, playground"
class StackWithArr<T> {
    private var arr = Array<T>()
    
    func pop() -> T? {
<<<<<<< HEAD
        //return arr.popLast()
        guard arr.count > 0 else {
=======
        //      return arr.popLast()
        guard arr.count != 0 else {
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
            return nil
        }
        return arr.remove(at: arr.count-1)
    }
    
<<<<<<< HEAD
    func push(newElement: T) { // does not need to return something
=======
    func push(newElement: T) {
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
        arr.append(newElement)
    }
    
    func peek() -> T? {
<<<<<<< HEAD
        guard arr.count > 0 else {
            return nil
        }
        return arr.last
    }
    
    func isEmpty() -> Bool {
        return arr.isEmpty
        //return arr.count == 0
=======
        guard arr.count != 0 else {
            return nil
        }
        return arr[arr.count-1]
    }
    
    func isEmpty() -> Bool {
        //return arr.isEmpty
        return arr.count == 0
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
    }
}

let myStack = StackWithArr<Int>()
print("Stack with arr output:")
myStack.push(newElement: 9)
myStack.push(newElement: 39)
print(myStack.peek())
myStack.pop()
print(myStack.peek())
print(myStack.isEmpty())

class Node<T> {
    var key: T!
    var next: Node?
}

class LinkedList<T> {
    var head = Node<T>()
}

<<<<<<< HEAD
// H -> 2 -> 3
// new -> H -> 2 -> 3


// Using first thing of linkedList as the top of a stack - it uses less time

=======
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
class StackWithLL<T> {
    private var list = LinkedList<T>()
    func pop() -> T? {
<<<<<<< HEAD
         guard list.head.next != nil else {
            list.head.key = nil
            return nil
=======
        let oldHead = list.head.key
        if let next = list.head.next {
            list.head = next
        } else {
            list.head = Node<T>()
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
        }
        return oldHead
    }
<<<<<<< HEAD
    
    //push
    func push(element: T) {
        if list.head.key == nil {
            list.head.key = element
=======
    func push(newElement: T) {
        guard list.head.key != nil else {
            list.head.key = newElement
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
            return
        }
        let newNode = Node<T>()
        newNode.key = newElement
        newNode.next = list.head
        list.head = newNode
    }
    func peek() -> T? {
        return list.head.key
    }
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
}

let myStackLL = StackWithLL<Int>()
print("Stack with LL output:")
myStackLL.push(newElement: 9)
myStackLL.push(newElement: 39)
print(myStackLL.peek())
myStackLL.pop()
print(myStackLL.peek())
print(myStackLL.isEmpty())
myStackLL.pop()
print(myStackLL.isEmpty())
myStackLL.pop()
