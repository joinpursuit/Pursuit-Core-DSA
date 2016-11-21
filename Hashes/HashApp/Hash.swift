//
//  Hash.swift
//  HashApp
//
//  Created by Jason Gresh on 10/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

class HashNode<Element: Hashable> {
    var key: Element
    var next: HashNode?
    var count = 0
    
    fileprivate init(key: Element, next: HashNode?) {
        self.key = key
        self.next = next
    }
}

class Hash<Element: Hashable> {
    private let HASHSIZE = 443
    private let MULT = 43
    private var table: [HashNode<Element>?]
 
    init() {
        table = Array(repeating: nil, count: Int(HASHSIZE))
    }
    
    private func hash(_ el: Element) -> Int {
        return el.hashValue
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
    
    func insert(_ el: Element) {
        let h = hash(el) % 443
        
        var n: HashNode<Element>
        
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
        n = HashNode<Element>(key: el, next: table[h])
        table[h] = n
    }
    
    func keys() -> [Element] {
        var retArray = [Element]()
        for i in 0..<HASHSIZE {
            if let el = table[i] {
                retArray.append(el.key)
            }
        }
        return retArray
    }
}

