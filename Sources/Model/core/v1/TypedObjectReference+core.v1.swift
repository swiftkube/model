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
/// core.v1.TypedObjectReference
///

import Foundation

// MARK: - core.v1.TypedObjectReference

public extension core.v1 {

	///
	/// TypedObjectReference contains enough information to let you locate the typed referenced object
	///
	struct TypedObjectReference: KubernetesResource {
		///
		/// Kind is the type of resource being referenced
		///
		public var kind: String
		///
		/// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
		///
		public var apiGroup: String?
		///
		/// Name is the name of resource being referenced
		///
		public var name: String
		///
		/// Namespace is the namespace of resource being referenced Note that when a namespace is specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
		///
		public var namespace: String?
		///
		/// Default memberwise initializer
		///
		public init(
			kind: String,
			apiGroup: String? = nil,
			name: String,
			namespace: String? = nil
		) {
			self.kind = kind
			self.apiGroup = apiGroup
			self.name = name
			self.namespace = namespace
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.TypedObjectReference {

	private enum CodingKeys: String, CodingKey {

		case kind = "kind"
		case apiGroup = "apiGroup"
		case name = "name"
		case namespace = "namespace"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.kind = try container.decode(String.self, forKey: .kind)
		self.apiGroup = try container.decodeIfPresent(String.self, forKey: .apiGroup)
		self.name = try container.decode(String.self, forKey: .name)
		self.namespace = try container.decodeIfPresent(String.self, forKey: .namespace)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(apiGroup, forKey: .apiGroup)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(namespace, forKey: .namespace)
	}
}
