import XCTest
@testable import SwiftkubeModel

final class ResourceTests: XCTestCase {

	func test1() {
		let gvk = GroupVersionKind(of: apps.v1.Deployment.self)

		XCTAssertEqual(gvk?.group, "apps")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Deployment")
		XCTAssertEqual(gvk?.pluralName, "deployments")
	}

	func test2() {
		let gvk = GroupVersionKind(of: apps.v1.Deployment())

		XCTAssertEqual(gvk?.group, "apps")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Deployment")
		XCTAssertEqual(gvk?.pluralName, "deployments")
	}

	static var allTests = [
		("test1", test1),
		("test2", test2),
	]
}
