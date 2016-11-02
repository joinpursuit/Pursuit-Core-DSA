<<<<<<< HEAD
//: Playground - noun: a place where people can play

=======
import UIKit

var str = "Hello, playground"
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
class StackWithArr<T> {
    private var arr = Array<T>()
    
    func pop() -> T? {
<<<<<<< HEAD
        
        //  return arr.popLast()
        guard arr.count != 0 else {
            return nil
        }
        let last = arr[arr.count-1]
        arr.remove(at: arr.count-1)
        return last
    }
    
    func push(newElement: T){
=======
        //      return arr.popLast()
        guard arr.count != 0 else {
            return nil
        }
        return arr.remove(at: arr.count-1)
    }
    
    func push(newElement: T) {
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
        arr.append(newElement)
    }
    
    func peek() -> T? {
        guard arr.count != 0 else {
            return nil
        }
        return arr[arr.count-1]
    }
    
    func isEmpty() -> Bool {
<<<<<<< HEAD
        // return arr.isEmpty
=======
        //return arr.isEmpty
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
        return arr.count == 0
    }
}

let myStack = StackWithArr<Int>()
<<<<<<< HEAD
myStack.push(newElement: 9)
print(myStack.peek())
myStack.pop()
print(myStack.isEmpty())



=======
print("Stack with arr output:")
myStack.push(newElement: 9)
myStack.push(newElement: 39)
print(myStack.peek())
myStack.pop()
print(myStack.peek())
print(myStack.isEmpty())

>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
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


class StackWithLL<T> {
    private var list = LinkedList<T>()
    //pop
    func pop() -> T? {
        guard list.head.next != nil else {
            list.head.key = nil
            return nil
        }
        let oldKey = list.head.key
        list.head = list.head.next!
        return oldKey
    }
    //push
    func push(element: T) {
        if list.head.key == nil {
            list.head.key = element
            return
        }
        let newNode = Node<T>()
        newNode.key = element
        newNode.next = list.head
        list.head = newNode
    }
    
    //peek
    func peek() -> T? {
        return list.head.key
    }
    
    //isEmpty
=======
class StackWithLL<T> {
    private var list = LinkedList<T>()
    func pop() -> T? {
        let oldHead = list.head.key
        if let next = list.head.next {
            list.head = next
        } else {
            list.head = Node<T>()
        }
        return oldHead
    }
    func push(newElement: T) {
        guard list.head.key != nil else {
            list.head.key = newElement
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
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
}

let myStackLL = StackWithLL<Int>()
<<<<<<< HEAD

myStackLL.push(element: 9)
print(myStackLL.peek())
myStackLL.pop()
print(myStackLL.isEmpty())








=======
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
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
