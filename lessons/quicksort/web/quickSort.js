const quickSort = (arr) => {
  if (arr.length < 2) return arr //base case

  let middle = Math.floor(arr.length / 2)
  let pivot = arr[middle]
  let lessThanPivot = []
  let equalToPivot = []
  let greaterThanPivot = []

  for (let num of arr) {
    if (num < pivot) {
      lessThanPivot.push(num)
    } else if (num > pivot) {
      greaterThanPivot.push(num)
    } else {
      equalToPivot.push(num)
    }
  }
  console.log(arr, "with pivot:", pivot)
  console.log(`sort(${lessThanPivot}) + ${equalToPivot} + sort(${greaterThanPivot})`)

  // Concatenate the result of quick sorting lessThanPivot with equalToPivot with the result of quick sorting greaterThanPivot
  const result = quickSort(lessThanPivot).concat(equalToPivot).concat(quickSort(greaterThanPivot)) //recursive call

  console.log('result ->', result)
  console.log()
  return result
}

const arr = [2, 5, 7, 6, 9, 0, 1]
console.log(quickSort(arr))
