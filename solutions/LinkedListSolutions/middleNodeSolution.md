```js
const middleNode = function(head) {
    let runner = head;
    let walker = head;
    while(runner && runner.next && runner.next.next) {
        runner = runner.next.next;
        walker = walker.next
    }
    if(runner.next) {
        return walker.next
    }
    return walker;
};

```
