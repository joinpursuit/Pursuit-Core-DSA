# Pangram Solution

## Swift

```swift
func isPangram(str: String) -> Bool {
    let alphaSet = Set("abcdefghijklmnopqrstuvwxyz")
    return Set(str.lowercased().filter{alphaSet.contains($0)}).count == alphabet.count
}
```
