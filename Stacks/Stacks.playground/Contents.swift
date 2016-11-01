//: Playground - noun: a place where people can play

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
        return arr.count == 0
    }
}

//let myStack = StackWithArr<Int>()
//myStack.push(newElement: 9)
//myStack.push(newElement: 39)
//print(myStack.peek())
//myStack.pop()
//print(myStack.peek())
//print(myStack.isEmpty())


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
    func pop() -> T? {
        guard list.head.next != nil else {
            list.head.key = nil
            return nil
        }
        let oldKey = list.head.key
        list.head = list.head.next!
        return oldKey
    }
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
            return
        }
        let newNode = Node<T>()
        newNode.key = element
        newNode.next = list.head
        list.head = newNode
    }
    /*
     func push(newElement: T) {
     guard list.head.key != nil else {
     } return list.head.key = newElement
     } let newNode = Node<T>()
     newNode = Node<T>
 */
    //peek
    func peek() -> T? {
        return list.head.key
    }
    
    //isEmpty
    func isEmpty() -> Bool {
        return list.head.key == nil
    }

    
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