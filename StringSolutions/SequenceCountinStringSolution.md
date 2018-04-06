# Sequence Count in String Solution


## Swift

```swift

struct CharSequence {
    var char: Character
    var occurrences: Int
}

func sequenceCount(from str: String) -> String {
    var sequenceArr = [CharSequence]()
    var currentCharSequence: CharSequence?
    for c in str {
        guard currentCharSequence != nil else { currentCharSequence = CharSequence(char: c, occurrences: 1); continue }
        if c == currentCharSequence!.char {
            currentCharSequence!.occurrences += 1
        } else {
            sequenceArr.append(currentCharSequence!)
            currentCharSequence = CharSequence(char: c, occurrences: 1)
        }
    }
    sequenceArr.append(currentCharSequence!)
    return sequenceArr
      .reduce(""){(currentStr, charSequence) in
          return currentStr + ", " + "\(charSequence.char)\(charSequence.occurrences)"
      }
      .trimmingCharacters(in: .punctuationCharacters)
      .trimmingCharacters(in: .whitespacesAndNewlines)
}
```