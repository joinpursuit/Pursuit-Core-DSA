//
//  QueuesHWProblemsTests.swift
//  QueuesHWProblemsTests
//
//  Created by C4Q  on 11/1/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import XCTest
@testable import QueuesHWProblems

class QueuesHWProblemsTests: XCTestCase {
    
    let myQueue = Queue<Int>()
    let otherQueue = Queue<Int>()
    let emptyQueue = Queue<Int>()
    
    override func setUp() {
        super.setUp()
//        while !(myQueue.isEmpty()) {
//            myQueue.deQueue()
//        }
//        while !(otherQueue.isEmpty()) {
//            otherQueue.deQueue()
//        }
        
        let myQ = Queue<Int>()
        myQ.enQueue(newElement: 39)
        myQ.enQueue(newElement: 10)
        myQ.enQueue(newElement: 7)
        
        let a = myQ.deQueue()
        print(a)

        
        myQueue.enQueue(newElement: 5)
        myQueue.enQueue(newElement: 10)
        myQueue.enQueue(newElement: 13)
        myQueue.enQueue(newElement: 17)

        otherQueue.enQueue(newElement: 8)
        otherQueue.enQueue(newElement: 11)
        otherQueue.enQueue(newElement: 4)
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSum() {
        XCTAssertTrue(sum(q: myQueue) == 45)
        XCTAssertTrue(sum(q: otherQueue) == 23)
        XCTAssertNil(sum(q: emptyQueue))
    }
    
    func testSmallest() {
        XCTAssertTrue(smallest(q: myQueue) == 5)
        XCTAssertTrue(smallest(q: otherQueue) == 4)
        XCTAssertNil(smallest(q: emptyQueue))
    }
    
    func testIsSorted() {
        XCTAssertTrue(isSorted(q: myQueue)!)
        XCTAssertFalse(isSorted(q: otherQueue)!)
        XCTAssertNil(isSorted(q: emptyQueue))
    }
    
    func testReverse() {
        let reversedMyQueue = Queue<Int>()
        reversedMyQueue.enQueue(newElement: 17)
        reversedMyQueue.enQueue(newElement: 13)
        reversedMyQueue.enQueue(newElement: 10)
        reversedMyQueue.enQueue(newElement: 5)
        let userReversed = reverse(q: myQueue)
        
        while !(reversedMyQueue.isEmpty()) && !(userReversed.isEmpty()) {
            XCTAssertTrue(reversedMyQueue.deQueue() == userReversed.deQueue())
        }
        XCTAssertNil(reverse(q: emptyQueue).peek())
    }
    
    func testEquals() {
        let myQueueCopy = Queue<Int>()
        myQueueCopy.enQueue(newElement: 5)
        myQueueCopy.enQueue(newElement: 10)
        myQueueCopy.enQueue(newElement: 13)
        myQueueCopy.enQueue(newElement: 17)

        let otherQueueCopy = Queue<Int>()
        otherQueueCopy.enQueue(newElement: 8)
        otherQueueCopy.enQueue(newElement: 11)
        otherQueueCopy.enQueue(newElement: 4)

        XCTAssertTrue(areEqual(qOne: myQueue, qTwo: myQueueCopy))
        XCTAssertTrue(areEqual(qOne: otherQueue, qTwo: otherQueueCopy))
        XCTAssertFalse(areEqual(qOne: myQueue, qTwo: otherQueue))
        XCTAssertFalse(areEqual(qOne: otherQueueCopy, qTwo: emptyQueue))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
