//
//  Stack.swift
//  StackHomeworkProblems
//
//  Created by C4Q  on 10/30/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Stack<T> {
    
    private var arr = Array<T>()
    
    func pop() -> T? {
        return arr.popLast()
    }
    
    func push(element: T) {
        arr.append(element)
    }
    
    func peek() -> T? {
        guard arr.count > 0 else {
            return nil
        }
        return arr[arr.count - 1]
    }
    
    func isEmpty() -> Bool {
        return arr.count == 0
    }
}

extension Stack {
    func map(closure: (Int) -> Int) -> Stack {
        let reversedStack = Stack()
        let returnStack = Stack()
        while !self.isEmpty {
            let temp = self.pop()!
            reversedStack.push(temp)
        }
        while !reversedStack.isEmpty {
            let temp = reversedStack.pop()!
            self.push(temp)
            let tempWithClosure = closure(temp)
            returnStack.push(tempWithClosure)
        }
        return returnStack
    }
}

let myStack = Stack()
myStack.push(4)
myStack.push(10)
myStack.push(7)

let myClosure = {(a: Int) -> (Int) in
    return a * 2}

let mappedStack = myStack.map{myClosure}


