# Binary Search

## Goals
* Understand what is Binary Search
* Understand algorithm efficiency basics
* Write Binary Search in code

## Lesson

### What is Binary Search & why use it?

Let's say you had a phone book and you wanted to find someone's name. The person is "John Smith".

What do we know?
1. The phone book is alphabetically ordered by first name
2. The name starts with the letter "J"

If we follow a Linear Search algorithm we would start at the beginning of the book from "A" and keep turning the pages until we reach "J". But more naturally you will probably start searching from the middle of the book because "J" is closer to the middle.

This is a very common searching problem and we can do better than Linear Search with O(n) run time. Binary search accomplishes the same task with O(log n).

### Binary Search Conditions

There are two conditions that need to be met before binary search may be used:

1. The collection must be able to access index  in constant time: O(1)
2. The collection must be sorted

### Binary Search Logic

![](assets/search-31.png)

#### Step 1: Find the middle index
The first step is to find the middle index of the collection

#### Step 2: Check the element at the middle index
Check the element stored at the middle index. If it matches the value you’re looking for, you return the index. Otherwise, you’ll continue to Step 3

#### Step 3: Recursively call Binary Search
Is the number you are looking for GREATER or LESS than the number you're looking for?

If the value you’re searching for is less than the middle value, you search the left subset. If it is greater than the middle value, you search the right subset.

Each step effectively removes half of the comparisons you would otherwise need to perform.

### Binary Search Implementation

#### Step 1: Find the middle index

```javascript
// We know we want to pass in a sorted array
// and the value we want to search

const binarySearch = (arr, value) => {
  // Get Middle Index of the array
  const middle = Math.floor(arr.length/2);

}
```

First of all we create a function called 'binarySearch' and take in two parameters: arr and value. We will always need an array to check the middle of and compare it to the value. 

Finally we want to calculate the middle index for every time the array is passed.

#### Step 2: Check the element at the middle index

```javascript
const binarySearch = (arr, value) => {
  const middle = Math.floor(arr.length/2);

  // We want to compare the middle value with with the value we are looking for
  if (value === arr[middle]) {
    return middle;
  }
}
```

Our first comparison is to check if the value in the middle index is equal to what we are looking for. If it is, we then return the middle index.

#### Step 3: Check the element at the middle index

```javascript
const binarySearch = (arr, value) => {
  const middle = Math.floor(arr.length/2);

  // Divide the array into left and right halves
  const left = arr.slice(0, middle);
  const right = arr.slice(middle);

  if (value === arr[middle]) {
    return middle;
  }

  // If the value is smaller than middle value
  // Search Left
  else if (value < arr[mid]) {
    return binarySearch(left, value);
  }

  // If the value is greater than middle value
  // Search Right
  else {
    // We need to add middle to keep track
    // of how many elements offset from the left
    return middle + binarySearch(right, value);
  }
}
```

If our middle value does not match then we move on to checking the left or right side of the array. If we check the right side of the array, we need to keep track of the middle index offset to get the correct index value in the original array.

#### Step 4: Base Case or Fail Case

```javascript
const binarySearch = (arr, value) => {
  console.log("Searching: "+arr);
  // Base case
  // If the array ends up with no elements
  // Or if the last element is smaller than the value 
  if (arr.length <= 0 || value > arr[arr.length - 1]) {
    return -1;
  }

  const middle = Math.floor(arr.length/2);
  const left = arr.slice(0, middle);
  const right = arr.slice(middle);

  if (value === arr[middle]) {
    return middle;
  }
  else if (value < arr[middle]) {
    return binarySearch(left, value);
  }
  else {
    return middle + binarySearch(right, value);
  }
}
```

Finally, we need a fail case. We want to return -1 if the value does not exist in the array. We check if the array length ends up being zero or if the value is greater than the value of the last element in the array. 

### Binary Search Iteratively

Think you can solve Binary Search iteratively? Give it a shot.

<details>
<summary>SOLUTION: Binary Search Iteratively</summary>

```javascript
function binarySearch (list, value) {
  // initial values for start, middle and end
  let start = 0;
  let stop = list.length - 1;
  let middle = Math.floor((start + stop) / 2);

  // While the middle is not what we're looking for and the list does not have a single item
  while (list[middle] !== value && start < stop) {
    if (value < list[middle]) {
      stop = middle - 1;
    } else {
      start = middle + 1;
    }

    // recalculate middle on every iteration
    middle = Math.floor((start + stop) / 2);
  }

  // if the current middle item is what we're looking for return it's index, else return -1
  return (list[middle] !== value) ? -1 : middle;
}
```</details>


