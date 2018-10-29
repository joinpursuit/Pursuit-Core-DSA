# Recursive Reverse Sentence Solution

## JavaScript

```js
function reverseSentence(sentence) {
  if (sentence.length === 0) {
    return "";
  } else {
    var words = sentence.split(" ");
    var word = words.pop();
    if (words.length === 0) {
      return word;
    } else {
      return word + " " + reverseSentence(words.join(" "));
    }
  }
}
```
