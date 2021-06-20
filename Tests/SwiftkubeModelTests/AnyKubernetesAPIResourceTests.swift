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

final class AnyKubernetesAPIResourceTests: XCTestCase {

	func testDecodeJSON() {
		let str = """
		{
			"apiVersion": "v1",
			"kind": "Pod",
			"metadata": {
					"name": "test",
					"namespace": "ns"
			}
		}
		"""

		let data = str.data(using: .utf8)!
		let anyResource = try? JSONDecoder().decode(AnyKubernetesAPIResource.self, from: data)

		XCTAssertEqual(anyResource?.apiVersion, "v1")
		XCTAssertEqual(anyResource?.kind, "Pod")
		XCTAssertEqual(anyResource?.metadata?.name, "test")
		XCTAssertEqual(anyResource?.metadata?.namespace, "ns")
	}

	func testEncodeJSON() {
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
		let data = try? JSONEncoder().encode(resource)

		let roundtrip = try? JSONDecoder().decode(AnyKubernetesAPIResource.self, from: data!)

		XCTAssertEqual(roundtrip?.apiVersion, "v1")
		XCTAssertEqual(roundtrip?.kind, "Pod")
		XCTAssertEqual(roundtrip?.metadata?.name, "test")
	}
}
