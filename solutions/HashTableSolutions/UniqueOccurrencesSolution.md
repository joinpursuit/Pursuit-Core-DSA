```js
/**
 * @param {number[]} arr
 * @return {boolean}
 */
var uniqueOccurrences = function(arr) {
    var h = {}
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] in h) {
            h[arr[i]]++
        }
        else {
            h[arr[i]] = 1
        }
    }
    
    var s = new Set()
    for (p in h) {
        var c = h[p]
        if (s.has(c)) {
            return false
        }
        s.add(c)
    }
    return true;
};
```
