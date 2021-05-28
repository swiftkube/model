//
// Copyright 2020 Swiftkube Project
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import XCTest
@testable import SwiftkubeModel

struct QuantityTest {
    let str: String
    let value: String
    let desc: String
    let friendlyDesc: String
    
    var parseFailed: Bool = false
}

let testArr: [QuantityTest] = [
    .init(str: "5300m",     value: "5.3",                   desc: "5300m",      friendlyDesc: "5.3"),
    .init(str: "5.4",       value: "5.4",                   desc: "5400m",      friendlyDesc: "5.4"),
    .init(str: "0",         value: "0",                     desc: "0",          friendlyDesc: "0"),
    .init(str: ".3",        value: "0.3",                   desc: "300m",       friendlyDesc: "300m"),
    .init(str: "33.01",     value: "33.01",                 desc: "33010m",     friendlyDesc: "33.01"),
    .init(str: "33.0001",   value: "33.0001",               desc: "33000100u",  friendlyDesc: "33.0001"),
    .init(str: "5Gi",       value: "\(5 * pow(1024, 3))",   desc: "5Gi",        friendlyDesc: "5Gi"),
    .init(str: "5120Gi",    value: "\(5 * pow(1024, 4))",   desc: "5Ti",        friendlyDesc: "5Ti"),
    .init(str: "5G",        value: "\(5 * pow(1000, 3))",   desc: "5G",         friendlyDesc: "5G"),
    .init(str: "5000G",     value: "\(5 * pow(1000, 4))",   desc: "5T",         friendlyDesc: "5T"),
    
    // parse failed
    .init(str: "1.0.0", value: "0", desc: "0", friendlyDesc: "0", parseFailed: true),
    .init(str: "0..0", value: "0", desc: "0", friendlyDesc: "0", parseFailed: true),
]

final class QunantityParseTests: XCTestCase {
    
    func testQuantity() {
        
        for t in testArr {
            var q = Quantity(stringLiteral: t.str)
            XCTAssertEqual(q.getValue(), Decimal(string: t.value))
            XCTAssertEqual(q.description, t.desc)
            XCTAssertEqual(q.friendlyDescription, t.friendlyDesc)
            XCTAssertEqual(q.ok, !t.parseFailed)
        }
    }
}
