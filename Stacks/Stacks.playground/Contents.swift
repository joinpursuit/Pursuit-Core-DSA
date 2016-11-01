//: Playground - noun: a place where people can play

/*
class StackWithArr<T> {
    private var arr = Array<T>()
    
    func pop() -> T? {
       // return arr.popLast()
        guard arr.count != 0 else {
            return nil
        }
        let last = arr[arr.count - 1]
        arr.remove(at: arr.count - 1)
        return last
    }
    
    func push(newElement: T) {
        arr.append(newElement)
    }
    
    func peek() -> T? {
        guard  arr.count != 0 else {
            return nil
        }
        return arr[arr.count-1]
        
    }
    
    func isEmpty() -> Bool {
        return arr.isEmpty
    }
}

let myStack = StackWithArr<Int>()
myStack.push(newElement: 67)
myStack.push(newElement: 87)
print(myStack.peek())
print(myStack.pop())
*/


class Node<T> {
    var key: T!
    var next: Node?
}

class LinkedList<T> {
    var head = Node<T>()
}

// H -> 2 -> 3
// new -> H -> 2 -> 3


class StackWithLL<T> {
    private var list = LinkedList<T>()
    //pop
//    func pop() -> T? {
//        guard list.head.next != nil else {
//            list.head.key = nil
//            return nil
//        }
//        let oldKey = list.head.key
//        list.head = list.head.next!
//        return oldKey
//    }
    
    func pop() -> T? {
        let oldHead = list.head.key
        if let next = list.head.next {
            list.head = next
        } else {
            list.head = Node<T>()
        }
        return oldHead
    }
    
    //push
//    func push(element: T) {
//        if list.head.key == nil {
//            list.head.key = element
//            return
//        }
//        let newNode = Node<T>()
//        newNode.key = element
//        newNode.next = list.head
//        list.head = newNode
//    }
    
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
    
    //peek
    func peek() -> T? {
        return list.head.key
    }
    
    //isEmpty
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
}

let myStackLL = StackWithLL<Int>()

let myStack = StackWithLL<Int>()
myStack.push(newElement: 67)
myStack.push(newElement: 87)
print(myStack.peek())
print(myStack.pop())
