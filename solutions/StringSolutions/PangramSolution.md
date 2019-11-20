# Pangram Solution

## Swift

```swift
func isPangram(str: String) -> Bool {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    return Set(str.lowercased().filter{alphabet.contains($0)}).count == alphabet.count
}
```