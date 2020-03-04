# Merge Intervals Solution

The solution for this problem motivates a number of very-useful tools when thinking about *intervals*.
Intervals are just a pair of numbers, where the first number is smaller than the second number.
They come up when you think about time (you have a meeting from 2pm to 4:30pm, maybe we can write that as [1400, 1630]) or distances.

Intervals may be represented as an object with 2 fields, or a length-2 array, or other things! While it's a bit "bigger" than an integer, it's better to think of them as a "value" than a "data structure". They have very few moving parts, like integers or (sort of) strings.

I can't say intervals actually come up super-often in my day-job, but I've seen a lot of problems using them, and they seem to be just the right level of difficulty where you can ask interesting questions about them without getting ridiculous.
In particular, they introduce a lot of neat ways of thinking about loops (as we'll see here), and the sort of thinking this will exercise is 100% useful professionally!

This is not the right venue to get into intervals too much, but here's some warm-up questions to make sure you're comfortable with them:
1. Implement the function "NumberInInterval(i, x)" that returns true if the number "x" is contained inside the interval "i". (If you're not sure what makes a number "inside" an interval, that's something to ask about! Even if you think you know, there are some design decisions that make this a big ambiguous)
2. Implement the function "IntervalsOverlap(i, j)" that returns true if the interval i overlaps with the interval j. (Again, make sure you really know what "overlap" means. Again, there is some very slight ambiguity here. See example 2 of the leetcode question, for instance.)

So on to the problem:

## Approaching the Problem

If you draw the intervals out on a piece of paper, you'll find that it's quite easy for humans to determine overlapping intervals.
Try to see how it is you're figuring out the answer "by hand".

When I do this, I feel like I'm scanning left-to-right, and for each interval asking myself "is this next interval I see overlapping with my current interval?". If so, I meld them together. Otherwise, I switch my context to that new, disjoint interval.
So my approach is to translate that human intuition into code.
(I'll add this is a bit of a fiction -- I've seen this problem a lot, so I'm really familiar with it. In fact, I would use a variation of this problem as my own interview question.)

To translate my intuition to code, I'll need a few steps:
1. As a person I looked at the intervals left-to-right. That means I see intervals in a *sorted order*, sorted by their starting points. So I need to sort the intervals by their starting points.
2. Then I go through that sequence, and my intuition says there are 2 main alternatives: either the next interval overlaps with my "latest" interval and my "latest" interval should be extended, *or* the next interval is much farther away, and so I should make that a new, disjoint interval.

(Both of those steps are pretty dense. If you don't fully understand them, try to write out a question about what you don't understand and explain to yourself why you're confused.)

This suggests a psuedocode:
```python
def merge(intervals):
    # Sort the intervals *by starting point*, somehow
    intervals.sort()
    
    # Define our result list
    resultList = []
    
    # Go through each interval p in our sorted sequence:
    for p in intervals:
    
        if overlapsWithLatest(resultList, p):
            mergeWithLatest(resultList, p)
        
        else:
            # if we don't merge them, we just append!
            resultList.append(p)

    return resultList
```
And in that sometimes-cool, sometimes-annoying python way, this is actually valid python -- we just need to define the missing functions and make sure things like **intervals.sort()** do what we want.

Let's follow through on this approach and see if we can make it a reality.

### Sorting Intervals

If you draw out the intervals on a piece of paper, and look at them, you may build an important intuition: you can sort intervals, "left to right", by their starting point.
It may not have been intuitive that you can sort intervals -- after all, it isn't clear if [2, 4] is "bigger" or "smaller" than [1, 10].
We will sort our array of intervals with the following rule: if we have an interval [a, b] and an interval [c, d], we will say [a, b] is smaller than ("comes before") [c, d] exactly when a < c.
What if c == a? Then we'll break those ties by looking at b < d. And if those are equal, well -- just as x < y is false when x == y, so too will our interval-comparison be false when the intervals are exactly equal.

As it happens, this is how the sort method works on a list-of-lists in Python. But say it didn't, what could we do? Well, almost every sorting algorithm in every language allows you to define the comparison function used by that sort.
This is sometimes called the "comparator", the thing-that-compares.
By default, the comparator is the "<" function, i.e.,
```python
def lessThan(a, b): return a < b
```
If we want to be explicit about how we're sorting lists in Python, we would write:
```python
def lessThanIntervals(i, j):
    if i[0] < j[0]:
        return True
    if i[0] == j[0]:
        return i[1] < j[1]
    return False
```
And you would do something like:
```python
def merge(intervals):
    interval.sort(comparator = lessThanIntervals)
```
Though in actuality you need a bit more syntactic glue, which I won't get into here. The core idea is that sorting is a more general tool than you might have first guessed. People really try to provide hooks so you can use your favorite sorting method to put things in any sort of (sensible) order you'd like, even if at-first-glance the order doesn't seem "sorted" in the traditional sense.

OK, we can definitely look at these intervals in the order we want, sorted by their starting points. Yay. Now what?

## Implementing the Solution
For all our talk of comparators above, the default sort method does what we want here.
So now we "just" need to implement our function above, and then convince ourselves that the code is correct.

```python
def overlapsWithLatest(results, i):
    if results == []: return False

    latestIndex = len(results)-1
    return results[latestIndex][1] >= i[0]
```
What on Earth is that doing?
The first **if** is straightforward enough: if we don't have any interval in our results at all, then we can't be overlapping the interval **i**.
Otherwise, we have our latest interval in "results". Recall the idea is that we're building up a new sequence of intervals in **results**, so (results[latestIndex]) is itself an interval. So *results[latestIndex] [1]* is saying "get us the end-point of the latest interval in our result".
If the *end* of our latest results-interval is *after or equal* to the *start* of our new interval, that's an overlap!
If you're confused, please honestly take the time to draw out some example intervals. There's a lot of complicated indexing going on here -- here's a much more verbose alternative:
```python
def overlapsWithLatest(results, i):
    if results == []: return False

    latestIndex = len(results)-1
    latestResultInterval = results[latestIndex]
    
    resultStartingPoint = latestResultInterval[0]
    resultEndingPoint = latestResultInterval[1]
    
    newIntervalStartingPoint = i[0]
    newIntervalEndingPoint = i[1]
    
    # "assert" means "crash if the condition is false".
    # This is a technique to try to express what should be
    # impossible. In this case, we're basically asserting that
    # we really did sort the intervals as we wanted.
    assert(resultStartingPoint <= newIntervalStartingPoint)
    
    # Because of the above requirement, we know that our
    # latestResultInterval startb before our newInterval.
    # Therefore:
    
    # If our resultsEndingPoint gets "far enough" to touch
    # the starting point of the new interval, that means we're
    # overlapping
    if resultsEndingPoint >= newIntervalStartingPoint:
        return True
    
    return False
```

Phew! This overlaps code is pretty interesting: we can write it very succinctly, but the reasoning about how it works is a lot more involved. That's the hallmark of a DSA-focused interview question, if there ever is one.

All that's left is to implement **mergeWithLatest**.
This is refreshingly (annoyingly?) straightforward:
```python
def mergeWithLatest(resultList, i):
    ind = len(resultList)-1
    resultList[ind][1] = max(resultList[ind][1], i[1])
```
I'm not sure if we need the call to "max" here, but I like being careful.

And suddenly it seems we're done!

## Convincing Ourselves It Works
Let's return to the psuedocode for a moment.
```python
def merge(intervals):
    # Sort the intervals *by starting point*, somehow
    intervals.sort()
    
    # Define our result list
    resultList = []
    
    # Go through each interval p in our sorted sequence:
    for p in intervals:
    
        if overlapsWithLatest(resultList, p):
            mergeWithLatest(resultList, p)
        
        else:
            # if we don't merge them, we just append!
            resultList.append(p)

    return resultList
```
Having gone through this exercise, we know a few things:
1. We have sorted our intervals by their starting point. So when we get to the **for** loop, we're able to say that each interval we see *overlaps with the latest interval in our resultList, or it comes later*.
2. We start our loop adding the first interval *p* to our result list. Each iteration, we only either *extend* that interval to cover the next overlap, or we insert a new, non-overlapping interval.
### Wait, what about the first iteration, where resultLists is empty?
We handle that in **overlapsWithLatest**. This is in-line with our intuition: if there's nothing to overlap with, that means surely our new interval can't have an overlap with our results list.

### Will we miss any opportunity to merge two overlapping intervals?
Please take the time to really convince yourself that this algorithm works. Pretend that *you* have to defend its implementation to a skeptic.
The core "magic" is expressed in that assert in the verbose implementation of **overlapsWithLatest**.
The interaction between having sorted the intervals, and how our loop consistently processes each new interval, is how we maintain the correctness of this algorithm.

## Our Solution (Python)
Here's all the pieces pasted together. I tested it on the Leetcode auto-grader :)
```python
def mergeWithLatest(resultList, i):
    ind = len(resultList)-1
    resultList[ind][1] = max(resultList[ind][1], i[1])
def overlapsWithLatest(results, i):
    if results == []: return False

    latestIndex = len(results)-1
    return results[latestIndex][1] >= i[0]
def overlapsWithLatest2(results, i):
    if results == []: return False

    latestIndex = len(results)-1
    latestResultInterval = results[latestIndex]
    
    resultStartingPoint = latestResultInterval[0]
    resultEndingPoint = latestResultInterval[1]
    
    newIntervalStartingPoint = i[0]
    newIntervalEndingPoint = i[1]
    
    # "assert" means "crash if the condition is false".
    # This is a technique to try to express what should be
    # impossible. In this case, we're basically asserting that
    # we really did sort the intervals as we wanted.
    assert(resultStartingPoint <= newIntervalStartingPoint)
    
    # Because of the above requirement, we know that our
    # latestResultInterval startb before our newInterval.
    # Therefore:
    
    # If our resultsEndingPoint gets "far enough" to touch
    # the starting point of the new interval, that means we're
    # overlapping
    if resultEndingPoint >= newIntervalStartingPoint:
        return True
    
    return False


class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        # Sort the intervals *by starting point*, somehow
        intervals.sort()
    
        # Define our result list
        resultList = []
    
        # Go through each interval p in our sorted sequence:
        for p in intervals:
    
            if overlapsWithLatest2(resultList, p):
                mergeWithLatest(resultList, p)
        
            else:
                # if we don't merge them, we just append!
                resultList.append(p)

        return resultList
```
## My Original Solution (Python)
I too succumb to the temptation to avoid writing helper functions.
Here I use the value "i" to keep track of the latest result interval, where in our solution we recompute it each iteration.
(In Python you can actually use results[-1] to get the latest element of the list, but that's not a super-common tool available so I avoided using it.)
```python
class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        if intervals == []: return []
        
        intervals.sort()
        
        # New result collection -- it *must* be a list of intervals.
        res = []
        i = -1
        
        # Sorting gives us this neat structure: for each next interval
        # in our input, we have only 2 cases: we should "merge" it with
        # our current head, or we should append it wholesale, making it
        # our new head.
        for p in intervals:
            # If we have no interval in our results yet,
            # just append our current interval.
            if i == -1:
                res.append(p)
                i += 1
                continue

                
            # This is the overlap case. We know that
            # p[0] >= res[i][0], so we overlap only if it's also within
            # the "upper value" of res[i].
            if p[0] <= res[i][1]:
                res[i][1] = max(res[i][1], p[1])
                
            # The only remaining case is that p[0] exceeds our current head,
            # in which case we must make that our new head. Note that we
            # didn't increment i in the "then" case above!
            else:
                res.append(p)
                i += 1

        return res
```
