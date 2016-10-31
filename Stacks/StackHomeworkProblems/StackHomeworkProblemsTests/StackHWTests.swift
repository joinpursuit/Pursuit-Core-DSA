//
//  StackHWTests.swift
//  StackHomeworkProblems
//
//  Created by C4Q  on 10/30/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import XCTest
@testable import StackHomeworkProblems

class StackHomeworkProblemsTests: XCTestCase {
    
    var myStack = Stack<Int>()
    var emptyStack = Stack<Int>()
    var myOtherStack = Stack<Int>()
    
    override func setUp() {
        super.setUp()
        myStack.push(element: 5)
        myStack.push(element: 9)
        myStack.push(element: 17)
        myStack.push(element: 30)
        
        myOtherStack.push(element: 15)
        myOtherStack.push(element: 120)
        myOtherStack.push(element: 2)
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    
    func testLargest() {
        XCTAssertTrue(largest(stack: myStack) == 30)
        XCTAssertTrue(largest(stack: myOtherStack) == 120)
    }
    
    func testSum() {
        XCTAssertTrue(sum(stack: myStack) == 61)
        XCTAssertTrue(sum(stack: myOtherStack) == 137)
    }
    
    func testReverse() {
        let myReversedStack = Stack<Int>()
        myReversedStack.push(element: 30)
        myReversedStack.push(element: 17)
        myReversedStack.push(element: 9)
        myReversedStack.push(element: 5)
        
        let userReversedStack = reverse(stack: myStack)
        
        for _ in 0..<3 {
            XCTAssertTrue(myReversedStack.pop() == userReversedStack.pop())
        }
    }
    
    func testIsEqual() {
        XCTAssertFalse(equalStacks(stackOne: myStack, stackTwo: myOtherStack))
        XCTAssertTrue(equalStacks(stackOne: myStack, stackTwo: myStack))
        XCTAssertTrue(equalStacks(stackOne: myOtherStack, stackTwo: myOtherStack))
        XCTAssertTrue(equalStacks(stackOne: emptyStack, stackTwo: emptyStack))
    }
    
    func testPushBottom() {
        let pushedBottomStack = Stack<Int>()
        pushedBottomStack.push(element: 40)
        pushedBottomStack.push(element: 5)
        pushedBottomStack.push(element: 9)
        pushedBottomStack.push(element: 17)
        pushedBottomStack.push(element: 30)

        XCTAssertTrue(equalStacks(stackOne: pushedBottomStack, stackTwo: pushBottom(stack: myStack, newElement: 40)))
        
    }
    
    func testIsBalanced() {
        XCTAssertTrue(isBalanced(str: "((()))"))
        XCTAssertFalse(isBalanced(str: "((())"))
        XCTAssertFalse(isBalanced(str: "(()((())()))"))
        XCTAssertTrue(isBalanced(str: "(()((())(())))"))
    }
    
    func testConvertToBinary() {
        XCTAssertTrue(convertToBinary(50) == "110010")
        XCTAssertTrue(convertToBinary(131) == "10000011")
        XCTAssertTrue(convertToBinary(27) == "11011")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
