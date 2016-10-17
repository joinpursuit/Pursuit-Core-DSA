# Arrays 
----

Resource Links:
1. [Interactive Demo of Array Traversing & Other - UWaterloo](http://cscircles.cemc.uwaterloo.ca/13-lists/)
2. [Array Data Structure - Wikipedia](https://en.wikipedia.org/wiki/Array_data_structure)
3. [Array Data Type - Wikipedia](https://en.wikipedia.org/wiki/Array_data_type)
4. [Introduction to Data Structures - mycodeschool via Youtube](https://www.youtube.com/watch?v=92S4zgXN17o&list=PL2_aWCzGMAwI3W_JlcBbtYTwiQSsOTa6P)
5. [Data Structures: List as Abstract Data Type - mycodeschool via Youtube ](https://www.youtube.com/watch?v=HdFG8L1sajw&list=PL2_aWCzGMAwI3W_JlcBbtYTwiQSsOTa6P&index=2)
6. [Data Structures: Arrays v. Linked Lists](https://www.youtube.com/watch?v=lC-yYCOnN8Q&list=PL2_aWCzGMAwI3W_JlcBbtYTwiQSsOTa6P&index=4)


# Core Concepts

**1. Ordered**
Elements in an array have a definite order.

**2. One Dimensional**
The items are arranged in a one-dimensional sequence

**3. Indexed**
Elements in an array are indexed using zero-based indexing. This means that the first element in an array has the `index` of `0`, while the last element has an `index` of `array.length - 1`

**4. Fixed Size**
Arrays are stored in one contiguous block of memory. This means that elements are kept right next to each other in memory, in terms of their memory addresses. Finding an element of an array is possible by knowing (ahead of time) the size of each element and the address of any element in the array. 

For example, if we know that:

1. The size of each element in an array is `4KB`
2. The memory address of where the array is stored
3. We want the 6th element in the array

We can infer `array[6] = (4KB * 6) + (Memory Address of array[0])`

**5. Mutability**
Individual elements of an array can be _mutated_ (in other words, _changed_). However, the size of an array cannot. This is due to the fixed size concept: when you add new elements to an array, your computer is actually finding a new block of memory that has enough space to store the updated contents of the array. 

**6. Homogeneous **
An array holds only one kind of (reference or value) type that is defined when the array is created. 


# Mutability and Fixed Sizes in Practice
(written using swift)

We are going to explore the interaction between fixed sizes, indexing, and mutability using Swift

1. Given an array of String
```swift
var stringArray: [String] = ["this", "is", "a", "test"]
```

2. We are able to locate where in memory the array is stored, using `withUnsafePointer`
```swift
withUnsafePointer(to: &stringArray) { p in

  print("Element: \(stringArray),   Address: \(p))")
  // prints: Element: ["this", "is", "a", "test"],   Address: 0x000000010fc75c10)
  
  print(p.pointee)
  // prints: ["this", "is", "a", "test"]
}
```

3. We can also find the size (in bytes) of an element of an array
```swift
let sizeOfString = MemoryLayout.size(ofValue: stringArray[0]) // size in bytes
print(sizeOfString)
// prints: 24 
```

3. The memory address for the array can differ from the contiguous memory allocated for the contents of the array:
```swift
withUnsafePointer(to: &stringArray[0]) { p in

  print("Element: \(stringArray[0]),   Address: \(p)")
  //prints: Element: this,   Address: 0x00006080000f8ea0)
}
```

4. But what is for certain, is that there will be congruous 24 byte blocks from the first element of that array. And we can verify this in two ways.

** Code **
```swift
withUnsafePointer(to: &stringArray[0]) { p in
  
  // p in this closure is of type UnsafePointer and refers to the memory address of the object passed to the function
  print(p)                 // prints: 0x00006100000e1820
  
  // the advance(by:) function allows you to move forward in a sequence by n places
  print(p.advanced(by: 1)) // prints: 0x00006100000e1838
  print(p.advanced(by: 2)) // prints: 0x00006100000e1850
  print(p.advanced(by: 3)) // prints: 0x00006100000e1868
  
  // the .pointee propery of UnsafePointer returns the value at a memory address
  print(p.pointee)                 // prints: "this"
  print(p.advanced(by: 1).pointee) // prints: "is"
  print(p.advanced(by: 2).pointee) // prints: "a"
  print(p.advanced(by: 3).pointee) // prints: "test"
}
```

** Hex Math **

| index | element |address | significant | difference (10) | distance |
|---|---|---|---|---|---|---|
| 0 | "this" | 0x00006100000e1820 | 0x20 | ((16^1) * 2) + (16^0 * 0) = 32 | - |
| 1 | "is" | 0x00006100000e1838 | 0x38 |  ((16^1) * 3) + (16^0 * 8) = 56 | 24 bytes |
| 2 | "a" | 0x00006100000e1850 | 0x50 |  ((16^1) * 5) + (16^0 * 0) = 80 | 24 bytes |
| 3 | "test" | 0x00006100000e1868 | 0x68 |  ((16^1) * 6) + (16^0 * 8) = 104 | 24 bytes |


5. Though, because the array has a fixed size, inserting an element is going to result in the array being recreated elsewhere in memory with enough contiguous space for the additional element. 

6. What remains unchanged, however, is the address of the reference to the array. That reference will be updated to the new location of the first element in the updated array, however. 


# Performance 

An array is stored as a contiguous block of memory, which determines its performance for specific actions:

1. Accessing an Element: O(1)
  - Since we know know where the block of memory is and the size of the array is fixed, getting the element at an index is a matter of multiplying the size of the type of the element by the index, and adding that to the memory address of the array.
2. Inserting an Element at beginning: O(n)
  - This requires shifting all other elements, hence O(n)
3. Inserting an Element at end
  - If array is full: O(n) (array needs to be copied in its entirety to a new block of memory)
  - If array is not full: O(1)
  

# Multi-Dimensional Arrays
An array on its own as a data structure, is one dimensional. However, arrays can contain any reference or value type.. like other arrays. An array who's elements are arrays, are called multi-dimensional arrays. 

** Common Multi-Dimensional Arrays **
1. Two-Dimensional
  1. Game boards (Chess, Checkers, Bingo, Sudoku, etc.) 
  2. Maps (Coordinate systems using Lat. & Long.)
  3. Images (Describing the x- and y-position of a point in the image)
  4. Spreadsheets (Uses row/col system)
5. Three-Dimensional
  6. 3D Animations and Games (a single point in 3D space has an x-, y-, and z-position)
  7. Virtual Reality
8. Multi-Dimensional
  9. Mostly advanced mathematics and physics
  

# Quick Exercises

** Two Dimensional Array Iterrations **
Iterate through a two dimensional array of integers And print out all the elements starting with the first row and ending with the last row.:

```swift 
let inputArray: [[Int]] = [
  [1, 2, 3, 4, 5],
  [6, 7, 8, 9, 10],
  [11, 12, 13, 14, 15],
  [16, 17, 18, 19, 20]
]
```

How would the code be different if:

1. You started with the first column and ended with the last column?
2. You excluded the first row and excluded the last column?
3. You print only the diagonal? How about exclude the diagonal?
4. You print only the items on the border?

** Sudoku **

Rules: The is a 9x9 gird where the objective is to place the numbers 1 to 9 in the empty squares so that each _row_, each _column_ and each _3x3 box_ contains the same number only once.