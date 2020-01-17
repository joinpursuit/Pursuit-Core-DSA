# PrintBinaryTreeWithStack Solution

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
function PrintBinaryTreeWithStack(r) {
    // r for "root" (of the tree)
    
    // The empty tree is something with 0 nodes,
    // so it's just a null value.
    if (!r) {
        return;
    }
    
    // If we get here, there is at least one node
    // to print. We will create a "to-do list" of
    // nodes we want to print. So far, we know we
    // have at least one node to print: r.

    // we are using an array to act as a stack
    var toPrint = []
    toPrint.push(r)
    
    // We know this loop will loop at least once.
    while (toPrint.length > 0) {
        var n = toPrint.pop()
        
        // this n is a node we want to print (in
        // the first iteration, n is the same as r).
        // So let's print its value!
        
        console.log(n.val)
        
        // The node may have children (left, right
        // properties). If it does, we should also
        // add those children to our to-print list.
        
        if (n.left) {
            toPrint.push(n.left)
        }
        if (n.right) {
            toPrint.push(n.right)
        }
    }
    
    // And that's it!
}
```

### Running the Code
```js
// (After pasting the above tree, function definitions)
var a = new TreeNode(1)
console.log("Printing the empty tree: ")
PrintBinaryTreeWithStack(null)
console.log("Printing a tree with a single value: ")
PrintBinaryTreeWithStack(a)

console.log("Printing a tree with a few values: ")
var b = new TreeNode(2)
var c = new TreeNode(3)
a.left = b
a.right = c
PrintBinaryTreeWithStack(a)

console.log("Printing an even bigger tree: ")
var d = new TreeNode(4)
var e = new TreeNode(5)
b.right = d      // equivalent to a.left.right = d
a.right.left = e // equivalent to c.left = e
PrintBinaryTreeWithStack(a)

console.log("We can also print a 'subtree' of 'a', just by pretending")
console.log("one of its interior nodes is a root. Trees are made of")
console.log("smaller trees, down to the 'smallest' tree, the nothing-tree: null")
PrintBinaryTreeWithStack(a.left)
```
