# Keypad

## Swift

Credit to [Izza](https://github.com/IzzaNadeem)

```swift
func phoneWords(numbers:[Int], letterMap: [Int : [String]]) -> [String] {
    print(numbers)
    var numbersCopy = numbers
    //base case
    if numbers.count == 1 {
        return letterMap[numbers.first!]!
    }
    let lettersToAdd = letterMap[numbersCopy.first!]
    numbersCopy.removeFirst()
    let smallerWords = phoneWords(numbers: numbersCopy, letterMap: letterMap)
    var words = [String]()
    for word in smallerWords {
        for letter in lettersToAdd! {
            words.append(letter + word)
        }
    }
  return words
}
```