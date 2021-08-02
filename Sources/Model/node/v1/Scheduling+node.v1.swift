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
/// node.v1.Scheduling
///

import Foundation

public extension node.v1 {

	///
	/// Scheduling specifies the scheduling constraints for nodes supporting a RuntimeClass.
	///
	struct Scheduling: KubernetesResource {
		///
		/// nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
		///
		public var nodeSelector: [String: String]?
		///
		/// tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
		///
		public var tolerations: [core.v1.Toleration]?
		///
		/// Default memberwise initializer
		///
		public init(
			nodeSelector: [String: String]? = nil,
			tolerations: [core.v1.Toleration]? = nil
		) {
			self.nodeSelector = nodeSelector
			self.tolerations = tolerations
		}
	}
}

///
/// Codable conformance
///
public extension node.v1.Scheduling {

	private enum CodingKeys: String, CodingKey {

		case nodeSelector = "nodeSelector"
		case tolerations = "tolerations"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.nodeSelector = try container.decodeIfPresent([String: String].self, forKey: .nodeSelector)
		self.tolerations = try container.decodeIfPresent([core.v1.Toleration].self, forKey: .tolerations)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(nodeSelector, forKey: .nodeSelector)
		try encodingContainer.encode(tolerations, forKey: .tolerations)
	}
}
