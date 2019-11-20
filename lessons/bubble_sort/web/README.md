# Sorting Algorithms
## Bubble Sort: Intro to Sorting

## Goals
* Understand why sorting is useful
* Understand the basics of sorting
* Write Bubble Sort in code

## Lesson

## What is sorting and why is it useful?
Sorting is one of the most commonly used algorithms in the real world. Many tasks just become easier to do if the data is sorted. 

**Challenge #1** 
Given the following array of numbers find the lowest value:
```javascript
let numbers = [ 4 , 1, 7, 9, 0, 55, 2 ];
```
<details>
    <summary>Solution to Challenge #1</summary>

    let numbers = [ 4 , 1, 7, 9, 0, 55, 2 ];

    function lowestVal(arr) {
        let lowest = arr[0];
        for (let i = 1; i < arr.length; i++) {
            if (lowest > arr[i]) {
                lowest = arr[i];
            }
        }
        return lowest;
    }

    lowestVal(numbers); // Returns 0
</details>

<details>
    <summary>Time Complexity?</summary>
    O(n)
</details>

Now what if we had the array already sorted?
```javascript
let numbersSorted = [ 0, 2, 1, 4, 7, 9, 55 ];

let lowest = numbersSorted[0]; // 0
let thirdLowest = numbersSorted[2]; // 1
```
Time complexity: O(1)

## Real world examples of Sorting
- Organizing customers on Amazon based on the most purchases
- Getting the best player in the NBA based on various stats (Points, Assists)

## Sorting Algorithms

There are many ways to sort through a set of data. That is why we call these "algorithms". 
> Algorithm: An algorithm is a set of instructions designed to perform a specific task. 

There are many creative ways computer scientists went onto solving sorting problems. Today we will be discussing two:
- Bubble Sort
- Merge Sort

|Algorithm| Average Time Complexity |
|--|--|
| Selection Sort | O(n^2) |
| Insertion Sort | O(n^2) |
| Bubble Sort | O(n^2) |
| Merge Sort | O(n Log(n)) |
| Quick Sort | O(n Log(n)) |

Sorting algorithms can be very complicated to wrap your head around, but if you can break down the fundemental problems it can be easy. 

It's important to understand very basic algorithms to be able to code more complex ones. 

## Simple Algorithms Practice 1

**Challenge #2**

Loop through an array from end to beginning. Basically in reverse.
<details>
    <summary>Solution to Challenge #2</summary>

```javascript
let numbers = [ 4 , 1, 7, 9, 0, 55, 2 ];

function loopReverse(arr) {
    for (let i = arr.length - 1; i >= 0; i--) {
        console.log(arr[i]);
    }
}

loopReverse(numbers); 
```

</details>

**Challenge #3**

Make a function that swaps two elements in an array.
<details>
    <summary>Solution to Challenge #3</summary>

```javascript
let numbers = [ 4 , 1, 7, 9, 0, 55, 2 ];

function swap(arr, i, j) {
    let temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}

swap(numbers, 0, 3); 
console.log(numbers);
```

</details>

## Bubble Sort
Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in wrong order.

![Bubble Sort](https://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif)

**Steps to solve this problem:**
1. Understand how many cycles the algorithm will need to go through.
    - You will most likely have an outer loop starting at the end of the array.
    - This will help you keep track of where to stop during each cycle. 
2. Understand how to loop through the array for each iteration.
    - You will most likely have an inner loop starting at the beginning of the array.
    - This will go through the array and compare two consecutive indexes
    - This will stop before hitting where the last cycle left off
3. Understand that every iteration you will be comparing the current and next indexes. 
    - If the left index is greater than the right index then swap. 
    - Else don't do any swapping 

**Bubble Sort Step 1**
```javascript
function bubbleSort(arr) {
    // Understand how many cycles the algorithm will need to go through.
    for (var i = arr.length - 1; i >= 0; i--) {

    }
}
```

**Bubble Sort Step 2**
```javascript
function bubbleSort(arr) {
    // Understand how many cycles the algorithm will need to go through.
    for (var i = arr.length - 1; i >= 0; i--) {
        // Understand how to loop through the array for each iteration.
        for(var j = 1; j <= i; j++) {

        }
    }
}
```

**Bubble Sort Step 3**
```javascript
function bubbleSort(arr) {
    // Understand how many cycles the algorithm will need to go through.
    for (var i = arr.length - 1; i >= 0; i--) {
        // Understand how to loop through the array for each iteration.
        for(var j = 1; j <= i; j++) {
            // Understand that every iteration you will be comparing the current and next indexes.
            if(arr[j-1] > arr[j]) {
                // SWAP
                var temp = arr[j-1];
                arr[j-1] = arr[j];
                arr[j] = temp;
            }
        }
    }
    return arr;
}
```

Bubble sort is a simple algorithm to program but it's very slow with a O(n^2) time complexity. 

