# Binary Search Solution

## Javascript

```js
function identifyFirstBadCommit(commits) {
  let frontPointer = 0;
  let backPointer = commits.length - 1;
  let currentPointer = Math.round((frontPointer + backPointer) / 2);

  while (frontPointer < backPointer) {
    if (
      commits[currentPointer].status === "bad" &&
      commits[currentPointer - 1].status === "good"
    ) {
      return { commit: commits[currentPointer], index: currentPointer };
    }

    currentPointer = Math.round((frontPointer + backPointer) / 2);
    let midCommit = commits[currentPointer];

    if (midCommit.status === "bad") {
      backPointer = currentPointer;
    } else if (midCommit.status === "good") {
      frontPointer = currentPointer;
    }
  }

  return null;
}
```
