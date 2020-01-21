# Sum Values in Tree Solution

This problem is a variation of the print-the-tree sort of problem.
The core of the work is making sure you can visit all the nodes correctly.
With that in mind, there are two basic approaches: a recursive approach, and a non-recursive ("iterative") approach.


## JavaScript

We assume the binary tree looks like (from Leetcode)
```js
// Definition for a binary tree node.
function TreeNode(val) {
    this.val = val;
    this.left = this.right = null;
}
```
The key insight to this problem is the idea that trees are made out of smaller trees.
```js
function SumValuesInTreeRecursive(r) {
    // r for "root" (of the tree)
    
    // The empty tree is something with no nodes,
    // and in this case the right thing is to say
    // the sum of the values in a nothing-tree is 0.

    if (!r) {
        return 0;
    }
    
    // Otherwise, the sum of values in our tree is
    // going to be the sum of values in our left sub-tree
    // plus those in our right-subtree plus ourselves.
    
    var leftsum = SumValuesInTreeRecursive(r.left)
    var rightsum = SumValuesInTreeRecursive(r.right)
    var oursum = r.val + leftsum + rightsum
    
    return oursum;
}
```
Here's the iterative version
```js
function SumValuesInTreeIterative(r) {
    // r for "root" (of the tree)
    
    // The empty tree is something with no nodes,
    // and in this case the right thing is to say
    // the sum of the values in a nothing-tree is 0.

    if (!r) {
        return 0;
    }
    
    var result = 0
    var workList = [ ]
    workList.push(r)
    
    while (workList.length > 0) {
        var n = workList.pop();
        
        result += n.val
        
        if (n.left) {
            workList.push(n.left)
        }
        if (n.right) {
            workList.push(n.right)
        }
    }
    return result
}
```

### Running the Code
```js
// (After pasting the above tree, function definitions)
var a = new TreeNode(1)
var b = new TreeNode(2)
var c = new TreeNode(3)
a.left = b
a.right = c
var d = new TreeNode(4)
var e = new TreeNode(5)
b.right = d      // equivalent to a.left.right = d
a.right.left = e // equivalent to c.left = e

// We'd expect the sum to be 15.
// The right thing to do is really test things bit-by-bit so that if something goes wrong you catch it with as small an example as possible.

if (SumValuesInTreeRecursive(a) != 15) {
    console.log("Error in case 1")
}
if (SumValuesInTreeIterative(a) != 15) {
    console.log("Error in case 2")
}
```
