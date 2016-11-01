//: Playground - noun: a place where people can play

class StackWithArr<T> {
    private var arr = Array<T>()
    
    func pop() -> T?{
        guard arr.count != 0 else {return nil}
        return arr.remove(at: arr.count - 1)
//        return arr.popLast()
//        let last = arr[arr.count - 1]
//        arr.remove(at: arr.count-1)
//        return last
    }
    
    func push(newElement: T) {
        arr.append(newElement)
        //arr.insert(newElement, at: arr.count - 1)
    }
    
    func peek() -> T? {
        guard arr.count != 0 else {return nil}
        return arr[arr.count - 1]
        //return arr.last
    }
    
    func isEmpty() -> Bool {
        //return arr.isEmpty
        return arr.count == 0
    }
}

let myStack = StackWithArr<Int>()
print("Sack with arr output")
myStack.push(newElement: 9)
myStack.push(newElement: 39)
print(myStack.peek())
myStack.pop()
myStack.peek()
myStack.isEmpty()

class Node<T> {
    var key: T!
    var next: Node?
}

class LinkedList<T> {
    var head = Node<T>()
}

// H -> 2 -> 3
// new -> H -> 2 -> 3
class StackWithLL1<T>{
    private var list = LinkedList<T>()
    //get rid of the head and set the second element to the head
    func pop() -> T? {
        let oldHead = list.head.key
        if let next = list.head.next {
            list.head = next
        } else {
        list.head = Node<T>()
        }
        return oldHead
    }
    
    func push(newElement: T){
        //guard check statement, A.K.A make sure that..., if it is ....
        //guard let is optional binding
        guard list.head.key != nil else {
            list.head.key = newElement
            return
        }
        let newNode = Node<T>()
        newNode.key = newElement
        list.head = newNode
    }
    func peek() -> T?{
        return list.head.key
    }
    func isEmpty() -> Bool{
        return list.head.key == nil
    }
}

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
    func push(newElement: T) {
        if list.head.key == nil {
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
print("Sack with LL output")
myStackLL.push(newElement: 9)
myStackLL.push(newElement: 39)
print(myStackLL.peek())
myStackLL.pop()
myStackLL.peek()
myStackLL.isEmpty()

var myArr = [2,3,5,1]
myArr.insert(9, at: 4 )
print(myArr)

class Stack<T> {
    
    private var arr = Array<T>()
    
    func pop() -> T? {
        return arr.popLast()
    }
    
    func push(element: T) {
        arr.append(element)
    }
    
    func peek() -> T? {
        guard arr.count > 0 else {
            return nil
        }
        return arr[arr.count - 1]
    }
    
    func isEmpty() -> Bool {
        return arr.count == 0
    }
}

func largest(stack: Stack<Int>) -> Int {
    var largest = stack.peek()!
    while stack.peek() != nil {
        if stack.peek()! > largest {
            largest = stack.pop()!
        }
    }
    return largest
}
