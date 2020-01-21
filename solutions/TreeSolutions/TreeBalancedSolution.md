# Tree Balanced Solution

The really interesting part of this problem is determining that the test (the size of the left child and right child differ by 1) is sufficient to give us the "balanced" property we want.
Something to chew over.

As always, this can be done iteratively or recursively.

Because this is a leetcode question I won't provide many tests.

## JavaScript

We assume the binary tree looks like (from Leetcode)
```js
// Definition for a binary tree node.
function TreeNode(val) {
    this.val = val;
    this.left = this.right = null;
}
```

As always, the core insight is that we can determine the test for our root based on our sub-trees.

We need, as a helper function, tree height. For brevity, I will just use the recursive one.
(In a whiteboard interview setting, it may be worth considering leaving off implementing "TreeHeight", and in the meantime using it as a helper function yet-to-be-implemented.)

```js
function TreeHeight(r) {
    if (!r) { return 0 }
    return 1 + Math.max(TreeHeight(r.left), TreeHeight(r.right))
}
```

```js
// Ok we assume we have treeheight. Now we can implement the real function.
var isBalanced = function(root) {
    if (!root) { return true }
    if (!isBalanced(root.left)) { return false; }
    if (!isBalanced(root.right)) { return false; }
    return Math.abs(TreeHeight(root.left) - TreeHeight(root.right)) <= 1
};
```

What the heck is Math.abs doing there? That's a neat way of expressing the "distance" between two values -- it expresses the idea that we want the _difference_ between the two values (TreeHeight(left), TreeHeight(right)) to be less than or equal to one, but _we don't care_ which value is actually bigger.
