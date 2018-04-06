# Pattern Match Solution

## Swift

```swift
func match(pattern: String, str: String) -> Bool {
    let words = str.components(separatedBy: " ")
    let patternChars = pattern.map{$0}
    var dict = [Character: String]()
    guard patternChars.count == words.count else { return false }
    for index in 0..<words.count {
        let patternChar = patternChars[index]
        let word = words[index]
        if let patternWord = dict[patternChar] {
            if word != patternWord { return false }
        } else {
            dict[patternChar] = word
        }        
    }
    return true
}
```
