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
/// Kubernetes v1.32.0
/// core.v1.SecretReference
///

import Foundation

// MARK: - core.v1.SecretReference

public extension core.v1 {

	///
	/// SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
	///
	struct SecretReference: KubernetesResource {
		///
		/// name is unique within a namespace to reference a secret resource.
		///
		public var name: String?
		///
		/// namespace defines the space within which the secret name must be unique.
		///
		public var namespace: String?
		///
		/// Default memberwise initializer
		///
		public init(
			name: String? = nil,
			namespace: String? = nil
		) {
			self.name = name
			self.namespace = namespace
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.SecretReference {

	private enum CodingKeys: String, CodingKey {

		case name = "name"
		case namespace = "namespace"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.name = try container.decodeIfPresent(String.self, forKey: .name)
		self.namespace = try container.decodeIfPresent(String.self, forKey: .namespace)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(namespace, forKey: .namespace)
	}
}
