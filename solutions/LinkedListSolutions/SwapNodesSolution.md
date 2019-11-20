# Swap Nodes Solution

### Swift (Credit to Diego)

```swift
class Node<T> {
    var key: T
    var next: Node<T>?
    init(key: T) {
        self.key = key
    }
}

struct LinkedList<T> {
    var head: Node<T>?

    init(head: Node<T>) {
        self.head = head
    }

    func printOut() {
        var str = ""
        var currentNode = self.head
        while currentNode != nil {
            str += "\(currentNode!.key) --> "
            currentNode = currentNode!.next
        }
        str += "nil"
        print(str)
    }
    mutating func reverseInGroups(node: Node<T>? = nil, previousTail: Node<T>? = nil, groupedBy num: Int = 2, isFirst: Bool = true) {
        var current = node ?? head
        let prevTail = current
        var prev: Node<T>?
        var next: Node<T>?

        var count = 0

        while current != nil && count < num {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
            count += 1
        }
        previousTail?.next = prev
        if next != nil {
            self.reverseInGroups(node: next, previousTail: prevTail, groupedBy: num, isFirst: false)
        }
        if isFirst {self.head = prev}
    }
}

```

[JavaScript](http://www.oyewiki.com/tech/linked-list-node-swapping-implementation-in-javascript)
