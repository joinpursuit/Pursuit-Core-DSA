# Remove Vowels Solution

## Swift

```swift
func removeVowels(from str: String) -> String {
    let vowels = "aeiouy"
    return str.lowercased().filter{!vowels.contains($0)}
}
```