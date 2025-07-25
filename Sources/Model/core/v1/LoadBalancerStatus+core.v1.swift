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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.33.3
/// core.v1.LoadBalancerStatus
///

import Foundation

// MARK: - core.v1.LoadBalancerStatus

public extension core.v1 {

	///
	/// LoadBalancerStatus represents the status of a load-balancer.
	///
	struct LoadBalancerStatus: KubernetesResource {
		///
		/// Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
		///
		public var ingress: [core.v1.LoadBalancerIngress]?
		///
		/// Default memberwise initializer
		///
		public init(
			ingress: [core.v1.LoadBalancerIngress]? = nil
		) {
			self.ingress = ingress
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.LoadBalancerStatus {

	private enum CodingKeys: String, CodingKey {

		case ingress = "ingress"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.ingress = try container.decodeIfPresent([core.v1.LoadBalancerIngress].self, forKey: .ingress)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(ingress, forKey: .ingress)
	}
}
