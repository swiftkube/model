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
/// batch.v1.PodFailurePolicy
///

import Foundation

// MARK: - batch.v1.PodFailurePolicy

public extension batch.v1 {

	///
	/// PodFailurePolicy describes how failed pods influence the backoffLimit.
	///
	struct PodFailurePolicy: KubernetesResource {
		///
		/// A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
		///
		public var rules: [batch.v1.PodFailurePolicyRule]
		///
		/// Default memberwise initializer
		///
		public init(
			rules: [batch.v1.PodFailurePolicyRule]
		) {
			self.rules = rules
		}
	}
}

///
/// Codable conformance
///
public extension batch.v1.PodFailurePolicy {

	private enum CodingKeys: String, CodingKey {

		case rules = "rules"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.rules = try container.decode([batch.v1.PodFailurePolicyRule].self, forKey: .rules)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(rules, forKey: .rules)
	}
}
