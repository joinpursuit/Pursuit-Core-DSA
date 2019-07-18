# Remove Vowels Solution

## Swift

```swift
func removeVowels(from str: String) -> String {
    let vowels = "aeiouy"
    return str.filter{!vowels.contains($0.lowercased())}
}
```
