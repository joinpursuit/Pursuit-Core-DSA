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
        }
        return counter
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

var arr2 = [1, 45, 2]
swapConstant(arr: &arr)



func mergeSortedLists<T: Comparable>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
    
    var currentNodeListOne: Node<T>? = listOne.head
    let currentNodeListTwo: Node<T>? = listTwo.head
    var previousNode: Node<T>? = nil
    
    while currentNodeListOne != nil {
        currentNodeListOne = currentNodeListOne!.next
        if currentNodeListOne?.next == nil {
            currentNodeListOne?.next = currentNodeListTwo
            currentNodeListOne? = listOne.head
        }
    }
    
    while currentNodeListOne != nil {
        let temp = currentNodeListOne!.next
        
        
        if let next = currentNodeListOne!.next, currentNodeListOne!.key > next.key {
            currentNodeListOne!.next = previousNode
            previousNode = currentNodeListOne
            currentNodeListOne = temp
        }
    }
    
    let mergedList = LinkedList<T>()
    mergedList.head = currentNodeListOne!
    
    while currentNodeListOne != nil {
        print(currentNodeListOne!.key)
    }
    
    return mergedList
}


var list = LinkedList<Int>()

list.append(4)
list.append(5)
list.append(6)
list.printAllKeys()
list.reverse()
print()
list.printAllKeys()







