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
    let value: String?
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
    .init(str: "1.0.0", value: nil, desc: "0", friendlyDesc: "0", parseFailed: true),
    .init(str: "0..0", value: nil, desc: "0", friendlyDesc: "0", parseFailed: true),
]

struct QuantityStaticTest {
    let str1: String
    let str2: String
    let sumDesc: String
    let sumFDesc: String
}

struct QuantityStaticBinTest {
    let str1: String
    let str2: String
    let sumBinDesc: String
    let sumBinFDesc: String
}

let tmp = 5000 * pow(1024, 3) + 0.2
let testStaticArr: [QuantityStaticTest] = [
    .init(str1: "200m", str2: "800m", sumDesc: "1", sumFDesc: "1"),
    .init(str1: "1000", str2: "24", sumDesc: "1024", sumFDesc: "1.024k"),
    .init(str1: "5000m", str2: "200m", sumDesc: "5200m", sumFDesc: "5.2"),
    .init(str1: "5000Gi", str2: "200m",
          sumDesc: "\(tmp * 1000)m",
          sumFDesc: "\(tmp / pow(1000, 4))T")
]

let testStaticBinArr: [QuantityStaticBinTest] = [
    .init(str1: "200m", str2: "800m", sumBinDesc: "1", sumBinFDesc: "1"),
    .init(str1: "1000", str2: "24", sumBinDesc: "1Ki", sumBinFDesc: "1Ki"),
    .init(str1: "5Gi", str2: "5Gi", sumBinDesc: "10Gi", sumBinFDesc: "10Gi"),
    .init(str1: "2560Gi", str2: "2560Gi",
          sumBinDesc: "5Ti",
          sumBinFDesc: "5Ti")
]

final class QunantityParseTests: XCTestCase {
    
    func testQuantity() {
        
        for t in testArr {
            var q = Quantity(stringLiteral: t.str)
            if t.value == nil {
                XCTAssertEqual(q.getValue(), nil)
            } else {
                XCTAssertEqual(q.getValue(), Decimal(string: t.value!))
            }
            XCTAssertEqual(q.description, t.desc)
            XCTAssertEqual(q.friendlyDescription, t.friendlyDesc)
            XCTAssertEqual(q.ok, !t.parseFailed)
        }
    }
    
    func testQuantityStatic () {
        for t in testStaticArr {
            let q1 = Quantity(stringLiteral: t.str1)
            let q2 = Quantity(stringLiteral: t.str2)
            
            let sum = q1.getValue()! + q2.getValue()!
            
            let desc = Quantity.description(sum, .decimalSI)
            let fDesc = Quantity.friendlyDescription(sum, .decimalSI)
            
            XCTAssertEqual(desc, t.sumDesc)
            XCTAssertEqual(fDesc, t.sumFDesc)
        }
        for t in testStaticBinArr {
            let q1 = Quantity(stringLiteral: t.str1)
            let q2 = Quantity(stringLiteral: t.str2)
            
            let sum = q1.getValue()! + q2.getValue()!
            
            let binDesc = Quantity.description(sum, .binarySI)
            let binFDesc = Quantity.friendlyDescription(sum, .binarySI)
            
            XCTAssertEqual(binDesc, t.sumBinDesc)
            XCTAssertEqual(binFDesc, t.sumBinFDesc)
        }
    }
}
