
# Tree Height Solution

You can do this (or any tree problem, especially a binary tree problem) without recursion.

However, most (never "all"...) tree problems are more succinctly solved with recursion.

A comprehensive exercise would be to solve this with recursion, and then "translate" your solution into an iterative one.

## Approach

The key mindset is to think about the tree as made of up smaller trees.
* If you have the smallest possible tree, the nothing-tree, you know your height (depth) is 0. As the leetcode link would say, the length of the path of 0 nodes is 0.
* If you have a bigger tree (i.e., your parameter "root" is non-null), then you know it has a value and two sub-trees, its left and right children.

Bottom-up perspective: let's say we know the longest path from root.left to the bottom is length 2. And the longest path path from root.right to the bottom is length 3. From the perspective of "root", that means the longest path from root to the bottom *should be* length 4. We simply "attach ourselves" to the path starting at root.right. We don't have that path explicitly, but we trust that root.right is being honest.

So that's the magic of recursion:
* We define maxDepth correctly for the smallest possible tree (the nothing-tree).
* We know how to break our tree into smaller trees (by looking at root.left and root.right).
* Given the answers for the smaller trees, we know how to synthesize the answer for our "larger" tree.
* We rinse and repeat until we get back up to the real root of the tree!

It takes *doing* many of these exercises before it really internalizes. Before you look at the code, maybe take one more crack at it.

And then try the iterative (non-recursive) approach :).

### Note
For this problem in particular, you have an added edge: you can think about it as computed the max height, *or* the max depth. They're extremely similar values. In fact, the recursive approach may be best thought of as max-height, and the iterative as max-depth.

## JavaScript

```js
// Definition for a binary tree node.
function TreeNode(val) {
    this.val = val;
    this.left = this.right = null;
}
```
### Recursive

```js
function maxDepth(root) {

    // Base case:
    if (!root) {
        return 0;
    }
    
    // Non-base case: consider the smaller trees first
    var ldepth = maxDepth(root.left)
    var rdepth = maxDepth(root.right)
    
    // Now we can synthesize those into the answer for our
    // main input tree:
    
    
    var mdepth = Math.max(ldepth, rdepth)
    // Math.max (and Math.min) are really handy! Look it up if you're unfamiliar)
    
    // We attach ourselves, the root node, to the longest path we've found
    var result = mdepth + 1
    
    // And we're done.
    return result
}
```

### Iterative
There's a few iterative approaches. One thing to try on your own is a breadth-first-search based implementation.
Here, I'll take advantage of how the depth and height are the same.

```js
function maxDepth(root) {

    // Handle the easy case
    if (!root) {
        return 0
    }

    // There's lots of ways we can do this.
    // How about for this one, we'll create an object (hashmap)
    // of nodes to their max depth.
    
    var maxDepth = 0
    
    // We have to use DFS (see PrintBinaryTreeWithStack)
    var toVisit = []
    toVisit.push([root, 1])
    
    // Instead of just remembering the nodes, we remember
    // each node *and the known depth* of that node.
    
    while (toVisit.length > 0) {
        var [n, d] = toVisit.pop()
        
        // So we know that it takes a length-d path to
        // get to node n.
        // Is that the longest path we've seen so far?
        maxDepth = Math.max(maxDepth, d)
        
        // That means, to reach n.left, it would take...
        if (n.left) {
            toVisit.push([n.left, d+1])
        }
        // And similar for n.right: length d+1
        if (n.right) {
            toVisit.push([n.right, d+1])
        }
    }
    
    return maxDepth
}
```
