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
/// core.v1.ConfigMapEnvSource
///

import Foundation

// MARK: - core.v1.ConfigMapEnvSource

public extension core.v1 {

	///
	/// ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
	///
	/// The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
	///
	struct ConfigMapEnvSource: KubernetesResource {
		///
		/// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
		///
		public var name: String?
		///
		/// Specify whether the ConfigMap must be defined
		///
		public var optional: Bool?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String? = nil,
			optional: Bool? = nil
		) {
			self.name = name
			self.optional = optional
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ConfigMapEnvSource {

	private enum CodingKeys: String, CodingKey {

		case name = "name"
		case optional = "optional"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.name = try container.decodeIfPresent(String.self, forKey: .name)
		self.optional = try container.decodeIfPresent(Bool.self, forKey: .optional)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(optional, forKey: .optional)
	}
}
