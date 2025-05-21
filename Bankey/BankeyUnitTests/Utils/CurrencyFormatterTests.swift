//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Kamila Sultanova on 19.05.2025.
//

import Foundation

import XCTest

@testable import Bankey

class Test: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(924958.43)
        XCTAssertEqual(result.0, "924,958")
        XCTAssertEqual(result.1, "43")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(924958.43)
        XCTAssertEqual(result, "$924,958.43")
    }
    
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0)
        XCTAssertEqual(result, "$0.00")
    }
}
