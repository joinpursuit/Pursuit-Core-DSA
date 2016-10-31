//: Playground - noun: a place where people can play

class StackWithArr<T> {
    private var arr = Array<T>()
    
    func pop() -> T? {
        //return arr.popLast()
        guard arr.count != 0 else { return nil } //check if there's something in array/stack
        
       return arr.remove(at: arr.count-1)
       
    }
    
    func push(newElement: T) {
        arr.append(newElement) //don't need to use self?
        //arr[arr.count] = newElement //cant use count bc a "true stack" doesn't know how big it is?
        
        
    }
    
    func peek() -> T? {
        return arr[arr.count]
    }
    
    func isEmpty() -> Bool {
        return arr.isEmpty
        //return arr.count == 0
    }
}

let myStack = StackWithArr<Int>()
myStack.push(newElement: 9)
myStack.push(newElement: 39)
myStack.pop()
//tbese will return optionals



// making stacks with linked lists'

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
    func pop() -> T? { //popping something from the beginning bc constant time??
        guard list.head.next != nil else {
            list.head.key = nil
            return nil
        }
        let oldKey = list.head.key
        list.head = list.head.next!
        return oldKey
    }
    //push --> this is changed for linked lists? easier to put in the beginning??
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
    func isEmpty() -> Bool {
        return list.head.key == nil
    }
}

let myStackLL = StackWithLL<Int>()
myStackLL.isEmpty()
myStackLL.peek()
