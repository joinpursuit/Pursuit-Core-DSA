import UIKit

var str = "Hello, playground"
class StackWithArr<T> {
    private var arr = Array<T>()
    
    func pop() -> T? {
<<<<<<< HEAD
        //        return arr.popLast()
        guard arr.count != 0 else {
            return nil
        }
        let last = arr[arr.count - 1]
        arr.remove(at: arr.count - 1)
        return last
=======
        //      return arr.popLast()
        guard arr.count != 0 else {
            return nil
        }
        return arr.remove(at: arr.count-1)
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
    }
    
    func push(newElement: T) {
        arr.append(newElement)
    }
    
    func peek() -> T? {
        guard arr.count != 0 else {
            return nil
        }
<<<<<<< HEAD
        return arr[arr.count - 1]
    }
    
    func isEmpty() -> Bool {
=======
        return arr[arr.count-1]
    }
    
    func isEmpty() -> Bool {
        //return arr.isEmpty
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
        return arr.count == 0
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
<<<<<<< HEAD

=======
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5

class Node<T> {
    var key: T!
    var next: Node?
}

class LinkedList<T> {
    var head = Node<T>()
}

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
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
}

let myStackLL = StackWithLL<Int>()
print("Stack with LL output:")
<<<<<<< HEAD
myStackLL.push(element: 9)
myStackLL.push(element: 39)
=======
myStackLL.push(newElement: 9)
myStackLL.push(newElement: 39)
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
print(myStackLL.peek())
myStackLL.pop()
print(myStackLL.peek())
print(myStackLL.isEmpty())
myStackLL.pop()
print(myStackLL.isEmpty())
<<<<<<< HEAD

=======
myStackLL.pop()
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
