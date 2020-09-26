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
	/// A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
	///
	struct NodeSelector: KubernetesResource {
		///
		/// Required. A list of node selector terms. The terms are ORed.
		///
		public var nodeSelectorTerms: [core.v1.NodeSelectorTerm]
		///
		/// Default memberwise initializer
		///
		public init(
			nodeSelectorTerms: [core.v1.NodeSelectorTerm]
		) {
			self.nodeSelectorTerms = nodeSelectorTerms
		}
	}
}

///
/// Codable conformance
///
extension core.v1.NodeSelector {

	private enum CodingKeys: String, CodingKey {
		case nodeSelectorTerms = "nodeSelectorTerms"
	}

}

