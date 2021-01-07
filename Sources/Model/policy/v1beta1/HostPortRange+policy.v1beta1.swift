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
/// policy.v1beta1.HostPortRange
///

import Foundation

public extension policy.v1beta1 {

	///
	/// HostPortRange defines a range of host ports that will be enabled by a policy for pods to use.  It requires both the start and end to be defined.
	///
	struct HostPortRange: KubernetesResource {
		///
		/// max is the end of the range, inclusive.
		///
		public var max: Int32
		///
		/// min is the start of the range, inclusive.
		///
		public var min: Int32
		///
		/// Default memberwise initializer
		///
		public init(
			max: Int32,
			min: Int32
		) {
			self.max = max
			self.min = min
		}
	}
}

///
/// Codable conformance
///
public extension policy.v1beta1.HostPortRange {

	private enum CodingKeys: String, CodingKey {

		case max = "max"
		case min = "min"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.max = try container.decode(Int32.self, forKey: .max)
		self.min = try container.decode(Int32.self, forKey: .min)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(max, forKey: .max)
		try container.encode(min, forKey: .min)
	}
}
