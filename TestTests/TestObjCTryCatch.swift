//
//  TestTests.swift
//  TestTests
//
//  Created by jbrooks on 3/23/16.
//  Copyright © 2016 jbrooks. All rights reserved.
//

import XCTest
import ObjCTryCatch

class TestObjCTryCatch: XCTestCase {
    
    func testObjCreationExp() {
        let obj:AnyObject? = try? ObjCTry.doTryObj {
            let arr = NSArray()
            let bar = arr[5]
             XCTFail("Should have thrown. \(bar)")
            return arr
        }
        XCTAssertNil(obj)
        
    }
    
    func testBasic() {
        do {
            try ObjCTry.doTry {
                let arr = NSArray()
                let bar = arr.objectAtIndex(5)
                XCTFail("Should have thrown. \(bar)")
            }
        } catch {
            debugPrint(error)
        }
    }
    
    func testSuccess() {
        do {
            try ObjCTry.doTry {
                print("Not throwing")
            }
        } catch {
            XCTFail("Should not have thrown.")
        }
    }
}
