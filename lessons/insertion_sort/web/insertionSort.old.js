// O(n) space
const insertionSort = (arr) => {
  let sortedArr = []
  for (let element of arr) {
    sortedArr = addElement(element, sortedArr)
  }
  return sortedArr
}

const addElement = (element, sortedArr) => {
  console.log(element, sortedArr)
  // if (sortedArr.length === 0) sortedArr.push(element)
  let len = sortedArr.length
  for (let i = 0; i < len; i++) {
    const sortedElement = sortedArr[i]
    if (element < sortedElement) {
      console.log(`${element} goes to i: ${i}`)
      sortedArr.splice(i, 0, element) // Insert element at index i
    }
  }
  sortedArr.push(element)
  return sortedArr;
}

const arr = [2, 5, 7, 1, 6, 9, 0, 3]
console.log(insertionSort(arr))

// O(1) space

// func insertionSort<T>(arr: inout [T], by isSorted: (T, T) -> Bool) -> [T] {
//   for indexOne in 1..<arr.count {
//       var indexTwo = indexOne
//       while indexTwo > 0 && isSorted(arr[indexTwo], arr[indexTwo - 1]) {
//           arr.swapAt(indexTwo - 1, indexTwo)
//           indexTwo -= 1
//       }
//   }
//   return arr
// }
