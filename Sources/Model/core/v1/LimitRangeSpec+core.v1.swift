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
/// core.v1.LimitRangeSpec
///

import Foundation

// MARK: - core.v1.LimitRangeSpec

public extension core.v1 {

	///
	/// LimitRangeSpec defines a min/max usage limit for resources that match on kind.
	///
	struct LimitRangeSpec: KubernetesResource {
		///
		/// Limits is the list of LimitRangeItem objects that are enforced.
		///
		public var limits: [core.v1.LimitRangeItem]
		///
		/// Default memberwise initializer
		///
		public init(
			limits: [core.v1.LimitRangeItem]
		) {
			self.limits = limits
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.LimitRangeSpec {

	private enum CodingKeys: String, CodingKey {

		case limits = "limits"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.limits = try container.decode([core.v1.LimitRangeItem].self, forKey: .limits)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(limits, forKey: .limits)
	}
}
