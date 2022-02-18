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
/// Kubernetes v1.22.7
/// core.v1.EnvFromSource
///

import Foundation

public extension core.v1 {

	///
	/// EnvFromSource represents the source of a set of ConfigMaps
	///
	struct EnvFromSource: KubernetesResource {
		///
		/// The ConfigMap to select from
		///
		public var configMapRef: core.v1.ConfigMapEnvSource?
		///
		/// An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
		///
		public var prefix: String?
		///
		/// The Secret to select from
		///
		public var secretRef: core.v1.SecretEnvSource?
		///
		/// Default memberwise initializer
		///
		public init(
			configMapRef: core.v1.ConfigMapEnvSource? = nil,
			prefix: String? = nil,
			secretRef: core.v1.SecretEnvSource? = nil
		) {
			self.configMapRef = configMapRef
			self.prefix = prefix
			self.secretRef = secretRef
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.EnvFromSource {

	private enum CodingKeys: String, CodingKey {

		case configMapRef = "configMapRef"
		case prefix = "prefix"
		case secretRef = "secretRef"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.configMapRef = try container.decodeIfPresent(core.v1.ConfigMapEnvSource.self, forKey: .configMapRef)
		self.prefix = try container.decodeIfPresent(String.self, forKey: .prefix)
		self.secretRef = try container.decodeIfPresent(core.v1.SecretEnvSource.self, forKey: .secretRef)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(configMapRef, forKey: .configMapRef)
		try encodingContainer.encode(prefix, forKey: .prefix)
		try encodingContainer.encode(secretRef, forKey: .secretRef)
	}
}
