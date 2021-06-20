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

final class AnyKubernetesAPIResourceListTests: XCTestCase {

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
						"name": "test",
						"namespace": "ns"
					}
				}
			]
		}
		"""

		let data = str.data(using: .utf8)!
		let list = try? JSONDecoder().decode(AnyKubernetesAPIResourceList.self, from: data)

		XCTAssertEqual(list?.apiVersion, "v1")
		XCTAssertEqual(list?.kind, "PodList")

		XCTAssertEqual(list?.items[0].apiVersion, "v1")
		XCTAssertEqual(list?.items[0].kind, "Pod")
		XCTAssertEqual(list?.items[0].metadata?.name, "test")
		XCTAssertEqual(list?.items[0].metadata?.namespace, "ns")
	}

	func testEncode() {
		let pod = sk.pod(name: "test") {
			$0.spec = sk.podSpec {
				$0.containers = [
					sk.container(name: "nginx") {
						$0.image = "nginx"
					},
				]
			}
		}

		let resource = AnyKubernetesAPIResource(pod)
		let list = AnyKubernetesAPIResourceList(apiVersion: "v1", kind: "PodList", metadata: nil, items: [resource])
		let data = try? JSONEncoder().encode(list)

		let roundtrip = try? JSONDecoder().decode(AnyKubernetesAPIResourceList.self, from: data!)
		XCTAssertEqual(roundtrip?.apiVersion, list.apiVersion)
		XCTAssertEqual(roundtrip?.kind, list.kind)
		XCTAssertEqual(roundtrip?.items[0].apiVersion, roundtrip?.items[0].apiVersion)
		XCTAssertEqual(roundtrip?.items[0].kind, roundtrip?.items[0].kind)
	}
}
