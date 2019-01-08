const reverseList = function(head) {
    let node = head;
    let previous = null;
    while(node) {
        let temp = node.next;
        node.next = previous
        previous = node 
        node = temp  
        
    }
    return previous 
};
