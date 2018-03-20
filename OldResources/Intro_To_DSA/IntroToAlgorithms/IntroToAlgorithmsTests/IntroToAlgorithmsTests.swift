//
//  IntroToAlgorithmsTests.swift
//  IntroToAlgorithmsTests
//
//  Created by C4Q  on 10/14/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import XCTest
@testable import IntroToAlgorithms

class IntroToAlgorithmsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testposZeroNeg() {
        let myMethod = posZeroNeg
        XCTAssert(myMethod([1,4,2,3,21,1342,32]) == (0,0,7))
        
    }
    
    func testsecondSmallest() {
        let myMethod = secondSmallest
    XCTAssert(myMethod([40,253,680,750,64,126,4,471,706,757,899,856,617,169,697,755,36,426,973,107,299,360,201,313,801,61,241,911,992,354,108,341,170,949,333,937,933,512,568,379,995,29,637,417,793,763,47,387,166,135,259,400,406,141,271,194,263,171,992,508,953,176,990,544,491,488,691,406,911,751,519,732,907,403,328,110,348,669,112,719,852,671,447,619,928,847,630,711,371,143,277,405,210,266,241,379,265,213,331,780]) == 29)
        
        XCTAssert(myMethod([910,158,197,874,58,835,765,182,562,942,399,35,269,704,634,518,948,744,786,181,801,952,175,97,222,705,121,928,126,35,346,174,214,906,906,886,245,34,239,376,34,902,355,528,844,265,796,27,721,905,877,567,911,223,472,132,426,359,617,402,89,144,976,774,961,386,380,75,504,854,862,101,271,914,673,288,844,633,40,477,346,479,727,62,604,523,852,789,234,374,156,855,819,422,741,543,994,587,37,100]) == 34)
        XCTAssert(myMethod([807,909,-22,424,244,873,-907,-350,-780,576,-177,278,-855,296,-33,-609,-664,-126,-469,-57,-376,-424,-477,-795,-481,-806,545,727,-879,210,-114,-783,-156,45,781,369,35,900,904,-2,168,489,-329,608,-287,40,442,362,-560,236,-583,698,544,-154,478,535,-397,363,470,-49,49,631,-62,-293,-419,-528,753,-809,-48,-888,606,-889,-908,672,-783,-921,-198,-428,701,-30,106,500,-106,199,-793,392,873,330,366,45,840,649,-135,-850,174,-338,901,-753,402,-62,554,-579,863,955,-999,-13,851,760,-523,-968,225,-173,-605,-759,306,657,844,168,-270,883,963,-835,624,570,705,333,-293,283,382,926,839,264,602,-940,160,-369,-770,-792,722,321,88,-176,-911,203,486,-175,-529,187,-668,518,-282,162,-165,-34,544,538,-828,-562,-154,591,345,-241,962,801,-632,-921,-710,588,-642,113,128,-242,56,716,-709,232,-870,241,-612,-583,-199,762,-601,-410,-896,-493,664,531,-613,-285,-951,-589,243,819,-195,911,-701,-368,-85,-316]) == -968 )
    }
    
    func testisPrime() {
        let myMethod: (Int) -> Bool
        myMethod = isPrime
        XCTAssert(myMethod(40) == false)
        XCTAssert(myMethod(13) == true)
        XCTAssert(myMethod(5081) == true)
        XCTAssert(myMethod(1000) == false)
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testremoveCharacter() {
        XCTAssert(removeCharacter(s: "Hello world!", c: "l") == "Heo word!")
        XCTAssert(removeCharacter(s: "Did you know? Mississippi's state bird is the Mockingbird!", c: "i") == "Dd you know? Msssspp's state brd s the Mockngbrd!" )
        XCTAssert(removeCharacter(s: "Things are harder to read without spaces, aren't they?", c: " ") == "Thingsarehardertoreadwithoutspaces,aren'tthey?")
    }
    
    func testremoveMultipleCharacters() {
        XCTAssert(removeMultipleCharacters(s: "What shall we delete today?", arr: ["w", "?", "e"]) == "What shall  dlt today")
        XCTAssert(removeMultipleCharacters(s:"\"Pokémon\" has an accent mark in it", arr: ["é","i"]) == "\"Pokmon\" has an accent mark n t")
    }    
}
