#Practice DSA Problems for 1/30/17

1) [Remove duplicates from a sorted linked list](https://leetcode.com/problems/remove-duplicates-from-sorted-list/)

Given a sorted linked list, delete all duplicates such that each element appear only once.

|Sample Input | Sample Output | 
|---|---|
|1->1->2| 1->2 |
|1->1->2->3->3| 1->2->3 | 

2) [Length of last word](https://leetcode.com/problems/length-of-last-word/)

Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.

If the last word does not exist, return 0.

Note: A word is defined as a character sequence consists of non-space characters only.

|Sample Input | Sample Output | 
|---|---|
|"Hello World"| 5 |
|"This is a test expression" | 10 |

3) [Find all duplicates in an array](https://leetcode.com/problems/find-all-duplicates-in-an-array/)

Given an array of integers, 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.

Find all the elements that appear twice in this array.

**Bonus**: Solve it without extra space and in O(n) runtime?


|Sample Input | Sample Output | 
|---|---|
|[4,3,2,7,8,2,3,1]| [2,3] |



4) [Remove only nearby duplicates from an array](https://leetcode.com/problems/contains-duplicate-ii/)

Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.


|Sample Input | Sample Output | 
|---|---|
|[1,5,3,9,10,3,4], 2| true |
|[1,5,3,9,10,3,4], 3| true |
|[1,5,3,9,10,3,4], 4| false | 




5) [Battleships!  But actually.](https://leetcode.com/problems/battleships-in-a-board/)

Given an 2D board, count how many battleships are in it. The battleships are represented with 'X's, empty slots are represented with '.'s. You may assume the following rules:

You receive a valid board, made of only battleships or empty slots.
Battleships can only be placed horizontally or vertically. In other words, they can only be made of the shape 1xN (1 row, N columns) or Nx1 (N rows, 1 column), where N can be of any size.
At least one horizontal or vertical cell separates between two battleships - there are no adjacent battleships.


Input picture:

|||||
|---|---|---|---|
|x| . | . | x |
|. | . | . | x |
| . | . | . | x |

There are 2 battleships above

|Sample Input | Sample Output | 
|---|---|
|[["x",".",".","x"],[".",".",".","x"],[".",".",".","x"]] | 2 |