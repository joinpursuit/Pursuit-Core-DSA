## Insertion Sort

### Resources
* [visualgo - Insertion Sort](https://visualgo.net/en/sorting?slide=8)
* [Khan Academy - Insertion Sort](https://www.khanacademy.org/computing/computer-science/algorithms/insertion-sort/a/insertion-sort)
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

## Insertion Sort Implementation

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
