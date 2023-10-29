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
/// Kubernetes v1.28.3
/// core.v1.ServiceStatus
///

import Foundation

// MARK: - core.v1.ServiceStatus

public extension core.v1 {

	///
	/// ServiceStatus represents the current status of a service.
	///
	struct ServiceStatus: KubernetesResource {
		///
		/// Current service state
		///
		public var conditions: [meta.v1.Condition]?
		///
		/// LoadBalancer contains the current status of the load-balancer, if one is present.
		///
		public var loadBalancer: core.v1.LoadBalancerStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			conditions: [meta.v1.Condition]? = nil,
			loadBalancer: core.v1.LoadBalancerStatus? = nil
		) {
			self.conditions = conditions
			self.loadBalancer = loadBalancer
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ServiceStatus {

	private enum CodingKeys: String, CodingKey {

		case conditions = "conditions"
		case loadBalancer = "loadBalancer"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.conditions = try container.decodeIfPresent([meta.v1.Condition].self, forKey: .conditions)
		self.loadBalancer = try container.decodeIfPresent(core.v1.LoadBalancerStatus.self, forKey: .loadBalancer)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(conditions, forKey: .conditions)
		try encodingContainer.encode(loadBalancer, forKey: .loadBalancer)
	}
}
