#Sorting

###What we know so far

```swift
let myArr = [6,21,3,100]
let myArrSmallestToBiggest = myArr.sorted(by: <)
let myArrBiggestToSmallest = myArr.sorted(by: >)
```

###But how does it actually work?

There are two main types of sorting algorithms.  

- Algorithms that work in O(n * log(n)) time.

- Algorithms that work in O(n<sup>2</sup>) time

*Remember that in computer science, log(n) = log<sub>2</sub>(n)

We will begin by reviewing two common O(n<sup>2</sup>) algorithms because they are easier to understand.

|Sorting function|Runtime|
|---|---|
|Insertion Sort| O(n<sup>2</sup>)
|Bubble Sort| O(n<sup>2</sup>)
|Merge Sort| O(nlog(n))
|Quicksort | O(nlog(n))

##Insertion Sort

###Resources:
- [Khan Academy](https://www.khanacademy.org/computing/computer-science/algorithms/insertion-sort/a/insertion-sort)
- [Wikipedia](https://en.wikipedia.org/wiki/Insertion_sort)
- [Swift Algorithm Club](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Insertion%20Sort)

Insertion sort is a fairly intuitive algorithm for sorting a list.

Let's see what it looks like:

[![Insertion Sort](http://img.youtube.com/vi/8oJS1BMKE64/0.jpg)](https://www.youtube.com/watch?v=8oJS1BMKE64 "Insertion Sort")

Looks cool!  What does it do?

In plain English, we keep a sorted list on the left and everything else on the right.  We then iterate through the array, and everytime we hit an element, we move it to where it fits in the sorted part on the left.

We could also use a new array.  In that case, we will append every element in turn to a new array, then move it to the correct position.

Here's a step by step process for how that would work:

- Create a new array called sortedArr
- Iterate through the input array
- For every element:
  - Append that element to sortedArr
  - For every index starting from the last index in sortedArr:
     
     - Check to see if the value at that index is greater than the one directly to the left.
     - If it is, swap with it.  Otherwise break out of this loop and look at 

     
##Bubble Sort

In video form

[![Bubble Sort](http://img.youtube.com/vi/nBBMunN4_Fs/0.jpg)](https://www.youtube.com/watch?v=nBBMunN4_Fs "Insertion Sort")

What buble sort does is look at at each pair of numbers.  If they are ordered correctly, we keep them in the same order.  Otherwise, we swap them.  Then, we keep going until the array is sorted.

Live coding:
