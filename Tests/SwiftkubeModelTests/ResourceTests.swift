import XCTest
@testable import SwiftkubeModel

final class ResourceTests: XCTestCase {

	func test1() {
		let gvk = GroupVersionKind(of: apps.v1.Deployment.self)

		XCTAssertEqual(gvk?.group, "apps")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Deployment")
//		XCTAssertEqual(gvk?.pluralName, "deployments")
	}

	func test2() {
		let gvk = GroupVersionKind(of: apps.v1.Deployment())

		XCTAssertEqual(gvk?.group, "apps")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Deployment")
//		XCTAssertEqual(gvk?.pluralName, "deployments")
	}

	func test3() {
		let apiVersion = "v1"
		let kind = "Pod"

		let gvk = try! GroupVersionKind(string: "\(apiVersion)/\(kind)")

		XCTAssertEqual(gvk.group, "core")
		XCTAssertEqual(gvk.version, "v1")
		XCTAssertEqual(gvk.kind, "Pod")
	}

	func test4() {
		let gvk = GroupVersionKind(rawValue: "v1/Pod")
		XCTAssertEqual(gvk?.group, "core")
		XCTAssertEqual(gvk?.version, "v1")
		XCTAssertEqual(gvk?.kind, "Pod")
	}

	func test5() {
		let gvk: GroupVersionKind = try! GroupVersionKind(string: "secret")
		XCTAssertEqual(gvk.group, "core")
		XCTAssertEqual(gvk.version, "v1")
		XCTAssertEqual(gvk.kind, "Secret")
	}

	func test6() {
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

	func test7() {
		let pod = sk.pod(name: "test") {
			$0.spec = sk.podSpec {
				$0.containers = [
					sk.container(name: "nginx") {
						$0.image = "nginx"
					}
				]
			}
		}

		let resource = AnyKubernetesAPIResource(pod)
		let data = try? JSONEncoder().encode(resource)

		let json = String(data: data!, encoding: .utf8)

		XCTAssertEqual(json, #"{"metadata":{"name":"test"},"spec":{"containers":[{"image":"nginx","name":"nginx"}]},"kind":"Pod","apiVersion":"v1"}"#)
	}

	func test8() {
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

	func test9() {
		let pod = sk.pod(name: "test") {
			$0.spec = sk.podSpec {
				$0.containers = [
					sk.container(name: "nginx") {
						$0.image = "nginx"
					}
				]
			}
		}

		let resource = AnyKubernetesAPIResource(pod)
		let list = AnyKubernetesAPIResourceList(apiVersion: "v1", kind: "PodList", metadata: nil, items: [resource])
		let data = try? JSONEncoder().encode(list)

		let json = String(data: data!, encoding: .utf8)

		XCTAssertEqual(json, #"{"kind":"PodList","apiVersion":"v1","items":[{"metadata":{"name":"test"},"spec":{"containers":[{"image":"nginx","name":"nginx"}]},"kind":"Pod","apiVersion":"v1"}]}"#)
	}

	static var allTests = [
		("test1", test1),
		("test2", test2),
		("test3", test3),
		("test4", test4),
	]
}
