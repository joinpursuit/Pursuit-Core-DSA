# Advanced Trees

# 1.Tree Refresher
[Previous Lesson](https://github.com/joinpursuit/Pursuit-Core-DSA/tree/master/lessons/Trees/ios)

# 2.Trees vs. Binary Trees

## Non-Binary Tree

Consider if you were modeling a file diectory system using trees. A binary tree wouldn't work as a folder (represented by a node) should have access to more than two items. 


![File Structure](https://www.linuxtrainingacademy.com/wp-content/uploads/2014/03/linux-directory-tree.jpg)


```swift
class Node {
   let children: [Node]
   let val: Int
   init(val: Int, children: [Node]) {
      self.val = val
      self.children = children
   }
}
```

# 3.Binary Search Trees

![BST](https://koenig-media.raywenderlich.com/uploads/2016/08/SwiftAlgClub-BinarySearch-feature.png)

Binary Search Trees are binary trees that perform insertions and deletions while staying sorted. This allows for a search runtime of  O(log n).

Insertion considers the folowing: 

If the current node is empty, you insert the new node here.
If the new value is smaller, you go down the left branch.
If the new value is greater, you go down the right branch.


```swift
func insert(element: T) {
        let node = TreeNode(data: element)
        if let rootNode = self.rootNode {
            self.insert(rootNode, node)
        } else {
            self.rootNode = node
        }
    }
    
    // RECURSIVE FUNCTION
    private func insert(_ rootNode: TreeNode<T>, _ node: TreeNode<T>) {
        if rootNode.data > node.data {
            if let leftNode = rootNode.leftNode {
                self.insert(leftNode, node)
            } else {
                rootNode.leftNode = node
            }
        } else {
            if let rightNode = rootNode.rightNode {
                self.insert(rightNode, node)
            } else {
                rootNode.rightNode = node
            }
        }
    } 
```
   
   As for searching, the same logic applies:
   
   ```swift
   func search(element: T) {
        self.search(self.rootNode, element)
    }
    
    private func search(_ rootNode: TreeNode<T>?, _ element: T) {
        
        guard let rootNode = rootNode else {
            print("INVALID NODE : \(element)")
            return
        }
        
        print("ROOT NODE \(rootNode.data)")
        if element > rootNode.data {
            self.search(rootNode.rightNode, element)
        } else if element < rootNode.data {
            self.search(rootNode.leftNode, element)
        } else {
           print("NODE FOUND : \(rootNode.data)")
        }
    }
   ```

# 4.Binary Heaps

Heaps are very similar to BST in the sense that it is binary and has a sorting system where the highest priority node is the root. Here we have minheaps where nodes with lower values have higher priority and maxheaps where higher value means higher priority. Despite the tree structure, heaps are implemented with an Array and clever math 

![heap](https://koenig-media.raywenderlich.com/uploads/2017/06/HeapPriorityQueue-11.png)

Given the node at index i, its left child node can be found at index 2i + 1 and its right child node can be found at index 2i + 2.

![math](https://koenig-media.raywenderlich.com/uploads/2017/06/HeapPriorityQueue-13-1.png)

```swift
struct Heap<Element> {
  var elements : [Element]
  let priorityFunction : (Element, Element) -> Bool
    
    
    
    init(elements: [Element] = [], priorityFunction: @escaping (Element, Element) -> Bool) {
      self.elements = elements
      self.priorityFunction = priorityFunction
      buildHeap()
    }

    mutating func buildHeap() {
      for index in (0 ..< count / 2).reversed() { // 5
        siftDown(elementAtIndex: index) // 6
      }
    }
    
    

    var isEmpty : Bool {
      return elements.isEmpty
    }

    var count : Int {
      return elements.count
    }
    
    func isRoot(_ index: Int) -> Bool {
      return (index == 0)
    }

    func leftChildIndex(of index: Int) -> Int {
      return (2 * index) + 1
    }

    func rightChildIndex(of index: Int) -> Int {
      return (2 * index) + 2
    }

    func parentIndex(of index: Int) -> Int {
      return (index - 1) / 2
    }
    
    func isHigherPriority(at firstIndex: Int, than secondIndex: Int) -> Bool {
      return priorityFunction(elements[firstIndex], elements[secondIndex])
    }
    
    func highestPriorityIndex(of parentIndex: Int, and childIndex: Int) -> Int {
      guard childIndex < count && isHigherPriority(at: childIndex, than: parentIndex)
        else { return parentIndex }
      return childIndex
    }
        
    func highestPriorityIndex(for parent: Int) -> Int {
      return highestPriorityIndex(of: highestPriorityIndex(of: parent, and: leftChildIndex(of: parent)), and: rightChildIndex(of: parent))
    }
    
    
    mutating func swapElement(at firstIndex: Int, with secondIndex: Int) {
      guard firstIndex != secondIndex
        else { return }
        elements.swapAt(firstIndex, secondIndex)
    }
    
    
    mutating func enqueue(_ element: Element) {
      elements.append(element)
      siftUp(elementAtIndex: count - 1)
    }
    
    mutating func siftUp(elementAtIndex index: Int) {
      let parent = parentIndex(of: index)
      guard !isRoot(index),
        isHigherPriority(at: index, than: parent)
        else { return }
      swapElement(at: index, with: parent)
      siftUp(elementAtIndex: parent)
    }
    
    mutating func dequeue() -> Element? {
      guard !isEmpty
        else { return nil }
      swapElement(at: 0, with: count - 1)
      let element = elements.removeLast()
      if !isEmpty {
        siftDown(elementAtIndex: 0)
      }
      return element
    }
    
    mutating func siftDown(elementAtIndex index: Int) {
      let childIndex = highestPriorityIndex(for: index)
      if index == childIndex {
        return
      }
      swapElement(at: index, with: childIndex)
      siftDown(elementAtIndex: childIndex)
    }
}
```
