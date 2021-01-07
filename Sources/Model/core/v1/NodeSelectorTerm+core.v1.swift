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
/// core.v1.NodeSelectorTerm
///

import Foundation

public extension core.v1 {

	///
	/// A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
	///
	struct NodeSelectorTerm: KubernetesResource {
		///
		/// A list of node selector requirements by node's labels.
		///
		public var matchExpressions: [core.v1.NodeSelectorRequirement]?
		///
		/// A list of node selector requirements by node's fields.
		///
		public var matchFields: [core.v1.NodeSelectorRequirement]?
		///
		/// Default memberwise initializer
		///
		public init(
			matchExpressions: [core.v1.NodeSelectorRequirement]? = nil,
			matchFields: [core.v1.NodeSelectorRequirement]? = nil
		) {
			self.matchExpressions = matchExpressions
			self.matchFields = matchFields
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.NodeSelectorTerm {

	private enum CodingKeys: String, CodingKey {

		case matchExpressions = "matchExpressions"
		case matchFields = "matchFields"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.matchExpressions = try container.decodeIfPresent([core.v1.NodeSelectorRequirement].self, forKey: .matchExpressions)
		self.matchFields = try container.decodeIfPresent([core.v1.NodeSelectorRequirement].self, forKey: .matchFields)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(matchExpressions, forKey: .matchExpressions)
		try container.encode(matchFields, forKey: .matchFields)
	}
}
