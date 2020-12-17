# Merge Sort: Divide & Conquer

### Goals
* Understand how to improve sorting efficiency
* Understand what a Divide & Conquer algorithm is
* Write Merge Sort in code

### Resources
* [Khan Academy - Merge Sort](https://www.khanacademy.org/computing/computer-science/algorithms/merge-sort/a/divide-and-conquer-algorithms)
* [visualgo - Merge Sort](https://visualgo.net/en/sorting?slide=10)
* [w3resource - Merge Sort](https://www.w3resource.com/javascript-exercises/searching-and-sorting-algorithm/searching-and-sorting-algorithm-exercise-2.php)
* [Wikipedia - Merge Sort](https://en.wikipedia.org/wiki/Merge_sort)

## Merge Sort
We have done sorting with Bubble Sort previously. But there are ways to solve this problem in a more efficient manner Merge Sort is in average more efficient. 

Merge Sort is a Divide and Conquer algorithm. It divides input array in two halves, calls itself for the two halves and then merges the two sorted halves.

![Mergesort](https://upload.wikimedia.org/wikipedia/commons/c/cc/Merge-sort-example-300px.gif)

A typical Divide and Conquer algorithm solves a problem using following three steps.

1. Divide: Break the given problem into subproblems of same type.
2. Conquer: Recursively solve these subproblems
3. Combine: Correctly combine the answers

This image describes the steps a merge sort algorithm takes to solve the problem:

![Mergesort](https://www.geeksforgeeks.org/wp-content/uploads/Merge-Sort-Tutorial.png)

### Simple Algorithms Practice

**Challenge #1**

Write a basic Factorial recursive function. 

For example: 5! = 1 * 2 * 3 * 4 * 5 = 120
<details>
    <summary>Solution to Challenge #1</summary>

```javascript
function factorial(num) {
    // BASE CASE:
    if (num == 0) {
        return 1;
    }
    // RECURSIVE CASE:
    else {
        return num * factorialize(num - 1);
    }
}
factorial(5); 
```
</details>
<br/>

**Challenge #2**

Write function `halveArray` divides an array into halves and returns and object with two properties `left` and `right`.

For example: 
```js
let arr = [6, 5, 3, 1, 8, 7, 2, 4]
halveArray(arr) // => {
//                      left: [6, 5, 3, 1],
//                      right: [8, 7, 2, 4]
//                    } 

```
<details>
    <summary>Solution to Challenge #2</summary>

```javascript
const halveArray = (arr) => {
  if (arr.length < 2) return arr;

  // Mid point of the array and halves
  let middle = Math.floor(arr.length / 2)
  let left = arr.slice(0, middle)
  let right = arr.slice(middle)

  return {
      left: left,
      right: right
  }
}

```

</details>
<br/>

**Challenge #3**

Write a function `merge` that takes in two sorted arrays `a` and `b`, merge them in order and returns a new sorted array.

For Example
```js
let a = [1, 2, 3, 4]
let b = [5, 6, 7, 8]

merge(a, b) // => [1, 2, 3, 4, 5, 6, 7, 8]
```
<details>
    <summary>Solution to Challenge #3</summary>

```js
const merge = (left, right) => {
  // Understand that you will need two pointers/indices to compare each array
  let l = 0;
  let r = 0;

  // We need to store the values from least to greatest in an array and return it
  let result = [];


  // We need to loop through both left and right at the same time 
  while (l < left.length && r < right.length) {

    // Compare values at both pointers/indices and push the smaller value to the result array
    if (left[l] < right[r]) {
      result.push(left[l])
      l++;
    } else {
      result.push(right[r])
      r++;
    }
  }

  // Add any leftovers to the result array    
  while (l < left.length) {
    result.push(left[l])
    l++
  }

  while (r < right.length) {
    result.push(right[r])
    r++
  }

  return result
}
```

</details>


### Solving Merge Sort

**Steps to solve this problem:**
1. Understand that there are going to be TWO functions
    - One will be called mergeSort()
        - This is the recursive main function where you pass in the array you wish to sort
    - One will be called merge()
        - This is a regular function that takes in two arrays and sorts it

```javascript
function mergeSort(arr) {
    // Base case

    // Recursive case
    // Will call merge() in here
}

function merge(left, right) {
    // Will loop through the arrays and sort
}
```


2. mergeSort()
    - Satisfy the base case, when can you not break an array in half anymore?
    - Find the midpoint of the array
    - Call merge sort on the LEFT and RIGHT halves
    - Return the MERGED value 

```javascript
function mergeSort(arr) {

    // Satisfy the base case, when can you not break an array in half anymore?
    if (arr.length < 2) {
        return arr;
    }

    // Mid point of the array and halves
    let mid = Math.floor(arr.length/2);
    let left = arr.slice(0, mid);
    let right = arr.slice(mid);

    // Return the MERGED VALUE && Recursive case
    return merge(mergeSort(left), mergeSort(right));
}
```

3. merge()
    1. Understand that you will need two pointers to compare each array
        - Example: let l and let r
    2. We need to store the values from least to greatest in an array and return it
        - Example: let result = []; return result;
    3. We need to loop through both left and right at the same time 
        - Example: while(l < left.length && r < right.length)
    4. Compare both pointers and push the smaller value to the result array
        - Example: if (left[l] < right[r])
    5. Add any leftovers to the result array
        - Example: result.concat( left.slice(l) )

**Merge Step 1**
```javascript
function merge(left, right) {
    // Understand that you will need two pointers to compare each array
    let l = 0; 
    let r = 0;

}
```

**Merge Step 2**
```javascript
function merge(left, right) {
    // Understand that you will need two pointers to compare each array
    let l = 0; 
    let r = 0;
    // We need to store the values from least to greatest in an array and return it
    let result = [];


    return result;
}
```

**Merge Step 3**
```javascript
function merge(left, right) {
    // Understand that you will need two pointers to compare each array
    let l = 0; 
    let r = 0;
    // We need to store the values from least to greatest in an array and return it
    let result = [];
    // We need to loop through both left and right at the same time 
    while(l < left.length &&  r < right.length) {

    }
    
    return result;
}
```

**Merge Step 4**
```javascript
function merge(left, right) {
    // Understand that you will need two pointers to compare each array
    let l = 0; 
    let r = 0;
    // We need to store the values from least to greatest in an array and return it
    let result = [];
    // We need to loop through both left and right at the same time 
    while(l < left.length &&  r < right.length) {
        // Compare both pointers and push the smaller value to the result array
        if (left[l] < right[r]) {
            result.push(left[l]);
            l++;
        }
        else {
            result.push(right[r]);
            r++;
        }
    }
    
    return result;
}
```

**Merge Step 5**
```javascript
function merge(left, right) {
    // Understand that you will need two pointers to compare each array
    let l = 0; 
    let r = 0;
    // We need to store the values from least to greatest in an array and return it
    let result = [];
    // We need to loop through both left and right at the same time 
    while(l < left.length &&  r < right.length) {
        // Compare both pointers and push the smaller value to the result array
        if (left[l] < right[r]) {
            result.push(left[l]);
            l++;
        }
        else {
            result.push(right[r]);
            r++;
        }
    }

    // Add any leftovers to the result array    
    return result.concat(left.slice(l)).concat(right.slice(r));
}
```

Final version [here](./mergeSort.js)

