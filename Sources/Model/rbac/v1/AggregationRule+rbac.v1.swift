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
/// Kubernetes v1.20.9
/// rbac.v1.AggregationRule
///

import Foundation

public extension rbac.v1 {

	///
	/// AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
	///
	struct AggregationRule: KubernetesResource {
		///
		/// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
		///
		public var clusterRoleSelectors: [meta.v1.LabelSelector]?
		///
		/// Default memberwise initializer
		///
		public init(
			clusterRoleSelectors: [meta.v1.LabelSelector]? = nil
		) {
			self.clusterRoleSelectors = clusterRoleSelectors
		}
	}
}

///
/// Codable conformance
///
public extension rbac.v1.AggregationRule {

	private enum CodingKeys: String, CodingKey {

		case clusterRoleSelectors = "clusterRoleSelectors"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.clusterRoleSelectors = try container.decodeIfPresent([meta.v1.LabelSelector].self, forKey: .clusterRoleSelectors)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(clusterRoleSelectors, forKey: .clusterRoleSelectors)
	}
}
