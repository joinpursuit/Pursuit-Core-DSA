```js
function returnKthToLast(head, k) {
  if (!head || k < 1) { return null }

  let current = head;
  let nBehindCurrent = head;

  for (let i = 0; i < k - 1; i++) {
    current = current.next;
    if (!current) {
      return null;
    }
  }

  while (current.next) {
    nBehindCurrent = nBehindCurrent.next;
    current = current.next;
  }
  return nBehindCurrent;
}
