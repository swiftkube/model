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

final class UnstructuredResourceTests: XCTestCase {

	func testDecode() {
		let str = """
		{
			"apiVersion": "stable.example.com/v1",
			"kind": "CronTab",
			"metadata": {
					"name": "my-new-cron-object",
					"namespace": "default"
			},
			"spec": {
				"cronSpec": "* * * * */5",
				"image": "my-awesome-cron-image"
			}
		}
		"""

		let data = str.data(using: .utf8)!
		let cron = try? JSONDecoder().decode(UnstructuredResource.self, from: data)

		XCTAssertEqual(cron?.apiVersion, "stable.example.com/v1")
		XCTAssertEqual(cron?.kind, "CronTab")
		XCTAssertEqual(cron?.metadata?.name, "my-new-cron-object")
		XCTAssertEqual(cron?.metadata?.namespace, "default")

		let spec: [String: Any]? = cron?[dynamicMember: "spec"]

		XCTAssertEqual(spec?["cronSpec"] as? String, "* * * * */5")
		XCTAssertEqual(spec?["image"] as? String, "my-awesome-cron-image")
	}

	func testEncode() {
		let cron = UnstructuredResource(properties: [
			"apiVersion": "stable.example.com/v1",
			"kind": "CronTab",
			"metadata": [
				"name": "my-new-cron-object",
				"namespace": "default"
			],
			"spec": [
				"cronSpec": "* * * * */5",
				"image": "my-awesome-cron-image"
			]
		])

		let data = try? JSONEncoder().encode(cron)

		let roundtrip = try? JSONDecoder().decode(UnstructuredResource.self, from: data!)

		XCTAssertEqual(roundtrip?.apiVersion, "stable.example.com/v1")
		XCTAssertEqual(roundtrip?.kind, "CronTab")
		XCTAssertEqual(roundtrip?.metadata?.name, "my-new-cron-object")
		XCTAssertEqual(roundtrip?.metadata?.namespace, "default")

		let spec: [String: Any]? = roundtrip?[dynamicMember: "spec"]

		XCTAssertEqual(spec?["cronSpec"] as? String, "* * * * */5")
		XCTAssertEqual(spec?["image"] as? String, "my-awesome-cron-image")
	}
}
