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

@testable import SwiftkubeModel
import XCTest

// MARK: - IntOrStringTest

struct IntOrStringTest {
    let str: String
    let json: String
    let isInt: Bool
}

let intOrStringsArr: [IntOrStringTest] = [
    .init(str: "80", json: "80", isInt: true),
    .init(str: "abc", json: "\"abc\"", isInt: false)
]


// MARK: - IntOrStringTests

final class IntOrStringTests: XCTestCase {

    func testIntOrString() throws {

        for t in intOrStringsArr {
            
            let v = IntOrString(stringLiteral: t.str)
            let encoder = JSONEncoder()
            let jsonValue = String(data: try encoder.encode(v), encoding: .utf8)
            
            XCTAssertEqual(v.isInt, t.isInt)
            XCTAssertEqual(jsonValue, t.json)
        }
    }
}
