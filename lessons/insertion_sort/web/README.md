## Insertion Sort

### Resources
* [visualgo - Insertion Sort](https://visualgo.net/en/sorting?slide=8)
* [Khan Academy - Insertion Sort](https://www.khanacademy.org/computing/computer-science/algorithms/insertion-sort/a/insertion-sort)
* [w3resource Insertion Sort](https://www.w3resource.com/javascript-exercises/searching-and-sorting-algorithm/searching-and-sorting-algorithm-exercise-4.php)
* [Wikipedia](https://en.wikipedia.org/wiki/Insertion_sort)

### Pseudo code
The insertion sort algorithm works as follows:
```
mark first element as sorted

for each unsorted element X

  'extract' the element X

  for j = lastSortedIndex down to 0

    if current element j > X

      move sorted element to the right by 1

    break loop and insert X here
```

### Visualization
#### 1)
![insertion sort animation from wikipedia](https://upload.wikimedia.org/wikipedia/commons/0/0f/Insertion-sort-example-300px.gif)

#### 2)
![insertion sort ilustration by w3resources](https://www.w3resource.com/w3r_images/insertion-sort.png)

### Insertion Sort Implementation

```js
const insertionSort = (nums) => {
  for (let i = 1; i < nums.length; i++) {
    let j = i - 1
    let tmp = nums[i]
    while (j >= 0 && nums[j] > tmp) {
      nums[j + 1] = nums[j]
      j--
    }
    nums[j + 1] = tmp
  }
  return nums
}
```
