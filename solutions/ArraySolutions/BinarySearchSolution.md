# Binary Search Solution

## Javascript

```js
function identifyFirstBadCommit(commits) {
  let frontPointer = 0;
  let backPointer = commits.length - 1;
  let currentPointer = Math.round((frontPointer + backPointer) / 2);

  while (frontPointer < backPointer) {
    if (
      commits[currentPointer].status === "good" &&
      commits[currentPointer - 1].status === "bad"
    ) {
      return { commit: commits[currentPointer - 1], index: currentPointer - 1};
    }

    currentPointer = Math.round((frontPointer + backPointer) / 2);
    let midCommit = commits[currentPointer];

    if (midCommit.status === "good") {
      backPointer = currentPointer;
    } else if (midCommit.status === "bad") {
      frontPointer = currentPointer;
    }
  }

  return null;
}
```

## JS Recursive
### Find the commit first
```js
const identifyFirstBadCommit = (commits) => {
  const middleIndex = Math.floor(commits.length / 2);
  let beforeCommits = commits.slice(0, middleIndex);
  let afterCommits = commits.slice(middleIndex);
  if (commits[middleIndex].status === "good") {
    if (commits[middleIndex - 1].status === "bad") {
      return commits[middleIndex - 1]
    }
    return identifyFirstBadCommit(beforeCommits)
  } else {
    return identifyFirstBadCommit(afterCommits)
  }
}
```

### + Keeping track of commit index
```js
const identifyFirstBadCommit = (commits, i = 0) => {
  const middleIndex = Math.floor(commits.length / 2);
  let beforeCommits = commits.slice(0, middleIndex);
  let afterCommits = commits.slice(middleIndex);
  if (commits[middleIndex].status === "bad") {
    if (commits[middleIndex - 1].status === "good") {
      return {
        commit: commits[middleIndex],
        index: i + middleIndex
      }
    }
    return identifyFirstBadCommit(beforeCommits, i)
  } else {
    return identifyFirstBadCommit(afterCommits, i + middleIndex)
  }
}
```

### + Handling edge cases
* What if there's no commits or only one?
* What if all the commits are good or all are bad?

```js
const identifyFirstBadCommit = (commits, i = 0) => {
  if (commits.length === 0) return null
  if (commits.length === 1) {
    if (commits[0].status === 'good') return null
    else {
      return {
        commit: commits[0],
        index: i
      }
    }
  }

  const middleIndex = Math.floor(commits.length / 2);
  let beforeCommits = commits.slice(0, middleIndex);
  let afterCommits = commits.slice(middleIndex);
  if (commits[middleIndex].status === "bad") {
    if (commits[middleIndex - 1].status === "good") {
      return {
        commit: commits[middleIndex],
        index: i + middleIndex
      }
    }
    return identifyFirstBadCommit(beforeCommits, i)
  } else {
    return identifyFirstBadCommit(afterCommits, i + middleIndex)
  }
}
console.log(identifyFirstBadCommit(commits))
```
