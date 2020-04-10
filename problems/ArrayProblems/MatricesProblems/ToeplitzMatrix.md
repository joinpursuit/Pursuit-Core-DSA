# Toeplitz Matrix

| Difficulty | Tags                                     | Solution Link                                                                 |
| ---------- | ---------------------------------------- | ----------------------------------------------------------------------------- |
| Medium     | [2D Arrays, Matrices, Arrays, Integers ] | [Here](../../../solutions/ArraySolutions/MatricesSolutions/ToeplitzMatrix.md) |

## Problem Description
A Toeplitz matrix is a matrix where every left-to-right-descending diagonal has the same element. Given a non-empty matrix arr, write a function that returns true if and only if it is a Toeplitz matrix. The matrix can be any dimensions, not necessarily square.

## Example
```
[
  [1,2,3,4],
  [5,1,2,3],
  [6,5,1,2]
]
```
is a Toeplitz matrix, so we should return `true`, while
```
[
  [1,2,3,4],
  [5,1,9,3],
  [6,5,1,2]
]
```
isn’t a Toeplitz matrix, so we should return `false`.	

## Notes
[LeetCode - Toeplitz Matrix](https://leetcode.com/problems/toeplitz-matrix/)
