#Sorting Part Two

Resources:

1. [Ray Wenderlich Merge Sort](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Merge%20Sort)
2. [Ray Wenderlich Quicksort](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Quicksort)
3. [Wikipedia Merge Sort](https://en.wikipedia.org/wiki/Merge_sort)
4. [Wikipedia Quicksort](https://en.wikipedia.org/wiki/Quicksort)



So far, we've looked at sorts that take O(n<sup>2</sup>) time.  Those were:

- Insertion Sort
- Merge Sort

Both of the algorithms are helpful for learning how sorting works, but aren't actually used because they are too slow.

Today we will look at two recursive sorting algorithms and understand why they are faster.

##Merge Sort

[![Merge Sort](http://img.youtube.com/vi/ZRPoEKHXTJg/0.jpg)](https://www.youtube.com/watch?v=ZRPoEKHXTJg)


![](https://upload.wikimedia.org/wikipedia/commons/c/cc/Merge-sort-example-300px.gif)



Merge sort has a runtime of O(n * log(n))

Here's how it works:

1. If the array only has one element, return it
   
2. Call this function on the left side and the right side.  Set these calls equal to variables <i>left</i> and <i>right</i>

3. Merge <i>left</i> and <i>right</i> together (assuming that <i>left</i> and <i>right</i> are sorted) and return that array

This can be a little tricky, so let's go through some examples.

###Example One:

var arr1 = [3,1]

1. Skip this as there are two elements
2. This call will return [3] and [1]
3. Merge [3] and [1] to make [1,3] and return it


###Example Two:

var arr2 = [3,1,8,2]

1. Skip this as there are four elements
2. We set <i>left</i> equal to this function passing in [3,1] and <i>right</i> equal to this function passing in [8,2] .  As we see from example one, <i>left</i> = [1,3].  We can deduce that <i>right</i> = [2,8]

3. Merge [1,3] and [2,8] to make [1,2,3,8] and return it


###Example Three:

var arr3 = [3,1,8,2,10,4,6,5]

1. Skip this as there are eight elements
2. We set <i>left</i> equal to this function passing in [3,1,8,2] and <i>right</i> equal to this function passing in [10,4,6,5] .  As we see from example two, <i>left</i> = [1,2,3,8].  We can deduce that <i>right</i> = [4,5,6,10]

3. Merge [1,2,3,8] and [4,5,6,10] to make [1,2,3,4,5,6,8,10] and return it

###In Code:

Livecoding in Swift


###Time complexity

![Merge Sort Time Compleixty](https://github.com/C4Q/AC-DSA/blob/master/sorting/MergeSortTimeComplexity.png)

Worst case: O(n * log(n))
Best case: O(n * log(n))

##Quicksort

[![Quicksort](http://img.youtube.com/vi/8hEyhs3OV1w/0.jpg)](https://www.youtube.com/watch?v=8hEyhs3OV1w)


Here's how it works:


1. If the array has only one element, return it.
2. Find the middle element of the array and name it <i>pivot</i>.
3. Move all the elements smaller than the pivot into an array called <i>less</i>.
4. Move all the elements equal to the pivot into an array called <i>equal</i>.
5. Move all the elements greater than the pivot into an array called <i>greater</i>
6. Return the following:
 
This function passing in <i>less</i> as input + <i>equal</i> + this function passing in <i>greater</i> as input.

 Let's go through some examples:
 
 ###Example One:
 
 var arr1 = [8,4,2]
 
 1. Skip this step as arr1 has 3 elements.
 2. pivot = 4
 3. less = [2]
 4. equal = [4]
 5. greater = [8]
 6. return quicksort([2]) + [4] + quicksort([8])
 
 quicksort([2]) and quicksort([4]) hit the basecase in step one and return the input.  Therefore, the function returns [2,4,8]
 
 ###Example Two:
 
 var arr2 = [11,8,15,10,4,14,2]
 
  1. Skip this step as arr1 has 3 elements.
  2. pivot = 10
  3. less = [8,4,2]
  4. equal = [10]
  5. greater = [10,15,14]
  6. return quicksort([8,4,2]) + [10] + quicksort([11,15,14])

 quicksort([8,4,2]) = [2,4,8] as we saw in example one
  
  ###quicksort([11,15,14]) :
  
  1. Skip this step as the array has 3 elements
  2. pivot = 15
  3. less = [11,14]
  4. equal = [15]
  5. greater = []
  6. return quicksort([11,14]) + [15] + []
  
  ###quicksort(11,14) :
  
  1. Skip this step as the array has 2 elements
  2. pivot = 11
  3. less = []
  4. equal = [11]
  5. greater = [14]
  6. return [] + [11] + [14] = [10,14]

  Therefore, quicksort([11,15,14]) = [11,14,15]
  
  <b>And so quicksort([8,4,2]) + [10] + quicksort([11,15,14]) = [2,4,8,10,11,14,15]</b>


###In Code:

Livecoding in Swift


###Time Complexity:


![Merge Sort Time Compleixty](http://users.informatik.uni-halle.de/~jopsi/dssea/quicksort.gif)

(source: http://users.informatik.uni-halle.de/~jopsi/dssea/quicksort.gif
)
