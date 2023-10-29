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
/// core.v1.TypedLocalObjectReference
///

import Foundation

// MARK: - core.v1.TypedLocalObjectReference

public extension core.v1 {

	///
	/// TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
	///
	struct TypedLocalObjectReference: KubernetesResource {
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
		/// Default memberwise initializer
		///
		public init(
			kind: String,
			apiGroup: String? = nil,
			name: String
		) {
			self.kind = kind
			self.apiGroup = apiGroup
			self.name = name
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.TypedLocalObjectReference {

	private enum CodingKeys: String, CodingKey {

		case kind = "kind"
		case apiGroup = "apiGroup"
		case name = "name"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.kind = try container.decode(String.self, forKey: .kind)
		self.apiGroup = try container.decodeIfPresent(String.self, forKey: .apiGroup)
		self.name = try container.decode(String.self, forKey: .name)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(apiGroup, forKey: .apiGroup)
		try encodingContainer.encode(name, forKey: .name)
	}
}
