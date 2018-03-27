# Reverse String Solution

## Swift

```swift
func reverse(str: String) -> String {
    var reversedStr = ""
    for i in 0..<str.count {
        reversedStr.append(str[str.index(str.startIndex, offsetBy: str.count - 1 - i)])
    }
    return reversedStr
}
```