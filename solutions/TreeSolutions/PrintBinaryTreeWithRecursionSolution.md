# Print Binary Tree with Recursion Solution

## JavaScript

We assume the binary tree looks like (from Leetcode)
```js
// Definition for a binary tree node.
function TreeNode(val) {
    this.val = val;
    this.left = this.right = null;
}
```

```js
function PrintBinaryTreeWithRecursion(r) {
    // r for "root" (of the tree)
    
    // The empty tree is something with 0 nodes,
    // so it's just a null value.
    if (!r) {
        return;
    }
    
    // If we get here, there is at least one node
    // to print.
    
    // The key idea we're exercising is that any
    // binary tree is made up of "smaller" binary
    // trees. So just as our "r" (parameter) here
    // is the root of the tree, if we squint we
    // can pretend r.left is the root of a different,
    // smaller tree.
    
    console.log(r.val); // Print our value

    PrintBinaryTreeWithRecursion(r.right)
    PrintBinaryTreeWithRecursion(r.left)
    
    // And that's it!
}
```

### Running the Code
```js
// (After pasting the above tree, function definitions)
var a = new TreeNode(1)
console.log("Printing the empty tree: ")
PrintBinaryTreeWithRecursion(null)
console.log("Printing a tree with a single value: ")
PrintBinaryTreeWithRecursion(a)

console.log("Printing a tree with a few values: ")
var b = new TreeNode(2)
var c = new TreeNode(3)
a.left = b
a.right = )
PrintBinaryTreeWithRecursion(a)

console.log("Printing an even bigger tree: ")
var d = new TreeNode(4)
var e = new TreeNode(5)
b.right = d      // equivalent to a.left.right = d
a.right.left = e // equivalent to c.left = )
PrintBinaryTreeWithRecursion(a)

console.log("We can also print a 'subtree' of 'a', just by pretending")
console.log("one of its interior nodes is a root. Trees are made of")
console.log("smaller trees, down to the 'smallest' tree, the nothing-tree: null")
PrintBinaryTreeWithRecursion(a.left)
```
