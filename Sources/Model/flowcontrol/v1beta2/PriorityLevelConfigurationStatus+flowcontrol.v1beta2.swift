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
/// Kubernetes v1.26.4
/// flowcontrol.v1beta2.PriorityLevelConfigurationStatus
///

import Foundation

// MARK: - flowcontrol.v1beta2.PriorityLevelConfigurationStatus

public extension flowcontrol.v1beta2 {

	///
	/// PriorityLevelConfigurationStatus represents the current state of a "request-priority".
	///
	struct PriorityLevelConfigurationStatus: KubernetesResource {
		///
		/// `conditions` is the current state of "request-priority".
		///
		public var conditions: [flowcontrol.v1beta2.PriorityLevelConfigurationCondition]?
		///
		/// Default memberwise initializer
		///
		public init(
			conditions: [flowcontrol.v1beta2.PriorityLevelConfigurationCondition]? = nil
		) {
			self.conditions = conditions
		}
	}
}

///
/// Codable conformance
///
public extension flowcontrol.v1beta2.PriorityLevelConfigurationStatus {

	private enum CodingKeys: String, CodingKey {

		case conditions = "conditions"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.conditions = try container.decodeIfPresent([flowcontrol.v1beta2.PriorityLevelConfigurationCondition].self, forKey: .conditions)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(conditions, forKey: .conditions)
	}
}
