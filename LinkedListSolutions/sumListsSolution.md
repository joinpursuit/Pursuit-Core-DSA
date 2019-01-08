SOLUTION
It's useful to remember in this problem how exactly addition works. Imagine the problem: 617
+295
First, we add 7 and 5 to get 12. The digit 2 becomes the last digit of the number, and 1 gets carried over to the next step. Second, we add 1, 1, and 9 to get 11 . 
The 1 becomes the second digit, and the other 1 gets carried over the final step. Third and finally, we add 1,6 and 2 to get 9. 
So, our value becomes 912.

We can mimic this process recursively by adding node by node, carrying over any "excess" data to the next node.
Let's walk through this for the below linked list:
7 ->1 ->6 + 5->9->2

We do the following:
1. We add 7 and 5 first, getting a result of 12. 2 becomes the first node in our linked list, and we "carry" the
1 to the next sum.
List: 2 -> ?
2. We then add 1 and 9, as well as the "carry;' getting a result of 11 . 1 becomes the second element of our
linked list, and we carry the 1 to the next sum.
List: 2 -> 1 -> ?
3. Finally, we add 6, 2 and our "carry;' to get 9. This becomes the final element of our linked list.
List: 2 -> 1 -> 9.

const addTwoNumbers = function(l1, l2) {
    let resultHead = new ListNode(null);
    let head = resultHead;
    let leftOver = 0;
    while(l1 || l2) {
        let val = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + leftOver;
        if(val >= 10) {
            leftOver = 1;
            val -= 10
            head.next = new ListNode(val);
            head = head.next
        } else {
            leftOver = 0;
            head.next = new ListNode(val);
            head = head.next
        }
         l1 = l1 ? l1.next : l1
        l2 = l2 ? l2.next  : l2
    }
    
    if(leftOver) {
        head.next = new ListNode(leftOver)
    }
    return resultHead.next
};
