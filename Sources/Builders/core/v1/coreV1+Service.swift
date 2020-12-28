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

	static func service(_ block: (inout core.v1.Service) -> Void) -> core.v1.Service {
		return build(core.v1.Service(), with: block)
	}

	static func serviceSpec(_ block: (inout core.v1.ServiceSpec) -> Void) -> core.v1.ServiceSpec {
		return build(core.v1.ServiceSpec(), with: block)
	}

	static func servicePort(_ port: Int32, _ block: ((inout core.v1.ServicePort) -> Void)? = nil) -> core.v1.ServicePort {
		return build(core.v1.ServicePort(port: port), with: block ?? { _ in })
	}
}

public enum ServiceType: String {
	case clusterIP = "ClusterIP"
	case nodePort = "NodePort"
	case loadBalancer = "LoadBalancer"
	case externalName = "ExternalName"
}

public extension core.v1.ServiceSpec {

	mutating func serve(port servicePort: Int32, targetPort: IntOrString) {
		if self.ports == nil {
			self.ports = []
		}
		self.ports?.append(sk.servicePort(servicePort) {
			$0.targetPort = targetPort
		})
	}
}
