# Matrix/2D Arrays/Array of Arrays Problems

### Easy
### Tic Tac Toe Solution Checker
Given a 2D Array that might contain the following tree characters `X`, `O`, ` `(space) in a Tic Tac Toe board determine the winning player and return it.

Example: For the following board the winner is `X` on the left to right diagonal

|     |     |     |
| --- | --- | --- |
| X   | O   | O   |
| X   | X   |     |
| O   | O   | X   |

#### Sample I/O
##### Input: `[ ['X', 'O', 'O'], ['X', 'X', ' '], ['O', 'O', 'X'] ]`
##### Output: `X` 

#### Sum of Diagonals on a 2D Array of integers
Find the sum of the diagonals of a square, two-dimensional array of integers

##### Input: 
```
[
 [1, 2, 9],
 [8, 2, 3],
 [4, 5, 6]
]
```
##### Output: `24` 


### Medium
#### Find the Battleships!  

[LeetCode](https://leetcode.com/problems/battleships-in-a-board/)

Given an 2D board, count how many battleships are in it. The battleships are represented with 'X's, empty slots are represented with '.'s. You may assume the following rules:

You receive a valid board, made of only battleships or empty slots.
Battleships can only be placed horizontally or vertically. In other words, they can only be made of the shape 1xN (1 row, N columns) or Nx1 (N rows, 1 column), where N can be of any size.
At least one horizontal or vertical cell separates between two battleships - there are no adjacent battleships.


Input visualization:

|     |     |     |     |
| --- | --- | --- | --- |
| x   | .   | .   | x   |
| .   | .   | .   | x   |
| .   | .   | .   | x   |

There are 2 battleships above

##### Input: `[["x",".",".","x"],[".",".",".","x"],[".",".",".","x"]]`
##### Output: `2`

### Hard
#### Hungry Rabbit
There is a rabbit that starts in the middle of an n x m matrix, n > 0, m > 0.
Each element of a matrix is an integer representing points gained for being on the spot.
If there are multiple possible "middles" then choose the one which has the highest point value to start on.
On each iteration, the rabbit can move up, left, right, or down.
The rabbit will always move to the next spot with the highest point value and will "consume" those points (set the point value in that position to 0).
The rabbit spots when all positions around it are 0s. Calculate how many points the rabbit will score for a given m x n matrix.

#### Sample I/O
##### Input:
```
[
  [5, 7, 8, 6, 3]
  [0, 0, 7, 0, 4]
  [4, 6, 3, 4, 9]
  [3, 1, 0, 5, 8]
]
```

##### Output: `27`
