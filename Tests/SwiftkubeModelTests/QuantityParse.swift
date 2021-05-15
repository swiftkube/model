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
    let toString: String
    let friendlyString: String
}

let testArr: [QuantityTest] = [
    .init(str: "5300m", value: "5.3", toString: "5300m", friendlyString: "5.3"),
    .init(str: "5.4", value: "5.4", toString: "5400m", friendlyString: "5.4"),
    .init(str: "0", value: "0", toString: "0", friendlyString: "0"),
    .init(str: ".3", value: "0.3", toString: "300m", friendlyString: "300m"),
    .init(str: "33.01", value: "33.01", toString: "33010m", friendlyString: "33.01"),
    .init(str: "33.0001",
          value: "33.0001",
          toString: "33000100u",
          friendlyString: "33.0001"),
    .init(str: "5Gi",
          value: "\(5 * pow(1024, 3))",
          toString: "5Gi",
          friendlyString: "5Gi"),
    .init(str: "5120Gi",
          value: "\(5 * pow(1024, 4))",
          toString: "5Ti",
          friendlyString: "5Ti"),
    .init(str: "5G",
          value: "\(5 * pow(1000, 3))",
          toString: "5G",
          friendlyString: "5G"),
    .init(str: "5000G",
          value: "\(5 * pow(1000, 4))",
          toString: "5T",
          friendlyString: "5T"),
]

final class QunantityParseTests: XCTestCase {
    
    func testQuantity() {
        
        for t in testArr {
            let q = Quantity(stringLiteral: t.str)
            XCTAssertEqual(q.getValue(), Decimal(string: t.value))
            XCTAssertEqual(q.toString(), t.toString)
            XCTAssertEqual(q.toFriendlyString(), t.friendlyString)
        }
    }
}
