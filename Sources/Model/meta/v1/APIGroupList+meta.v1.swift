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
/// meta.v1.APIGroupList
///

import Foundation

// MARK: - meta.v1.APIGroupList

public extension meta.v1 {

	///
	/// APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
	///
	struct APIGroupList: KubernetesResource {
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "APIGroupList"
		///
		/// groups is a list of APIGroup.
		///
		public var groups: [meta.v1.APIGroup]
		///
		/// Default memberwise initializer
		///
		public init(
			groups: [meta.v1.APIGroup]
		) {
			self.groups = groups
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.APIGroupList {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case groups = "groups"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.groups = try container.decode([meta.v1.APIGroup].self, forKey: .groups)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(groups, forKey: .groups)
	}
}
