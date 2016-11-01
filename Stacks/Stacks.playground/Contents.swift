import UIKit

var str = "Hello, playground"
class StackWithArr<T> {

  private var arr = Array<T>()
  
  func pop() -> T? {
//    return arr.popLast()
    guard arr.count != 0 else { return nil }
    return arr.remove(at: arr.count - 1)
  }
  
  func push(newElement: T) {
    arr.append(newElement)
  }
  
  func peek() -> T? {
    guard arr.count != 0 else { return nil }
    return arr.last
  }
  
  func isEmpty() -> Bool {
//    return arr.isEmpty
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

class Node<T> {
  var key: T!
  var next: Node?
}

class LinkedList<T> {
  var head = Node<T>()
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
print("Stack with LL output:")
myStackLL.push(element: 9)
myStackLL.push(element: 39)
print(myStackLL.peek())
myStackLL.pop()
print(myStackLL.peek())
print(myStackLL.isEmpty())
myStackLL.pop()
print(myStackLL.isEmpty())
myStackLL.pop()
