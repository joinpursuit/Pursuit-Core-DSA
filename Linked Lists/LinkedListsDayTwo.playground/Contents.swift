//: Playground - noun: a place where people can play

func swapConstant(arr: [Int]) -> [Int] {
    guard  arr.count > 0  else { return arr }
    var array = arr
    let temp = arr[0]
    array[0] = arr[arr.count - 1]
    array[arr.count - 1] = temp
    return arr
}
var arr = [1,45,2]
swapConstant(arr: arr)

class Node<T> {
    var key: T!
    var next: Node?
}


class LinkedList<T> {
    var head = Node<T>()
    func reverse() {
        var previousNode: Node<T>? = nil
        var currentNode: Node<T>? = head
        while currentNode != nil {
            
            let temp = currentNode!.next
            currentNode!.next = previousNode
            previousNode = currentNode
            currentNode = temp
        }
        self.head = previousNode!
    }
}



