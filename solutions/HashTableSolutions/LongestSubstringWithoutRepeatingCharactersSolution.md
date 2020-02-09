```python
def allUnique(s):
    if len(set(s)) == len(s): return True

def QuadraticTooSlowSolution(s: str) -> int:
    if len(s) == 0:
        return 0
    r = 1
    for t in range(len(s)):
        #print ("t = ", t)
        for l in range(t, len(s)+1):
            #print("l = ", l)
            #print("trying {", s[t:l], "}")
            if allUnique(s[t:l]):
                r = max(r, len(s[t:l]))
    return r

class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        # the solution they mention is a "sliding window"
        
        if len(s) == 0: return 0
        
        r = 1
        
        window_start = 0
        while window_start < len(s):
            window_end = window_start+1
            while window_end < len(s) and s[window_end] not in s[window_start:window_end]:
                window_end += 1
            # now s[window_start:window_end] is as long as possible
            r = max(r, len(s[window_start:window_end]))
            # now move window_start up as much as possible
            old_start = window_start
            if window_end < len(s):
                assert(s[window_end] in s[window_start:window_end])
                while s[window_end] in s[window_start:window_end] and window_start < window_end:
                    window_start += 1
            else:
                # we can't do any better.
                return r
            # complicated IV reasoning: say s is len 1. Then the above while loop never runs
            # Ah, but we can conclude that window_start or window_end is incremented each time
            # the while loop runs. So I'll hack and say that window_start should never be the last
            # character, and default the result to 1.
        return r
```
