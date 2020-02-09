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

let arr = [7, 5, 1, 8, 2]
console.log(insertionSort(arr))

