//
//  LinkedListsHomeworkTwoTests.swift
//  LinkedListsHomeworkTwoTests
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import XCTest
@testable import LinkedListsHomeworkTwo

class LinkedListsHomeworkTwoTests: XCTestCase {
    
    var myList = LinkedList<Int>()
    var myCopy = LinkedList<Int>()
    var mySecondList = LinkedList<Int>()
    var mySecondCopy = LinkedList<Int>()
    var myMergedList = LinkedList<Int>()
    
    override func setUp() {
        super.setUp()
        myList.append(element: 3)
        myList.append(element: 5)
        myList.append(element: 10)
        
        
        myCopy.append(element: 3)
        myCopy.append(element: 5)
        myCopy.append(element: 10)
        
        
        mySecondList.append(element: 2)
        mySecondList.append(element: 9)
        mySecondList.append(element: 14)
        
        mySecondCopy.append(element: 2)
        mySecondCopy.append(element: 9)
        mySecondCopy.append(element: 14)

        myMergedList.append(element: 2)
        myMergedList.append(element: 3)
        myMergedList.append(element: 5)
        myMergedList.append(element: 9)
        myMergedList.append(element: 10)
        myMergedList.append(element: 14)
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEquals() {
        XCTAssert(myList.equals(otherList: myCopy) == true)
        XCTAssert(myCopy.equals(otherList: myList) == true)
        
        myCopy.head.key = 2
        
        XCTAssert(myList.equals(otherList: myCopy) == false)
        XCTAssert(myCopy.equals(otherList: myList) == false)
        
        myCopy.head.key = 5
        myCopy.head.key = 19
        
        XCTAssert(myList.equals(otherList: myCopy) == false)
        XCTAssert(myCopy.equals(otherList: myList) == false)
    }
    
    func testMergeSorted() {
        XCTAssert(mergeSortedLists(listOne: myList, listTwo: mySecondList).equals(otherList: myMergedList))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
