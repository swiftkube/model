//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
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

import Foundation

///
/// Public namespace for builder functions
///
public enum sk {}

@discardableResult
func build<T>(_ value: T, with block: (inout T) -> Void) -> T {
	var instance = value
	block(&instance)
	return instance
}

class Foo {
	func foo() {
		var sel1 = sk.match(labels: ["app": "test"])
		var sel2: meta.v1.LabelSelector = sk.match(key: "name", .notIn(["test"]))

		sel1.match(labels: ["env": "foo"])
		sel2["env"] = "prod"

		sel1.match(key: "dasda", .doesNotExist)

		sel1.matchExpressions = [
			sk.match(key: "asdS'", .doesNotExist),
			sk.match(key: "fdfs", .notIn(["dasda"]))
		]

		var config = sk.configMap(name: "test") {
			$0.metadata = sk.metadata {
				$0.namespace = "test"
			}
		}

		config.add(data: "test", forKey: "data")
		try! config.add(file: URL(fileURLWithPath: "/tmp/test"), forKey: "file")

		_ = sk.pod {
			$0.metadata = sk.metadata {
				$0.name = "test"
				$0.namespace = "test"
				$0.labels = ["env": "dev"]
			}
			$0.spec = sk.podSpec {
				$0.containers = [
					sk.container(name: "test") {
						$0.image = "busybox"
						$0.ports = [
							sk.containerPort(8080)
						]
						$0.env = [
							"env": .value("dev"),
							"username": .configMapRef(name: "config", key: "username"),
							"password": .secretRef(name: "creds", key: "password"),
							"namespace": .fieldRef(fieldPath: "metadata.namespace"),
							"mem_limit": .resourceFieldRef(containerName: "test", resource: "limits.memory", divisor: "1Mi")
						]
						$0.envFrom = sk.envFrom(
							.configMapRef(name: "config", prefix: "TEST_"),
							.secretRef(name: "secret", prefix: "SECRET_")
						)
						$0.livenessProbe = sk.probe(action: .httpGet(path: "/health", port: 8080)) {
							$0.initialDelaySeconds = 30
							$0.periodSeconds = 15
						}
						$0.resources = sk.requirements {
							$0.limits = [
								"cpu": "200m",
								"memory": "256Mi"
							]
							$0.requests = [
								"cpu": "100m",
								"memory": "128Mi"
							]
						}
						$0.volumeMounts = [
							sk.volumeMount(name: "config", mountPath: "/etc/conf")
						]
					}
				]
				$0.volumes = [
					sk.volume(name: "config", from: .configMap(config))
				]
			}
		}
	}
}
