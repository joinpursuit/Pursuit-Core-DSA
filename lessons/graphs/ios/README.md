# Graphs

## Introduction

### Graph Vocabulary

- A `Graph` is a data structure used to show the relationship of `verticies` and `edges`
- A `vertex` is a node that has a value and a list of edges
- An `edge` is a line connecting two verticies.  It can either be `weighted` or `unweighted`
- An `unweighted` graph is a graph where every edge has the same value (like a social network)
- A `weighted` graph is a graph where each edge can have different values (like traffic on roads connecting cities)
- A `undirected` graph is a graph where every edge connects verticies in both directions
- A `directed` graph is a graph where edges represent one-way paths

### Graph Types

| |Weighted | Unweighted |
|---|---|---|
| **Directed** | ![graph](http://www.krivalar.com/picture/graph/gpw.jpg) |  ![graph](http://www.krivalar.com/picture/graph/gp1.jpg) |
| **Undirected** | ![graph](https://i.stack.imgur.com/ea2UI.png) |![graph](https://i.stack.imgur.com/mPzx7.gif)




## Adjacency list representation

https://www.raywenderlich.com/773-swift-algorithm-club-graphs-with-adjacency-list

An adjacency list stores the edge lists per each vertex as shown below

![graph](https://koenig-media.raywenderlich.com/uploads/2017/01/graph4.png)

![graph](https://koenig-media.raywenderlich.com/uploads/2017/01/graph5.png)


To create our graph, we first must define the two structures that make up a graph: vertex and edge

```swift
public struct Vertex<T: Hashable>: Hashable, CustomStringConvertible {
  var data: T
    
    //vertex to be used as a key
    public var hashValue: Int {
        return "\(data)".hashValue
    }
    
    static public func ==(lhs: Vertex, rhs: Vertex) -> Bool {
      return lhs.data == rhs.data
    }
    
    public var description: String {
      return "\(data)"
    }
}

//create an enum to handle both types of edges

public enum EdgeType {
  case directed, undirected
}



public struct Edge<T: Hashable>: Hashable {
  public var source: Vertex<T>
  public var destination: Vertex<T>
    
    //since optional graph could be weighted or not
  public let weight: Double?
    
    public var hashValue: Int {
         return "\(source)\(destination)\(weight)".hashValue
     }
     
     static public func ==(lhs: Edge<T>, rhs: Edge<T>) -> Bool {
       return lhs.source == rhs.source &&
         lhs.destination == rhs.destination &&
         lhs.weight == rhs.weight
     }
}

```

we can then use a protocol to define the functionalities of our graphable list and conform to it with our adjacency list

```swift


//we can create a protocol to define a way to build a graph
protocol Graphable {
  associatedtype Element: Hashable //generics in protocols
  var description: CustomStringConvertible { get } //print graph
  
  func createVertex(data: Element) -> Vertex<Element> //create a vertex
  func add(_ type: EdgeType, from source: Vertex<Element>, to destination: Vertex<Element>, weight: Double?) //create any kind of edge
  func weight(from source: Vertex<Element>, to destination: Vertex<Element>) -> Double? //get weight between two vertices
  func edges(from source: Vertex<Element>) -> [Edge<Element>]? //get all edges from vertex
}




class AdjacencyList<T: Hashable>: Graphable {
    //dictionary that will track list
  public var adjacencyDict : [Vertex<T>: [Edge<T>]] = [:]
  public init() {}
    //set associated type to T
  public typealias Element = T
    
    public func createVertex(data: Element) -> Vertex<Element> {
      let vertex = Vertex(data: data)
      //add to the list and begin tracking the edges if not already on
      if adjacencyDict[vertex] == nil {
        adjacencyDict[vertex] = []
      }

      return vertex
    }
    
    //helper function to create a directed edge and then appending it to the source vertices' array of edges
    private func addDirectedEdge(from source: Vertex<Element>, to destination: Vertex<Element>, weight: Double?) {
      let edge = Edge(source: source, destination: destination, weight: weight) // 1
      adjacencyDict[source]?.append(edge) // 2
    }
    
    //helper function to create undirected edge and appending it to the source's edge array. because you can think of an undirected edge as going both ways, we call directed twice with the two verticies swapped
    private func addUndirectedEdge(vertices: (Vertex<Element>, Vertex<Element>), weight: Double?) {
      let (source, destination) = vertices
      addDirectedEdge(from: source, to: destination, weight: weight)
      addDirectedEdge(from: destination, to: source, weight: weight)
    }
    
    
    //add edge function to handle both directed and undirected edge
    public func add(_ type: EdgeType, from source: Vertex<Element>, to destination: Vertex<Element>, weight: Double?) {
      switch type {
      case .directed:
        addDirectedEdge(from: source, to: destination, weight: weight)
      case .undirected:
        addUndirectedEdge(vertices: (source, destination), weight: weight)
      }
    }
    
    //search array from source and find a matching destination. then return the weight
    public func weight(from source: Vertex<Element>, to destination: Vertex<Element>) -> Double? {
      guard let edges = adjacencyDict[source] else {
        return nil
      }
      
      for edge in edges {
        if edge.destination == destination {
          return edge.weight
        }
      }

      return nil
    }
    
    //get edges using source as key for list
    public func edges(from source: Vertex<Element>) -> [Edge<Element>]? {
      return adjacencyDict[source]
    }
    
    
    //print this description to see full graph
    public var description: CustomStringConvertible {
      var result = " "
      for (vertex, edges) in adjacencyDict {
        var edgeString = ""
        for (index, edge) in edges.enumerated() {
          if index != edges.count - 1 {
            edgeString.append("\(edge.destination), ")
          } else {
            edgeString.append("\(edge.destination)")
          }
        }
        result.append("\(vertex) ---> [ \(edgeString) ] \n ")
      }
      return result
    }
}
```



## DFS Traversal
https://www.raywenderlich.com/661-swift-algorithm-club-swift-depth-first-search

with depth first search you are trying traverse to reach the deepest part of the graph


![dfs](https://koenig-media.raywenderlich.com/uploads/2017/04/dfs-2.gif)


```swift
func depthFirstSearch(from start: Vertex<String>, to end: Vertex<String>, graph: AdjacencyList<String>) -> Stack<Vertex<String>> {
    
    //keep track of what we have seen to prevent loops
  var visited = Set<Vertex<String>>()
    //store potential paths
  var stack = Stack<Vertex<String>>()
  
    stack.push(start)
    visited.insert(start)
    
    //loop to check entire graph through stack
    outer: while let vertex = stack.peek(), vertex != end {

    //check for neighbors otherwise pop from stack
      guard let neighbors = graph.edges(from: vertex), neighbors.count > 0 else {
        print("backtrack from \(vertex)")
        stack.pop()
        continue
      }
      
        //go through  edges to add potential paths
      for edge in neighbors {
        if !visited.contains(edge.destination) {
          visited.insert(edge.destination)
          stack.push(edge.destination)
          continue outer
        }
      }
      
     //backtrack from vertex
      stack.pop()
    }

  return stack //will have path
}
```

## BFS Traversal

with breadth-first search, we look for a vertex immediate neighbors before going to the next 

![bfs](https://koenig-media.raywenderlich.com/uploads/2017/04/bfs1-1.gif)

```swift

enum Visit<Element: Hashable> {
  case source
  case edge(Edge<Element>)
}


 func breadthFirstSearch<Element>(from source: Vertex<Element>, to destination: Vertex<Element>, graph: AdjacencyList<Element>) -> [Edge<Element>]? {
    
 var queue = Queue<Vertex<Element>>()
    queue.enqueue(source)
    var visits : [Vertex<Element> : Visit<Element>] = [source: .source]

    while let visitedVertex = queue.dequeue() {
   
      if visitedVertex == destination {
       var vertex = destination
        var route: [Edge<Element>] = []

        while let visit = visits[vertex],
          case .edge(let edge) = visit {

          route = [edge] + route
          vertex = edge.source

        }
        return route 
      }
        let neighbourEdges = graph.edges(from: visitedVertex) ?? []
      for edge in neighbourEdges {
        if visits[edge.destination] == nil {
          queue.enqueue(edge.destination)
          visits[edge.destination] = .edge(edge)
        }
      }
    }
    return nil
}
```
