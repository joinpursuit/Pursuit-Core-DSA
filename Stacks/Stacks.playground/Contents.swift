import UIKit

<<<<<<< HEAD
class StackWithArr<element> {
    private var arr = Array<element>() // <> can be anything
    
    func pop() -> element? {
        // return arr.popLast()
        guard arr.count != 0 else {
            return nil
        }
        let lastElement = arr[arr.count - 1]
        arr.remove(at: arr.count - 1)
        return lastElement
        // return arr.remove(at: arr.count - 1)
    }
    
    func push(newElement: element) {
        arr.append(newElement)
    }
    
    func peek() -> element? {
        guard arr.count != 0 else {
            return nil
        }
//        return arr[arr.count - 1]
        return arr.last
    }
    
    func isEmpty() -> Bool {
       // return arr.isEmpty
=======
var str = "Hello, playground"
class StackWithArr<T> {
    private var arr = Array<T>()
    
    func pop() -> T? {
        //      return arr.popLast()
        guard arr.count != 0 else {
            return nil
        }
        return arr.remove(at: arr.count-1)
    }
    
    func push(newElement: T) {
        arr.append(newElement)
    }
    
    func peek() -> T? {
        guard arr.count != 0 else {
            return nil
        }
        return arr[arr.count-1]
    }
    
    func isEmpty() -> Bool {
        //return arr.isEmpty
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
        return arr.count == 0
    }
}

<<<<<<< HEAD
//let myStack = StackWithArr<Int>()
//myStack.push(newElement: 9)
//myStack.push(newElement: 39)
//print(myStack.peek())
//myStack.pop()
//print(myStack.peek())
//print(myStack.isEmpty())

=======
let myStack = StackWithArr<Int>()
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

class StackWithLL<T> {
    private var list = LinkedList<T>()
<<<<<<< HEAD
    
    //pop
=======
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
    func pop() -> T? {
        let oldHead = list.head.key
        if let next = list.head.next {
            list.head = next
        } else {
            list.head = Node<T>()
        }
        return oldHead
    }
<<<<<<< HEAD
    /* func pop() -> T? {
        let oldHead = list.head.key
            if let next = list.head.next {
        list.head = next
     } else {
        list.head = Notde<T>()
     } 
        return oldHead
     } */
    
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
<<<<<<< HEAD
    /*
     func push(newElement: T) {
     guard list.head.key != nil else {
     } return list.head.key = newElement
     } let newNode = Node<T>()
     newNode = Node<T>
 */
    //peek
=======
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
    func peek() -> T? {
        return list.head.key
    }
    func isEmpty() -> Bool {
        return list.head.key == nil
    }

<<<<<<< HEAD
    
    let myStackLL = StackWithLL<Int>()
//    print("Sack with LL output")
//    myStackLL.push(newElement: 9)
//    myStackLL.push(newElement: 39)
//    print(myStackLL.peek())
//    myStackLL.pop()
//    myStackLL.peek()
//    myStackLL.isEmpty()
//    
//    var myArr = [2,3,5,1]
//    myArr.insert(9, at: 4 )
//    print(myArr)
    
    func getMax<T: Comparable>(stack: Stack<T>) -> T {
        var max = stack.pop()!
        if stack.pop()! > max {}
    }
}
=======
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
>>>>>>> 6a76c2fbc84133a6804ddd9c810e352983aa6ff5
