# Largest Element Solution

## Swift

```swift
struct Stack<T> {
    mutating func push(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
    var isEmpty: Bool {
        return arr.count == 0
    }
    private var arr: [T] = []
}

func largestElement<T: Comparable>(in stack: Stack<T>) -> T? {
    guard !stack.isEmpty else { return nil }
    var stack = stack
    var largestElementSoFar = stack.pop()!
    while !stack.isEmpty {
        let currentElement = stack.pop()!
        if currentElement > largestElementSoFar {
            largestElementSoFar = currentElement
        }
    }
    return largestElementSoFar
}
```