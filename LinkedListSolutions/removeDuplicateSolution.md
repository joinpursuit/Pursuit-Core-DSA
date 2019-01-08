  ```js
  LinkedList.prototype.removeDuplicates = function () {
        prev = this._head;
        current = this._head.next;
        hash = {};
        while(current != null) {
            if(!hash[current.data]) {
                hash[current.data] = true;
            } else {
                prev.next = current.next;
                this._size--;
            }
            prev = current;
            current = current.next;
        }
    }
    
    ```
    O(N)
    
    No extra memory? Will need to compare each element with each element. O(N^2)
    
    
