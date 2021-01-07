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
/// Kubernetes v1.18.13
/// core.v1.ResourceRequirements
///

import Foundation

public extension core.v1 {

	///
	/// ResourceRequirements describes the compute resource requirements.
	///
	struct ResourceRequirements: KubernetesResource {
		///
		/// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
		///
		public var limits: [String: Quantity]?
		///
		/// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
		///
		public var requests: [String: Quantity]?
		///
		/// Default memberwise initializer
		///
		public init(
			limits: [String: Quantity]? = nil,
			requests: [String: Quantity]? = nil
		) {
			self.limits = limits
			self.requests = requests
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ResourceRequirements {

	private enum CodingKeys: String, CodingKey {

		case limits = "limits"
		case requests = "requests"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.limits = try container.decodeIfPresent([String: Quantity].self, forKey: .limits)
		self.requests = try container.decodeIfPresent([String: Quantity].self, forKey: .requests)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(limits, forKey: .limits)
		try container.encode(requests, forKey: .requests)
	}
}
