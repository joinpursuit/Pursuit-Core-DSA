# Toeplitz Matrix

### 1st Solution.
Can be optimized. There is no need to check the diagonals all the way through like this does.
```js
let m = [
  [1, 2, 3, 4],
  [5, 1, 2, 3],
  [6, 5, 1, 2]
]

// x y
// 0,0
// 1,1
// 2,2
//
// 0,1
// 1,2
// 2,3
//
// 0,2
// 1,3

const isToeplitz = (m) => {
  let sX = 0;
  let sY = m.length - 1;
  while (sX < m.length && sY < m.length) {
    let x = sX;
    let y = sY
    let num = m[x][y];
    while (x < m.length && y < m.length) {
      process.stdout.write(`${m[x][y]}, `)
      if (num !== m[x][y]) {
        return false
      }
      x++;
      y++;
    }
    console.log()
    if (sY !== 0) {
      sY--;
    } else {
      sX++;
    }

  }
  return true
}

console.log(isToeplitz(m))
```
