# Unique Row Solution

## Discussion

I found this to be an excellent problem because, while it may be a bit contrived, it's a pretty deliberate exercise for two key tools.
You likely won't see this problem in the real world, but the two tools you should use to solve it *come up all the time*, so it's an excellent sort of test to make sure you have these in your toolbox.

If you didn't, no worries! Now you will. This is just how you build up your toolbox -- if you don't encounter them in your studies, or your projects, you'll encounter them in these (good) practice problems, and finally the real world.

### Key Tool 1: If you want to count occurrences of different objects, use a hash table (equiv. hash map, dictionary, object...)

### Key Tool 2: If you want to determine that a collection of things has no repeats, one quick-and-easy tool is to use a set

## Applying the Key Tools to Solve This Problem

First, I would suggest trying to articulate what this problem is asking for a human language.
We can rephrase what Leetcode asks us in a bit more approachable terms:
* "Given an array of integers **arr**, write a function that returns true if and only if the number of occurrences of each value in the array is unique." (This is verbatim from Leetcode)

The tricky thing about how this is phrased is that the core thing it's asking (is each occurrence-amount unique?) implicitly asks for something else (we need to *count* the number of occurrences)!

Seeing that is the first sort of hurdle, but once we can tease that apart and see there are multiple steps, the problem becomes that much easier to solve.
As a silly example, you may feel that "doing laundry" (or whatever) is a hard an annoying chore -- but putting your clothes in the hamper isn't that hard by itself. Neither is getting the right amount of change. Neither is going downstairs, etc. etc.

I'm sure you've had lots of programming practice breaking larger problems apart into smaller ones -- the next "level" of that is skill is *recognizing* when there's an opportunity to break a problem into smaller ones. It's especially tricky if you're not sure those smaller problems are actually easier, but in this case it will be.

OK, OK: we can break the question into two parts: the counting-occurences, and then determining-unique. So rephrasing the question:
1. Go through **arr** and count the number of times each number appears.
2. If two numbers appear the same amount of times, return false. Otherwise, if no two numbers appear the same amount of time, return true.

That seems a bit more program-y! And perhaps a bit easier to digest.
Let's do each half in turn:

## Go through **arr** and count the number of occurrences

This is where we use key tool 1: a dictionary! (Or map, or hashtable, or whatever your language calls it -- it has a lot of names because it's used a lot, and a lot of different ideas converged to create this tool!)

```python
def countOccurrences(arr):

    # create a dictionary to track this
    occurrenceCounter = {}

    for value in arr:

        # if this value isn't yet a key in our dictionary, insert it:
        if value not in occurrenceCounter:

            # this very case is the first case, so we put in a 1:
            occurrenceCounter[value] = 1

        # Otherwise, it's already in our dictionary, so we add one:
        else:
            occurrenceCounter[value] += 1 # note the "+= 1"! We're incrementing the value, i.e., increasing it by 1.
    
    return occurrenceCounter
```
And for variety's sake, here is the same thing in JavaScript:
```js
var countOccurrences = function(arr) {
    var h = {}
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] in h) {
            h[arr[i]]++
        }
        else {
            h[arr[i]] = 1
        }
    }
    return h
}
```
It looks pretty similar (though the if-statement is flipped -- that way feels more natural to me, but I presented it the other way first as that is the more introductory way to consider the task).

So that's the first half of our breakdown, but it's not immediately clear how we can use this to solve the *actual* problem. Hence, stage two:

## If two values have the same count of occurrences, return false; else return true
(I sort of flipped the "conditional" here -- the original problem said that if all numbers each have a *unique* number of occurrences, return true. Here I'm just phrasing it the other "direction", but equivalent way.)

There are sort of two sub-steps to this. I'll illustrate this by highlighting the first sub-step.
```python
def uniqueOccurrences(arr):

    # count the occurrences using the previous section
    h = countOccurrences(arr)
    
    # extract out the *occurrences* in their own collection, in this case a list.
    occurrences = h.values()
```
A crucial observation is that we don't really care *which* values may have the same number of occurrences.
So we can just look at all the number-of-occurrences, and reason about that much simpler thing.
In this case, it's just a list.
So now our question, finally-finally, is just "does that list, **occurrences**, have any repeated values?"

There's a few way of doing solving this.
A perfectly acceptable and natural approach is to use a set like as follows:
```python
    seen = set([])
    for v in occurrences:
        if v in seen:
            return False
        else:
            seen.add(v)
    return True
```

A sort of neat, more concise trick, is this approach instead:
```python
    if len(set(occurrences)) == len(occurrences):
        return True
    return False
```
This exploits a fun fact that sets are deliberately designed to not allow multiples of the same item: if you add the same element multiple times, only the first insertion will "work", the rest will silently ignored.
So, if you put all the elements of a container into a set (which is what we're doing in this chunk), that set will contain the *same* elements as the original container, but with all duplicate values removed.
Consequently, if the set is the *same* size as the original container, that means the original container had no duplicates!
It's a fun little logic exercise that leads to much terser code.

That technique isn't some idle bit of trivia: it's quite a popular and (eventually) natural trick, as shown here: https://stackoverflow.com/questions/5278122/checking-if-all-elements-in-a-list-are-unique .

And so we've answered this question!

It may be a bit tricky to take all the broken-down steps and put them back together in your head to really see how we're solving the problem. I'd really encourage you to follow through the steps as best you can (and don't be afraid to ask for help) until you feel that this question is really boring! Getting used to breaking down problems, and considering broken-down problems, and using these data structures together to synthesize the answer to an "interesting" question is a tremendous programming skill.

## Gotchas
Be sure to distinguish when you're reasoning about the * values in **arr** *, versus the *number of occurrences of each value in arr*. It can get dizzying!

## Complete solutions
These are deliberately a bit different from what we presented above, though they're all doing the same thing.

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

Here's an approach developed by a Pursuit fellow (Muna Sharma) with a neat approach (I learned about Object.values() from this) and great comments, that I edited and commented up a bit more:

```js
var uniqueOccurrences = function(arr) {

    //count how many times a number has occurred

    let obj ={};
    
    for(let i = 0 ; i < arr.length ; i++){
        if(!obj[arr[i]]){
            obj[arr[i]] = 1
        } else {
            obj[arr[i]] += 1
        }
    }

    // Useful debugging help :)
    //console.log(obj)
    
    //get all the values from obj => this turns them into an array 
        
    let values = Object.values(obj)

    // compare the values(count) of each key (number) in the obj.
    // If any two values are the same, return false, else return true 
    // ways to compare: make a copy of the obj, maybe use sets, and compare the values 
        
    let set = new Set(values);
    
    // do the trick where we see if set has the same size as values.
    return set.size == values.length
}
```

To demonstrate just how common-place the idea of counting-occurrences is, and determining uniqueness is, here's a super-terse python solution using standard libraries.
```python
import collections
class Solution:
    def uniqueOccurrences(self, arr: List[int]) -> bool:
        
        c = collections.defaultdict(int)
        
        # how many times does each n appear?
        for n in arr:
            c[n] += 1
        
        # the values are the number-of-occurences -- test their uniqueness.
        return len(c.values()) == len(set(c.values()))
```
I'm using not super-common libraries (default-dict is a fun tool); I wouldn't expect people to know about defaultdict just starting out, but that such a tool is included inthe Python standard library hopefully helps drive home just how common these sorts of tools really come up.


## Post-Script: Performance

A number of people are curious about which approach is fastest. That's often a fun (and only sometimes useful) question to consider. Here's a few notes:
1. The count-all-occurrences (which is O(n) or O(n log n) in typical cases) is going to be as fast as possible.
2. For determing uniqueness, the "put it all in a set" trick may feel a bit slower: we're committing to another O(n) or O(n log n) time to build the whole set, and only then comparing the sizes. We might be tempted to test for uniqueness "on-line" (checking for reptition as we add each element, as was done in our initial solution) -- if we see two repetitions right at the start, we could save time!
3. Note that this still doesn't save us time asymptotically, so it's only a matter of if we save time in the real-world. The "right" answer in that case, in my opinion, is to say "we have to measure the performance of the code in the real-world".
4. Why is that? Well, for instance, we may find that creating a new set -- whether we're doing it on-line or all-at-once -- itself is a really slow operation. Memory allocations are very expensive! The "right way" to make the code faster, then, would be sort the values in-place, and test uniqueness that way. The resulting code may be pretty ugly, or even impossible to write, depending on the data structures you're using.

If asked about the performance of this code, I would say "it seems asymptotically optimal to me, and simple enough where I think the right thing is to first profile [that's the technical term for measuring the performance-of] the program, and if this really is a hot spot, very carefully figure out where the slow-down is. Is it because we're allocating more memory? Is it because we're not taking advantage of certain quirks of our input? [For instance, if **arr** were zip-codes, we know a lot about zip-codes and could maybe use a special-purpose data structure.] We'd have to take it from there."
