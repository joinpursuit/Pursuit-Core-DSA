# Valid Parentheses Solution

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

extension Character {
    func isClosed(by c: Character) -> Bool {
        switch self {
        case "(":
            return c == ")"
        case "{":
            return c == "}"
        case "[":
            return c == "]"
        default:
            return false
        }
    }
}

func isBalanced(str: String) -> Bool {
    var stack = Stack<Character>()
    let openingChars = "([{"
    for char in str {
        if openingChars.contains(char) {
            stack.push(char)
        } else {
            guard let topChar = stack.pop() else { return false }
            if !topChar.isClosed(by: char) { return false }
        }
    }
    return stack.isEmpty
}
```