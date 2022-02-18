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

import Foundation

public extension sk {

	static func deployment(name: String, _ block: (inout apps.v1.Deployment) -> Void) -> apps.v1.Deployment {
		build(apps.v1.Deployment(metadata: meta.v1.ObjectMeta(name: name)), with: block)
	}

	static func deploymentSpec(_ block: (inout apps.v1.DeploymentSpec) -> Void) -> apps.v1.DeploymentSpec {
		build(apps.v1.DeploymentSpec(selector: meta.v1.LabelSelector(), template: core.v1.PodTemplateSpec()), with: block)
	}
}

public extension apps.v1.Deployment {

	mutating func expose(on servicePort: Int32, type: ServiceType = .clusterIP) -> core.v1.Service? {
		guard
			let name = name,
			var metadata = metadata,
			let containerPort = spec?.template.spec?.containers.first?.ports?.first?.containerPort
		else {
			return nil
		}

		if metadata.labels == nil {
			metadata.labels = ["app": name]
		}

		return sk.service {
			$0.metadata = sk.metadata {
				$0.name = name
			}
			$0.spec = sk.serviceSpec {
				$0.type = type.rawValue
				$0.selector = metadata.labels
				$0.serve(port: servicePort, targetPort: IntOrString(integerLiteral: Int(containerPort)))
			}
		}
	}
}
