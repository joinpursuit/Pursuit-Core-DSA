# Palindrome Solution

## Swift

```swift
import Foundation

//No Restrictions                                                                                                                                                                    
func isPalindrome(str: String) -> Bool {
    return str == String(str.reversed())
}

//Ignore case and special chars                                                                                                                                                      
func isPalindrome2(str: String) -> Bool {
    let alphanumericsFilter: (String.Element) -> Bool = {CharacterSet.alphanumerics.contains($0.unicodeScalars.first!)}
    return str.lowercased().filter(alphanumericsFilter) == str.lowercased().filter(alphanumericsFilter).reversed()
}

//Ignore case and special chars, no library reverse                                                                                                                                  
func isPalindrome3(str: String) -> Bool {
    let alphanumericsFilter: (String.Element) -> Bool = {CharacterSet.alphanumerics.contains($0.unicodeScalars.first!)}
    let filteredStr = str.lowercased().filter(alphanumericsFilter)
    var reversedStr = ""
    for i in 0..<filteredStr.count {
        reversedStr += String(filteredStr[filteredStr.index(filteredStr.startIndex, offsetBy: filteredStr.count - 1 - i)])
    }
    return filteredStr == reversedStr
}

//Recursive - don't ignore case and special chars                                                                                                                                    
func isPalindrome4(str: String) -> Bool {
    if str.count == 0 || str.count == 1 { return true }
    //Apologies for Swift string syntax                                                                                                                                              
    return str[str.startIndex] == str[str.index(before: str.endIndex)] && isPalindrome4(str: String(str[str.index(after: str.startIndex)..<str.index(before: str.endIndex)]))
}
```