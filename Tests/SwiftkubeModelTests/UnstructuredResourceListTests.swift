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

final class UnstructuredResourceListTests: XCTestCase {

	func testDecodeJSON() {
		let str = """
		{
			"apiVersion": "v1",
			"kind": "PodList",
			"items": [
				{
					"apiVersion": "v1",
					"kind": "Pod",
					"metadata": {
						"name": "test-1",
						"namespace": "ns-1"
					}
				},
				{
					"apiVersion": "v1",
					"kind": "Pod",
					"metadata": {
						"name": "test-2",
						"namespace": "ns-2"
					}
				}
			]
		}
		"""

		let data = str.data(using: .utf8)!
		let list = try! JSONDecoder().decode(UnstructuredResourceList.self, from: data)

		XCTAssertEqual(list.apiVersion, "v1")
		XCTAssertEqual(list.kind, "PodList")

		let first = list.items[0]
		XCTAssertEqual(first.apiVersion, "v1")
		XCTAssertEqual(first.kind, "Pod")
		XCTAssertEqual(first.metadata?.name, "test-1")
		XCTAssertEqual(first.metadata?.namespace, "ns-1")

		let second = list.items[1]
		XCTAssertEqual(second.apiVersion, "v1")
		XCTAssertEqual(second.kind, "Pod")
		XCTAssertEqual(second.metadata?.name, "test-2")
		XCTAssertEqual(second.metadata?.namespace, "ns-2")
	}

	func testEncode() {
		let cron1 = UnstructuredResource(properties: [
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

		let cron2 = UnstructuredResource(properties: [
			"apiVersion": "stable.example.com/v1",
			"kind": "CronTab",
			"metadata": [
				"name": "my-new-cron-object-2",
				"namespace": "jobs"
			],
			"spec": [
				"cronSpec": "* * * * */15",
				"image": "my-awesome-cron-image-2"
			]
		])

		let list = UnstructuredResourceList(apiVersion: "v1", kind: "PodList", metadata: nil, items: [cron1, cron2])
		let data = try! JSONEncoder().encode(list)

		let roundtrip = try! JSONDecoder().decode(UnstructuredResourceList.self, from: data)
		XCTAssertEqual(roundtrip.apiVersion, list.apiVersion)
		XCTAssertEqual(roundtrip.kind, list.kind)

		let first = roundtrip.items[0]
		XCTAssertEqual(first.apiVersion, cron1.apiVersion)
		XCTAssertEqual(first.kind, cron1.kind)
		XCTAssertEqual((first.properties["spec"] as? [String: Any])?["image"] as? String, "my-awesome-cron-image")
		XCTAssertEqual((first.properties["spec"] as? [String: Any])?["cronSpec"] as? String, "* * * * */5")

		let second = roundtrip.items[1]
		XCTAssertEqual(second.apiVersion, cron1.apiVersion)
		XCTAssertEqual(second.kind, cron1.kind)
		XCTAssertEqual((second.properties["spec"] as? [String: Any])?["image"] as? String, "my-awesome-cron-image-2")
		XCTAssertEqual((second.properties["spec"] as? [String: Any])?["cronSpec"] as? String, "* * * * */15")
	}
}
