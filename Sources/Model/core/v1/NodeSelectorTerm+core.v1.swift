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
extension core.v1.NodeSelectorTerm {

	private enum CodingKeys: String, CodingKey {
		case matchExpressions = "matchExpressions"
		case matchFields = "matchFields"
	}

}

