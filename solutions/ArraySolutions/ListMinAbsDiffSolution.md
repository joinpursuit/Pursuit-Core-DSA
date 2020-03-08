# Motivation
See the problem description for motivation.
# Understanding the Problem
If we have two numbers, *a* and *b*, their *absolute difference* is just "abs(a-b)".
("abs" is the absolute-value function, that makes negative numbers positive).
Roughly speaking, this is the distance between *a* and *b* if you write them on the number line.
The distance is always positive, hence we use the absolute value.
One bit of "magic" here is that this doesn't care if *a* or *b* are negative, or if both are, or if they are both positive.
By the same token, it doesn't matter if a is bigger than b, or vice-versa. It's a really fun function.

To say again: the absolute difference is "abs(a-b)". It is *never* "abs(a) - abs(b)". That may be useful in some other context, but it is *not* the absolute difference.

So we're interested in the *minimum* absolute difference of elements in an array.
More explicitly, we want to find a pair of elements in *arr* (let's say they're indexed by i, j) such that abs(arr[i]-arr[j]) is the smallest out of any other i, j pairs we can choose.
Even before we've figured out code to help us find this, we can imagine that we have foun this minimum-absolute-difference value. Let's store it in the variable *mad*.

If we have the *mad* value, then what this problem is ultimately asking us to do is find every pair of elements in *arr* that can create this *mad*. Of course we have at least one pair (the one that we used to find *mad*), but there could be others that have the same absolute-difference value.
So we want to find all pairs and collect them in a list, and *that's* our return value. Phew!

# Breaking down the problem
From our understanding of the problem, it may be not be immediately clear how to break this problem into manageable chunks.
There are a few things that stand out as useful tools we can isolate as helper functions.
If we ultimately don't use them, well, we'll have felt silly spending time on the helper functions, but it won't be bad.
We can really get precise:
```python
def AbsDiff(a, b): return abs(a-b)
```
Overkill? Maybe, maybe not. (Did you know that most weightlifting accidents happen during practice with lighter weights, rather than at competitions when they're using really heavy weights? It's exactly when you don't pay attention that you make dangerous mistakes.)

It seems from our understanding that it'd be really useful to determine the minimum-absolute-difference. Following this path will lead us to a solution, but on the way we'll start with a straightforward approach (which we can ultimately make a lot faster).

# A Straightforward Approach (that can ultimately be improved)
Let's just try to find a single case of the min-abs-diff.
Diana Gaona nicely captured how to search for this in Javascript:
```js
for(let i= 0; i < arr.length; i++) {
    for(let j = i+1 ; j < arr.length; j++){
        if(Math.abs(arr[i] - arr[j]) < minDiff){
            minDiff = Math.abs(arr[i] - arr[j])
        }
    }
}
```
And for variety's sake, here is a Python function doing the same thing.
```python
def SingleMAD(arr):
    mad = None
    for i in range(len(arr)):
        for j in range(i+1, len(arr)):
            if mad is None: mad = AbsDiff(arr[i], arr[j])
            else: mad = min(mad, AbsDiff(arr[i], arr[j]))
    return mad
```
The idea of "visiting" every pair in an array with the nested loop is a really fundamental tool.
It's extremely valuable to internalize it.
Not only will it be extremely valuable to see how this first approach works, but also to see the ideas we use to make it faster.
Many people write production code like the above in their jobs. And then later at their jobs, they need to make it faster, and they'll do things like what we'll do momentarily.
This is real stuff!

Anyways, we have that loop. We can find at least one case of the minimum-absolute-difference in the array. But we want to find the list of all such pairs. How do we do that?
We can build off this approach, which I'll show below.
The idea is that we looked through every pair for the min-abs-diff, and remembered that *mad*.

We simply search through every pair *again*, this time seeing if they produce the *mad*. We've already checked that that's the real minimum, so we can go ahead and save it to our result list directly.

This code would look like this:
```python
def AbsDiff(a, b): return abs(a-b)
class Solution:
    def minimumAbsDifference(self, arr: List[int]) -> List[List[int]]:
        mad = None
        for i in range(len(arr)):
            for j in range(i+1, len(arr)):
                if mad is None: mad = AbsDiff(arr[i], arr[j])
                else: mad = min(mad, AbsDiff(arr[i], arr[j]))
        
        res = []
        for i in range(len(arr)):
            for j in range(i+1, len(arr)):
                if AbsDiff(arr[i], arr[j]) == mad:
                    l = min(arr[i], arr[j])
                    r = max(arr[i], arr[j])
                    res.append([l, r])
        res.sort()
        return res
```
That's a complete solution! A few things:
1. Instead of calling **SingleMAD**, our helper function above, I "inlined" (copy-and-pasted the definition :)) directly into our solution. I did this just to make the "symmetry" between our two nested loops very clear. I would recommend calling the helper function in reality.
2. You can see in the second nested loop I do this weird thing where "l = min" and "r = max". I'm basically sorting the pair "arr[i], arr[j]" as required by the leetcode problem (we need to list the pairs such that the first element in the pair is smaller than the second element in the pair).
3. The problem also requires that we sort our result list (res), which I do just before returning it.

So there's a few rough edges, but this works!
Well, sort of :). If you submit this to leetcode, your solution will (likely) time-out.
This solution has a *nested for-loop*, and the rule-of-thumb holds here: it is taking "quadratic" time, i.e., it takes O(n^2) time.
Of course there are two such nested loops, but because they're next to each other (rather than nested again), our time is O(n^2) + O(n^2) = O(n^2). Weird, huh?

# Improving Our Efficiency
So we have working code, which is great, but it takes too long, which is not great.
Quadratic time is in a really annoying sort of "sweet spot" -- it's fast enough that on small inputs it seems fine, but then when the inputs get large enough it suddenly gets way too slow.
For this reason, this inefficiency we're encountering here is just about the most common sort of "performance bug" you'll hit in your careers.
Even if you never make such a bug, I'm sure your colleagues will :).

There may be problems where we can't make it faster, but in this case we can think more about the nature of our problem.
If we focus on some fixed number, *x = arr[i]*, and we think about what *y = arr[j]* can lead to the minimum-abs-diff with *x*, we may have the intuition that *y* should be the next-biggest value after *x*. 
The whole point is that we want to minimize the distance between *x* and *y*.
Consequently, it would be very natural to *sort* the input array before doing anything. What will that give us?
Let's return to our helper function:
```python
def SingleMAD(arr):
    mad = None
    for i in range(len(arr)):
        for j in range(i+1, len(arr)):
            if mad is None: mad = AbsDiff(arr[i], arr[j])
            else: mad = min(mad, AbsDiff(arr[i], arr[j]))
    return mad
```
Now imagine that we can trust *arr* is sorted.
We'll see that the *j* loop can be really simplified. Instead of having to look through all the rest of the array, we know the *only* candidate we care about is right next to arr[i]. So in other words:
```python
def SingleMAD(arr):
    mad = None
    for i in range(len(arr)-1):
        if mad is None: mad = AbsDiff(arr[i], arr[i+1])
        else: mad = min(mad, AbsDiff(arr[i], arr[i+1]))
    return mad
```
Wow! We've entirely gotten rid of the inner loop. We've gone from O(n^2) to O(n)! (Of course, we need to sort the array, but we'll get to that.)
There are a few legitimate "wait, does this work" questions. Remember: you'll need to defend your code to skeptical (nice! But still skeptical) colleagues so you should absolutely make sure you really understand how your code works.

## Establishing that this is correct!
1. Don't we need to check arr[i+1] *and* arr[i-1]? No, we'll only need to check one "direction". We "already checked" arr[i], arr[i-1] in the previous iteration, basically. Implicit in this is that AbsDiff(a, b) = AbsDiff(b, a). (This is true also for, e.g., addition or multiplication.)
2. How can we really convince ourselves that the *mad* isn't made from some, say, arr[i] and arr[i+7]? How can we really trust that we *only* need to look one space ahead? This is a great focus on correctness, and thanks to Rupa Datta for really driving the result that we can prove our optimization is correct. Here is the discussion we had. (Even though people may be really pursuaded by the intuition above, well -- a lot about programming is *un*intuitive so that's not usually enough.)
- We've sorted the array, so it looks like [a, b, c, ..., z] with a < b, b < c, c < d, and so on.
- Our concern can be expressed like, "is it possible that c - b < a - b?". This is saying that "can it be that the absdiff of (a, c) is *smaller* than the absdiff of (a, b)?" If this is really possible, then we would have missed the true absolute difference. So, is that situation possible?
  - Note I'm leaving out the "abs" in c - b < a - b. This is because we don't need it, as we already know that c > a and b > a, so the difference must be positive. (*That* may be pretty unintuitive! Make sure you understand that :)) It makes the rest of our reasoning that much easier to build off that fact.
- We have two absolutely true facts: a < b, and b < c. A natural (equally true) consequence is that a < c. This is all from having sorted *arr*.

Now we're considering the hypothesis, "can it be such that c - b < a - b?". Well, if you've ever "solved for x" in algebra, you remember those techniques where you can add 7 to both sides of the equation, and that sort of thing? That reasoning works here too: we can (for instance), add *b* to both sides of that inequality: c - b < a - b is just-as-true-as c - b + b < a - b + b, which is just-as-true-as c < a. But wait, we already have the fact that a < c. So it *can't* be that c < a, and we can push that conclusion all the way backwards and conclude "no, we cannot have the situation where the absdiff of (a, c) is smaller than the absdiff of (a, b)".

Phew! Our optimization is correct. Thank goodness.

# Finishing our performance improvement:
So we're confident that this works:
```python
def SingleMAD(arr):
    mad = None
    for i in range(len(arr)-1):
        if mad is None: mad = AbsDiff(arr[i], arr[i+1])
        else: mad = min(mad, AbsDiff(arr[i], arr[i+1]))
    return mad
```
When *arr* is sorted. The same approach will work for our second loop, when we searching for all pairs. Our final code could look like this:
```python
def AbsDiff(a, b): return abs(a-b)
class Solution:
    def minimumAbsDifference(self, arr: List[int]) -> List[List[int]]:
        
        arr.sort()
        
        mad = None
        for i in range(len(arr)-1):
            if mad is None: mad = AbsDiff(arr[i], arr[i+1])
            else: mad = min(mad, AbsDiff(arr[i], arr[i+1]))
        
        res = []
        for i in range(len(arr)-1):
            if AbsDiff(arr[i], arr[i+1]) == mad:
                res.append([arr[i], arr[i+1]])
                
        return res
```
Wow! It's actually even fewer lines of code than our earlier approach (though of course we calling sort, for instance).
What is the performance of this code?
Well, sorting takes O(n log n). There's no real getting around that.
Our two loops are each O(n), and they're *not* nested, so we can just add them.
We end up with O(n log n) + O(n) + O(n) = O(n log n).

Remember: O(n log n) is a *lot* faster than O(n^2). So this is a great performance improvement!

## Take-Away
When faced with a O(n^2) loop and if you're charged with making it faster, a good tool to try (sadly, no guarantees) is to see if there's some sorting you can do.
Even if it's not an explicit sort, it can be something like associating an index with each thing (or storing it in a hash table).
The goal is that you bring thing things we want to look at "closer together" so what used to be the *nested* loop is instead a few instructions.

And remember: getting from O(n^2) to O(n log n) is (almost...) always a *big* performance gain.

# Additional Discussion
Here's some notes from the great discussions we've had:
1. In this problem we're allowed to modify the input array. What if we weren't -- how could we sort?
The "clever" answer is to simply create a local copy of the array, and sort *that*, and do all your later reasoning with that sorted array.
Now, copying an array is also expensive (it's still asymptotically "worth it", to avoid sorting, but allocating more memory can be expensive in-practice).
People do that often enough.
A halfway-point would be to store *some* local data rather than copying the whole array. I don't see a natural application of that here, but it may come up in other situations.

# Solutions Appendix
The python solution above works, but here are some solutions Pursuiters came up with.
(I did some minor edits.)
## Diana Gaona's solution:
```js
var minimumAbsDifference = function(arr) {
    let sorted = arr.sort((a, b)=> a-b)

    let minDiff = minAbsDiff(arr);

    let resultPairs = [];
    
    for(let i = 0 ; i < sorted.length; i++){
        if(Math.abs(sorted[i] - sorted[i+1]) == minDiff){
            resultPairs.push([sorted[i],sorted[i+1]])
        }
    }
    
    return resultPairs; 
};

//Find the minimum absolute difference
const minAbsDiff = (sorted) => {
    let minDiff = Number.POSITIVE_INFINITY;
    for(let i= 0; i < sorted.length; i++) {
        if(Math.abs(sorted[i] - sorted[i+1]) < minDiff){
            minDiff = Math.abs(sorted[i] - sorted[i+1])
        }
    }
    return minDiff;
}
```
## Rupa Datta's solution:
```js
var minimumAbsDifference = function(arr) {
    // Edge Case
    if (arr.length < 2) return [];

    let sortedArr = [...arr].sort((a, b) => a - b);

    let minAbsDiff = findMinAbsDiff(sortedArr);

    let outputArr = [];
    for(let i = 0; i < sortedArr.length - 1; i++) {
        // References
        let currEl = sortedArr[i];
        let nextEl = sortedArr[i + 1];
        // Populating outputArr with pairs
        if (nextEl - currEl === minAbsDiff) {
            outputArr.push([currEl, nextEl]);
        }
    }
    return outputArr;
};

const findMinAbsDiff = (arr) => {
    let minAbsDiff;
    for(let i = 0; i < arr.length - 1; i++) {
        let difference = arr[i + 1] - arr[i];
        if (i === 0) minAbsDiff = difference; // instantiate it at the first iteration
        if (difference < minAbsDiff) minAbsDiff = difference;
    }
    return minAbsDiff;
}
```
## T'Keya Joy Steven's solution:
This one takes a slightly different approach: while we sort the array, we "optimistically" build up the array of smallest-abs-diff-seen-so-far.
If we see a pair creating a still-smaller absolute difference, we throw away our array and start anew with that smaller pair.
It's a neat approach!

The "cost" of that approach is that we could potentially build up a very large result array, but ultimately throw it away. Asymptotically this (potentially) doesn't add on to the runtime, but in general I try to avoid creating memory where I can. Conversely, an approach where we only build up an array of things we're *certain* we want in our output array is one I'd prefer.

The advantage of this approach is that we only need to scan through the sorted array once. Ignoring that we sorted it first, this approach is (confusingly) called an "on-line" algorithm and can be very valuable for enormous sets of data like huge log files. Sometimes you really can only search through your array exactly once! (Here we're also sorting, but nevermind that :)).
```js
const minimumAbsDifference = (arr) => {
    arr = arr.sort((a, b) => a-b);
    let minAbs = Number.POSITIVE_INFINITY;
    let minPairs;
    for(let i = 0; i < arr.length; i++) {
        if(arr[i+1] - arr[i] < minAbs) {
            minAbs = arr[i+1] - arr[i];
            minPairs = new Array();
            minPairs.push(new Array(arr[i], arr[i+1]));
        } else {
            if(arr[i+1] - arr[i] === minAbs) minPairs.push(new Array(arr[i], arr[i+1]));
        }
    };
    return minPairs;
};
```
