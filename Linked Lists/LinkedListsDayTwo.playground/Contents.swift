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

<<<<<<< HEAD
class LinkedList<T: Equatable> {
    var head = Node<T>()
    
    func printAllKeys() {
        var currentNode: Node? = head
        while currentNode != nil {
            print(currentNode?.key)
            currentNode = currentNode?.next
        }
    }
    
    func append(_ element: T) {
        //Trivial check
        if head.key == nil {
            head.key = element
        } else {
            var currentNode = head
            while currentNode.next != nil {
                currentNode = currentNode.next!
            }
            let newNode = Node<T>()
            newNode.key = element
            currentNode.next = newNode
        }
    }
    var count: Int {
        if head.key == nil {
            return 0
        }
        var counter = 1
        var currentNode = head
        while currentNode.next != nil {
            counter += 1
            currentNode = currentNode.next!
=======

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
>>>>>>> 321c09273869ee2667f77230880a936df0b168f8
        }
        self.head = previousNode!
    }
    
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








//BAAAD, linear space and linear time
func swap(_ arr: [Int]) -> [Int] {
    if arr.count < 2 {
        return arr
    }
    var array = arr
    
    array.append(arr[0])
    
    array.remove(at: 0)
    
    array.insert(arr[arr.count - 1], at: 0)
    
    array.remove(at: arr.count - 1)
    
    return array
}

print(swap([1, 2, 3, 4, 6, 5]))


//linear space, but constant time
func swap2(arr: [Int]) -> [Int] {
    var newArr = arr
    newArr[0] = arr[arr.count - 1]
    newArr[newArr.count - 1] = arr[0]
    return newArr
}

print(swap2(arr: [1,2,3,4]))


//constant time and space
func swapConstant (arr: inout [Int]) -> [Int] {
    if arr.count < 2 {
        return arr
    }
    let temp = arr[0]
    arr[0] = arr[arr.count - 1]
    arr[arr.count - 1] = temp
    return arr
}

var arr = [1, 45, 2]
swapConstant(arr: &arr)




var list = LinkedList<Int>()

list.append(4)
list.append(5)
list.append(6)
list.printAllKeys()
list.reverse()
print()
list.printAllKeys()







