//
//  LinkedListTesting.swift
//  LinkedListsHomework
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import XCTest
@testable import LinkedListsHomework

class LinkedListTesting: XCTestCase {
    
    var myList = LinkedList<Int>()
    var myCopy = LinkedList<Int>()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        myList.head.key = 5
        myList.head.next = Node()
        myList.head.next?.key = 14
        myList.head.next?.next = Node()
        myList.head.next?.next?.key = 30
        
        
        myCopy.head.key = 5
        myCopy.head.next = Node()
        myCopy.head.next?.key = 14
        myCopy.head.next?.next = Node()
        myCopy.head.next?.next?.key = 30

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCount() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssert(myList.count == 3)
    }
    
    func testAppend() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        myCopy.head.next?.next?.next = Node()
        myCopy.head.next?.next?.next?.key = 6
        myList.append(element: 6)
        XCTAssert(myList.head.next?.next?.next?.key == myCopy.head.next?.next?.next?.key)
    }
    func testInsert() {
        let newNode = Node<Int>()
        newNode.key = 40

        let nextNode = myCopy.head.next
        myCopy.head.next = newNode
        newNode.next = nextNode
        
        myList.insert(40, at: 1)
        
        XCTAssert(myList.head.key == myCopy.head.key)
        XCTAssert(myList.head.next?.key == myCopy.head.next?.key)
        XCTAssert(myList.head.next?.next?.key == myCopy.head.next?.next?.key)
        XCTAssert(myList.head.next?.next?.next?.key == myCopy.head.next?.next?.next?.key)
        
    }
    func testContains() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssert(myList.contains(element: 5) == true)
        XCTAssert(myList.contains(element: 14) == true)
        XCTAssert(myList.contains(element: 30) == true)
        XCTAssert(myList.contains(element: 1) == false)
        XCTAssert(myList.contains(element: 0) == false)
        XCTAssert(myList.contains(element: 311) == false)
        
    }
    
    func testRemove() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        myCopy.head.next = myCopy.head.next?.next
        myList.remove(at: 1)
        XCTAssert(myList.head.key == myCopy.head.key)
        XCTAssert(myList.head.next?.key == myCopy.head.next?.key)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
