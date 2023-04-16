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
/// core.v1.Toleration
///

import Foundation

// MARK: - core.v1.Toleration

public extension core.v1 {

	///
	/// The pod this Toleration is attached to tolerates any taint that matches the triple <key,value,effect> using the matching operator <operator>.
	///
	struct Toleration: KubernetesResource {
		///
		/// Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.
		///
		///
		///
		public var effect: String?
		///
		/// Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
		///
		public var key: String?
		///
		/// Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.
		///
		///
		///
		public var `operator`: String?
		///
		/// TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
		///
		public var tolerationSeconds: Int64?
		///
		/// Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
		///
		public var value: String?
		///
		/// Default memberwise initializer
		///
		public init(
			effect: String? = nil,
			key: String? = nil,
			`operator`: String? = nil,
			tolerationSeconds: Int64? = nil,
			value: String? = nil
		) {
			self.effect = effect
			self.key = key
			self.`operator` = `operator`
			self.tolerationSeconds = tolerationSeconds
			self.value = value
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.Toleration {

	private enum CodingKeys: String, CodingKey {

		case effect = "effect"
		case key = "key"
		case `operator` = "operator"
		case tolerationSeconds = "tolerationSeconds"
		case value = "value"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.effect = try container.decodeIfPresent(String.self, forKey: .effect)
		self.key = try container.decodeIfPresent(String.self, forKey: .key)
		self.`operator` = try container.decodeIfPresent(String.self, forKey: .`operator`)
		self.tolerationSeconds = try container.decodeIfPresent(Int64.self, forKey: .tolerationSeconds)
		self.value = try container.decodeIfPresent(String.self, forKey: .value)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(effect, forKey: .effect)
		try encodingContainer.encode(key, forKey: .key)
		try encodingContainer.encode(`operator`, forKey: .`operator`)
		try encodingContainer.encode(tolerationSeconds, forKey: .tolerationSeconds)
		try encodingContainer.encode(value, forKey: .value)
	}
}
