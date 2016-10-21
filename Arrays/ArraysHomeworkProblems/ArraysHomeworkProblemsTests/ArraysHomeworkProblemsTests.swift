//
//  ArraysHomeworkProblemsTests.swift
//  ArraysHomeworkProblemsTests
//
//  Created by C4Q  on 10/20/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import XCTest
@testable import ArraysHomeworkProblems

class ArraysHomeworkProblemsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testproblemOne() {
        XCTAssert(problemOne(arr: [0,1,2,3,4,5]) == [1, 2, 3, 4, 5, 0])
        XCTAssert(problemOne(arr: [3,14,-24,0,2,4,1,4,9]) == [14, -24, 0, 2, 4, 1, 4, 9, 3])
        XCTAssert(problemOne(arr: [3,2]) == [2, 3])

    }
    
    func testproblemTwo() {
        XCTAssert(problemTwo(arr: [0,1,2,3,4,5], x: 3) == [3, 4, 5, 0, 1, 2])
        XCTAssert(problemTwo(arr: [42,1,-42,1,3,6,1], x: 4) == [3, 6, 0, 42, 1, -41, -1])
        XCTAssert(problemTwo(arr: [4,2,0,14,1,-92,100_000_000], x: 40) == [-92, 100000000, 4, 2, 0, 14, 1])
    }
    
    func testproblemThree() {
        XCTAssert(problemThree(strOne: "abcde", strTwo: "eabcd") == true)
        XCTAssert(problemThree(strOne: "abcde", strTwo: "abced") == false)
        XCTAssert(problemThree(strOne: "abc", strTwo: "a") == false)
        XCTAssert(problemThree(strOne: "Hello there!", strTwo: "lo there!Hel") == true)
        XCTAssert(problemThree(strOne: "Well, then.", strTwo: "Well, thne.") == false)
    }
    
    func testproblemFour() {
        XCTAssert(problemFour(arr: [[1,2,3],[4,5,6],[11,8,9]]) == 4)
        XCTAssert(problemFour(arr: [[3,5,2],[3,5,2],[3,5,2]]) == 0)
        XCTAssert(problemFour(arr: [[4,15,1],[11,2,2],[91,-1,-5]]) == 93)
    }
    
    func testproblemFive() {
        XCTAssert(problemFive(arr: [[4,1,2,5],[3,1,9,2],[4,1,3,8],[9,2,4,3]]) == 13)
        XCTAssert(problemFive(arr: [[2,4],[6,7]]) == 1)
        XCTAssert(problemFive(arr: [[1,5,2,3,6],[123,23,132,1,-1],[924,29,19-13,2],[190,10,313,12,0],[-19,13,102,12,-111]]) == 73)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
