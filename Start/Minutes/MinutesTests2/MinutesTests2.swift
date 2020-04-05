//
//  MinutesTests2.swift
//  MinutesTests2
//
//  Created by Steven Iamundi on 2020-04-04.
//  Copyright © 2020 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests2: XCTestCase {

    var entryUndertest : Entry!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        entryUndertest = Entry("title","content")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        entryUndertest = nil
        super.tearDown()
    }
    func testSerialization(){
        let serialData = FileEntryStore.serialize(entryUndertest)
        let entry = FileEntryStore.deserialize(serialData!)
        
        XCTAssertEqual(entry?.title,"title","Tilte does not match")
        XCTAssertEqual(entry?.content,"content","Content does not match")
        
    }



}
