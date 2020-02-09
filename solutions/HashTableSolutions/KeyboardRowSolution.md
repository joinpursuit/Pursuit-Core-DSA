# Keyboard Row Solution

## Discussion

If this problem had to be classified in one algorithm or data-structure, we would say "sets".
However, there's a lot of complicated-enough reasoning in breaking the problem down that we'll hardly touch on sets.

### Design of the Solution
The plain-English description of the algorithm we want is "for each word in words, determine if that word is made of letters only from one row of the keyboard" (or something like that). This invites the following sort of psuedocode, which I'll write in python:
```python
def findWords(words):
    result = []
    for w in words:
        if w is made of letters only from a single row:
            result.append(w)
    return result
```
There's already a few tools used here:
- We have the **for w in words** loop to visit every word and look at it. I like the analogy of vocabulary:  for-loop is our vocabulary for how we can visit every word in **words**.
- We use **result**, a list, to collect the words we want to return. This is another common piece of vocabulary. (A more advanced tool we could have used instead is called a **filter**, which basically does this result for us. There are still more-advanced variations of this technique (iterators/yields), but what we have here is a fine approach.)
- A "gotcha" we have to handle is the difference between lower and uppercase. That's something that's easy to forget, but also fortunately easy to fix. It's definitey something to keep in mind when debugging string-searching algorithms, as we have here. There is almost always some built-in lower-case method, in this case we have "s.lower()". That's the common solution to wanting to ignore cases -- we just make everything lowercase (uppercase would work too, but that's in my experience people default to lowercase).

The frustratingly fuzzy part of our psuedocode: the **if** statement is obviously *not* easy to translate to code. But this structure invites the following design:
```python
def findWords(words):
    result = []
    for w in words:
        if madeOfSingleRowLetters(w.lower()):
            result.append(w)
    return result
```
All we did was change the if-statement to a function call, and (except that we haven't defined the function :)) this is actually valid Python! And for any language you can have a similar sort of implementation. We also slipped in the call to "lower" so we can finally forget about upper-case versus lower-case. Note that we *don't* do lower when we actually collect the strings. That's another fun gotcha...

If nothing else, this gets us to a point where we've shrunk the problem: now we just want to determine if a *single* word can be made up of letters from a single keyboard row. So we can think about that smaller problem:
```python
def madeOfSingleRowLetters(word):
    ...
```
The approach to implement *that* (conceptually) smaller problem is to iterate through each letter, and determine if all those letters are from a single row. That may sound a bit confusing: we're only looking at a single letter at a time, so how can we remember if they *all* are from a single row? There are a few approaches, but the one I'd like is as follows:
```python
def madeOfSingleRowLetters(word):

    topRow = { a for a in 'qwertyuiop' }
    middleRow = { a for a in 'asdfghjkl' }
    bottomRow = { a for a in 'zxcvbnm' }

    if madeOfRow(word, topRow):
        return True
    if madeOfRow(word, middleRow):
        return True
    if madeOfRow(word, bottomRow):
        return True
    return False

def madeOfRow(word, row):
    for c in word:
        if c not in row:
            return False
    return True
```
You can see I made yet-another-helper-function, this one called **madeOfRow**, that takes a word and a *single* row.
In this case it can really help with some gnarly Boolean reasoning: you can see the machinery of **madeOfRow** is really looking for a reason why **word** *isn't* made of the row **row**.
That idea of looking more for a counter-example to make you return **false** (and then returning **true** if you can't find a counter-example) is a pretty handy one, in my experience.

And that's it! The solution altogether is:
```python
def findWords(words):
    result = []
    for w in words:
        if madeOfSingleRowLetters(w.lower()):
            result.append(w)
    return result
def madeOfSingleRowLetters(word):

    topRow = { a for a in 'qwertyuiop' }
    middleRow = { a for a in 'asdfghjkl' }
    bottomRow = { a for a in 'zxcvbnm' }

    if madeOfRow(word, topRow):
        return True
    if madeOfRow(word, middleRow):
        return True
    if madeOfRow(word, bottomRow):
        return True
    return False

def madeOfRow(word, row):
    for c in word:
        if c not in row:
            return False
    return True
```

I'm glad for you putting the time into this because, even if you didn't get the solution, you have really valuable experience seeing *why* these little vocab-tricks (like collecting your answer in **result** with that for-loop, the trick of breaking things into helper-functions, that kind of search-for-counter-example idea, and probably other little details I took for granted) are handy to remember.

### Wait, where are the sets?
I used a python syntax trick to define **topRow**, **middleRow**, and **bottomRow** as sets. That is how we're able to use the phrase **if c not in row**, the "in" operator is a set-focused operator.
You can use an array or string for each row if you'd like. For this concrete problem it's likely faster (as the arrays are so small), but if you're in some other setting where the "rows" are some enormous database, using a set is likely advised.
From a big-Oh perspective, searching in an array is O(n), while a set is typically O(lg n) or O(1), which are both a huge improvement. (Remember, lgn is roughly "the number of digits of n, times 3". So if n were 1,000,000, you'd be comparing 1,000,000 to... 21. That's a lot less!)

### Any other performance notes?
- Right now it can look like we're re-building the 3 row-sets for each word we examine. That's really wasteful. See the javascript approach below for a slightly different implementation that makes it clear we're not rebuilding the sets each time.
- You may think "ok, let's first look at the first character of each string, and figure out which row that first character is in, and then make sure the rest of the string is from that row". That's a fine approach, but it's not going to be substantively better-performing. You can see **madeOfRow** stops iterating through the word as soon as it finds a counter-example, which captures most of what you're trying to do with the if-statement.

## Ridiculous Approach:
Just to demonstrate how the kind of reasoning used in this problem really will help you practice building-block concepts, here are more advanced programming tools to make a very terse solution:
```python
def findWords(word):
    return [w for w in words if madeOfSingleRowLetters(w.lower())]
def madeOfSingleRowLetters(word):
    return any([madeOfRow(word, 'qwertyuiop'), madeOfRow(word, 'asdfghjkl'), madeOfRow(word, 'zxcvbnm')])
def madeOfRow(word, row):
    return all([c in row for c in word])
```
I should add that this is not necessarily a better solution!
These more advanced mechanisms (which are particularly terse in Python, but they exist elsewhere) have a tendency to be wildly over-used.
The "normal" solution we developed above is easier to read and to code-review, in my experience.
(Also, I think there is a subtle performance regression in this version, in particular the "all" and "any" usage... but later.)

And here's an earlier solution I wrote in Javascript. You can see I decided to use helper functions in a different way.

## Javascript

```js
/**
 * @param {string[]} words
 * @return {string[]}
 */
function fitsRow(word, row) {
    for (var i = 0; i < word.length; i++) {
        if (!row.has(word.charAt(i))) {
            return false;
        }
    }
    return true;
}
var findWords = function(words) {
    var rows = {}
    let topRow = "qwertyuiop"
    let middleRow = "asdfghjkl"
    let bottomRow = "zxcvbnm"
    
    rows[0] = new Set(topRow.split(""))
    rows[1] = new Set(middleRow.split(""))
    rows[2] = new Set(bottomRow.split(""))
    
    var res = []
    for (var i = 0; i < words.length; i++) {
        var word = words[i]
        for (var r = 0; r < 3; r++) {
            if (fitsRow(word.toLowerCase(), rows[r])) {
                res.push(word)
                continue
            }
        }
    }
    return res
};
```
