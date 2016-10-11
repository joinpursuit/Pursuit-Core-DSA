##Big O Notation

**Big O Notation** is a way of measuring how performance of an algorithm relative to how many items you give it as input.  

We measure two types of performance with Big O Notation:

- **Time Complexity**: How long does it take an algorithm to run when given *n* elements as input?

- **Space Complexity**: How much memory does an algorithm need when given *n* elements as input?

We usally talk much more about time complexity.

##Common Time Complexities of Algorithms

|Big O Runtime|Name|Example|
|---|---|---|
|O(1) | Constant | Print a string |
|O(n) | Linear | Print every string in an array of count *n* |
|O(n<sup>2</sup>) | Quadratic | Print every character of every string in an array of count *n* (Assume that every string is also of length n) |


##Other Runtimes
**Note**: log(n) means log<sub>2</sub>(n)

|Big O Runtime|Name|Example|
|---|---|---|
|O( log(n) )| Logarithmic | Binary Search |
|O(n * log(n)) | Linearithmic | Merge Sort/Quick Sort |
|O(2<sup>n</sup>) | Exponential | Recursive Fibonacci |
|O(n!) | Factorial | Generate all the permutations of a list |

##Ranking and Visualizing Big O Runtimes
From fastest to slowest:
O(1), O(log(n)), O(n), O(nlog(n)), O(n<sup>2</sup>), O(2<sup>n</sup>), O(n!)

Visualization: 
![From Big O Cheat Sheet](https://github.com/C4Q/AC-DSA/blob/master/Big_O/images/BigOCheatSheet.png)

##Other


The O in *Big O Notation* stands for "Order" because we care most about the "Biggest Order" that appears.  