//
//  LinkedListsHomeworkThreeTests.swift
//  LinkedListsHomeworkThreeTests
//
//  Created by C4Q  on 10/26/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import XCTest
@testable import LinkedListsHomeworkThree

class LinkedListsHomeworkThreeTests: XCTestCase {
    
    var myList = LinkedList<Int>()
    var myCopy = LinkedList<Int>()
    var emptyList = LinkedList<Int>()
    var sizeOneList = LinkedList<Int>()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        myList.head.key = 5
        myList.head.next = Node()
        myList.head.previous = nil
        myList.head.next?.key = 14
        myList.head.next?.previous = myList.head
        myList.head.next?.next = Node()
        myList.head.next?.next?.key = 30
        myList.head.next?.next?.previous = myList.head.next
        
        
        myCopy.head.key = 5
        myCopy.head.next = Node()
        myCopy.head.previous = nil
        myCopy.head.next?.key = 14
        myCopy.head.next?.previous = myList.head
        myCopy.head.next?.next = Node()
        myCopy.head.next?.next?.key = 30
        myCopy.head.next?.next?.previous = myList.head.next
        
        sizeOneList.head.key = 4
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCount() {
        XCTAssert(myList.count == 3)
        XCTAssert(emptyList.count == 0)
        XCTAssert(sizeOneList.count == 1)
    }
    
    func testIsEmpty() {
        XCTAssert(myList.isEmpty() == false)
        XCTAssert(emptyList.isEmpty() == true)
        XCTAssert(sizeOneList.isEmpty() == false)
    }
    
    func testAppend() {
        myList.append(element: 50)
        myCopy.head.next?.next?.next = Node()
        myCopy.head.next?.next?.next?.key = 50
        myCopy.head.next?.next?.next?.previous = myCopy.head.next?.next
        var myListCurrent: Node? = myList.head.next?.next?.next
        var myCopyCurrent: Node? = myCopy.head.next?.next?.next
        while myListCurrent != nil && myCopyCurrent != nil {
            XCTAssert(myListCurrent?.key == myCopyCurrent?.key)
            myListCurrent = myListCurrent?.previous
            myCopyCurrent = myCopyCurrent?.previous
        }
    }
    
    func testGetElement() {
        let nodeIndexTwo = (myList.head.next?.next)!
        let testIndexTwo = myList.getElement(at: 2)!
        XCTAssert(nodeIndexTwo.key == testIndexTwo.key)
        
        let nodeIndexOne = (myList.head.next)!
        let testIndexOne = myList.getElement(at: 1)!
        XCTAssert(nodeIndexOne.key == testIndexOne.key)
    }
    
    func testInsert() {
        let newNode = Node<Int>()
        newNode.key = 40
        
        let nextNode = myCopy.head.next
        myCopy.head.next = newNode
        newNode.next = nextNode
        newNode.previous = myCopy.head
        
        myList.insert(40, at: 1)
        var myListCurrent: Node? = myList.head.next?.next?.next
        var myCopyCurrent: Node? = myCopy.head.next?.next?.next
        while myListCurrent != nil && myCopyCurrent != nil {
            XCTAssert(myListCurrent?.key == myCopyCurrent?.key)
            myListCurrent = myListCurrent?.previous
            myCopyCurrent = myCopyCurrent?.previous
        }
    }
    
    func testRemove() {
        myCopy.head.next = myCopy.head.next?.next
        myCopy.head.next?.next?.previous = myCopy.head
        myList.remove(at: 1)
        var myListCurrent: Node? = myList.head.next
        var myCopyCurrent: Node? = myCopy.head.next
        while myListCurrent != nil && myCopyCurrent != nil {
            XCTAssert(myListCurrent?.key == myCopyCurrent?.key)
            myListCurrent = myListCurrent?.previous
            myCopyCurrent = myCopyCurrent?.previous
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
