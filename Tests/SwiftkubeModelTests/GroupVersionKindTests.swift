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

final class GroupVersionKindTests: XCTestCase {

	func testInitByResourceType() {
		let gvk = GroupVersionKind(of: apps.v1.Deployment.self)

		XCTAssertEqual(gvk?.group, "apps")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Deployment")
	}

	func testInitByResourceInstance() {
		let gvk = GroupVersionKind(of: apps.v1.Deployment())

		XCTAssertEqual(gvk?.group, "apps")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Deployment")
	}

	func testInitByString() {
		let apiVersion = "v1"
		let kind = "Pod"

		let gvk = GroupVersionKind(of: "\(apiVersion)/\(kind)")

		XCTAssertEqual(gvk?.group, "core")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Pod")
	}

	func testInitByRawValue() {
		var gvk = GroupVersionKind(of: "v1/Pod")

		XCTAssertEqual(gvk?.group, "core")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Pod")

		gvk = GroupVersionKind(for: "secret")

		XCTAssertEqual(gvk?.group, "core")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Secret")
	}

	func testInitByPluralName() {
		var gvk = GroupVersionKind(for: "pods")

		XCTAssertEqual(gvk?.group, "core")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Pod")

		gvk = GroupVersionKind(for: "clusterrolebindings")

		XCTAssertEqual(gvk?.group, "rbac.authorization.k8s.io")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "ClusterRoleBinding")
	}

	func testInitByShortName() {
		var gvk = GroupVersionKind(for: "sa")

		XCTAssertEqual(gvk?.group, "core")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "ServiceAccount")

		gvk = GroupVersionKind(for: "netpol")

		XCTAssertEqual(gvk?.group, "networking.k8s.io")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "NetworkPolicy")
	}
}
