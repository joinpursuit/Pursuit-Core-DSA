const merge = (left, right) => {
  // Understand that you will need two pointers to compare each array
  let leftIndex = 0;
  let rightIndex = 0;

  // We need to store the values from least to greatest in an array and return it
  let result = [];


  // We need to loop through both left and right at the same time 
  while (leftIndex < left.length && rightIndex < right.length) {

    // Compare values at both pointers/indices and push the smaller value to the result array
    if (left[leftIndex] < right[rightIndex]) {
      result.push(left[leftIndex])
      leftIndex++;
    } else {
      result.push(right[rightIndex])
      rightIndex++;
    }
  }

  // Add any leftovers to the result array    
  return result.concat(left.slice(leftIndex)).concat(right.slice(rightIndex));
}

const mergeSort = (arr) => {
  // Satisfy the base case, when can you not break an array in half anymore?
  if (arr.length < 2) return arr;


  // Mid point of the array and halves
  let middle = Math.floor(arr.length / 2)
  let left = arr.slice(0, middle)
  let right = arr.slice(middle)

  // Return the MERGED VALUE && Recursive case
  return merge(mergeSort(left), mergeSort(right))
}

const arr = [9, 7, 6, 5, 2, 1, 0]
console.log(mergeSort(arr))
