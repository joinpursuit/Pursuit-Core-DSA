# Traverse Linked List solution


## Javascript

```js
function traverse(node) {
    let head = node || null
    if(!head) {
        return
    }
    else {
        console.log(node.val)
        prettyPrint(node.next)
    }
}
```