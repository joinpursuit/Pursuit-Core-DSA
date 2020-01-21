# Tree Equality Solution

The heart of this solution is we want to iterate in the exact same way between two trees.
It's *not* enough to just say "oh, we print out the values in the same order" (as would happen in leetcode example 2).

So we need to see the same elements, and in the same order, and in the same left-right relationship.

Have faith that there is a recursive definition...
## Javascript

### Recursive Implementation
Two trees are equal if their left subtree is the same, their right subtree is the same, and their own node (root) values are the same.

```js
var isSameTree = function(p, q) {
    // Handle the cases where one or the other or both are possible null.
    if (!p || !q) {
        if (p || q) { return false }
        return true
    }
    // neither p nor q can be null at this point.
    var leftSame = isSameTree(p.left, q.left)
    var rightSame = isSameTree(p.right, q.right)
    var nodeSame = p.val === q.val
    return leftSame && rightSame && nodeSame
};

```

### Non-Recursive Implementation

Without recursion, the key complication is remembering which thing is left, and which thing is right.

```js
/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} p
 * @param {TreeNode} q
 * @return {boolean}
 */
var isSameTree = function(p, q) {
    // Handle the cases where one or the other or both are possible null.
    if (!p || !q) {
        if (p || q) { return false }
        return true
    }
    
    pList = [p]
    qList = [q]
    
    while (pList.length > 0 && qList.length > 0) {
        a = pList.pop()
        b = qList.pop()
        
        // The key complication is that we need to guarantee that
        // the "to-do lists" for p, q always embody the same left-right
        // ordering. We do that by making sure we put things in
        // in the right way. I know this is vague description. Sorry.
        
        if (a.left) {
            if (!b.left) { return false }
            pList.push(a.left)
            qList.push(b.left)
        }
        else {
            if (b.left) { return false }
        }
        
        if (a.right) {
            if (!b.right) { return false }
            pList.push(a.right)
            qList.push(b.right)
        }
        else {
            if (b.right) { return false }
        }
        
        if (a.val != b.val) { return false }
    }
    return true
};
```
