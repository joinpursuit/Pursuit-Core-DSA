//
//  Hash.swift
//  HashTableFun
//
//  Created by C4Q on 12/19/16.
//  Copyright © 2016 C4Q. All rights reserved.
//
import Foundation
class HashNode<K: Hashable, V> {
    var key: K
    var val: V
    var next: HashNode?
    var count = 0
    
    fileprivate init(key: K, val: V, next: HashNode?) {
        self.key = key
        self.val = val
        self.next = next
    }
}
class Hash<K: Hashable, V> {
    private let HASHSIZE = 443
    private let MULT = 43
    private var table: [HashNode<K, V>?]
    let buckets = 443
    
    init() {
        table = Array(repeating: nil, count: Int(HASHSIZE))
    }
    
    private func hash(_ el: K) -> Int {
        //return 3
        return abs(el.hashValue) % HASHSIZE
    }
    
    //
    //    func hash(_ s:String) -> Int {
    //        var h :Int = 0;
    //        for char in s.unicodeScalars where char.isASCII {
    //            // overflow?
    //            h = h * MULT + Int(char.value);
    //        }
    //        return Int(h % HASHSIZE);
    //    }
    
    func insert(_ el: K, _ val: V) {
        let h = hash(el)
        
        var n: HashNode<K,V>
        
        if let node = table[h] {
            var currentNode: HashNode? = node
            while currentNode != nil {
                if currentNode!.key == el {
                    currentNode!.val = val
                    return
                }
                currentNode = currentNode?.next
            }
        }
        
        // search for the key
        // if found go down the list
        if table[h] != nil {
            n = table[h]!
            repeat {
                if el == n.key {
                    n.count += 1
                    return
                }
                
                if n.next != nil {
                    n = n.next!
                }
                else {
                    break
                }
            } while true
        }
        
        // in the cases where we didn't find the value
        // create a new one.
        // notice that this works whether or not the bucket has other values
        n = HashNode<K, V>(key: el, val: val, next: table[h])
        table[h] = n
    }
    
    func get(key: K) -> V? {
        if let node = table[hash(key)] {
            var currentNode: HashNode? = node
            while currentNode != nil {
                if currentNode!.key == key {
                    return currentNode!.val
                }
                currentNode = currentNode?.next
            }
        }
        return nil
    }
    
    func keys() -> [K] {
        var retArray = [K]()
        for i in 0..<HASHSIZE {
            if let el = table[i] {
                retArray.append(el.key)
            }
        }
        return retArray
    }
    
    func getBuckets () -> [[K]?] {
        var buckets = [[K]?]()
        
        for element in table {
            if let node = element {
                var arr = [K]()
                arr.append(node.key)
                var currentNode: HashNode? = node.next
                while currentNode != nil {
                    arr.append(currentNode!.key)
                    currentNode = currentNode?.next
                }
                buckets.append(arr)
            } else {
                buckets.append(nil)
            }
        }
        return buckets
    }
}
