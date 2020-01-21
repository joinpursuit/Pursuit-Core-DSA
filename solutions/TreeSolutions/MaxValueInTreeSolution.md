# Max Value in Tree Solution

Compare to the Sum Value in Tree Solution.
Very similar!

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
function MaxValueInTreeRecursive(r) {
    // r for "root" (of the tree)
    
    // If the tree has nothing, let's say the largest
    // value in that tree is 0. This is a reasonable (though
    // not the only) choice, given that we are assured
    // our input tree can only have values larger than 0.
    // It also means our recursive implementation can be
    // nice and quick.
    
    if (!r) {
        return 0;
    }
    
    var leftMax = MaxValueInTreeRecursive(r.left)
    var rightMax = MaxValueInTreeRecursive(r.right)

    // the biggest value is either the biggest on our left, right, or ourselves!
    return Math.max(leftMax, rightMax, r.val)
}
```
Here's the iterative version.
Compare how we return 0 in the nothing-tree case, and here we initialize our result value to "0". It's not really a coincidence that those are the same value.
```js
function MaxValueInTreeIterative(r) {
    // r for "root" (of the tree)
    
    // The empty tree is something with no nodes,
    // and in this case the right thing is to say
    // the max of the values in a nothing-tree is 0.

    if (!r) {
        return 0;
    }
    
    var result = 0
    var workList = [ ]
    workList.push(r)
    
    while (workList.length > 0) {
        var n = workList.pop();
        
        result = Math.max(result, n.val)
        
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

// We'd expect the max value to be 5.
// The right thing to do is really test things bit-by-bit so that if something goes wrong you catch it with as small an example as possible.

if (MaxValueInTreeRecursive(a) != 5) {
    console.log("Error in case 1")
}
if (MaxValueInTreeIterative(a) != 5) {
    console.log("Error in case 2")
}
console.log("Done!")
```
