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
/// meta.v1.APIResource
///

import Foundation

// MARK: - meta.v1.APIResource

public extension meta.v1 {

	///
	/// APIResource specifies the name of a resource and whether it is namespaced.
	///
	struct APIResource: KubernetesResource {
		///
		/// kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
		///
		public var kind: String
		///
		/// categories is a list of the grouped resources this resource belongs to (e.g. 'all')
		///
		public var categories: [String]?
		///
		/// group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
		///
		public var group: String?
		///
		/// name is the plural name of the resource.
		///
		public var name: String
		///
		/// namespaced indicates if a resource is namespaced or not.
		///
		public var namespaced: Bool
		///
		/// shortNames is a list of suggested short names of the resource.
		///
		public var shortNames: [String]?
		///
		/// singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
		///
		public var singularName: String
		///
		/// The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
		///
		public var storageVersionHash: String?
		///
		/// verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
		///
		public var verbs: [String]
		///
		/// version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
		///
		public var version: String?
		///
		/// Default memberwise initializer
		///
		public init(
			kind: String,
			categories: [String]? = nil,
			group: String? = nil,
			name: String,
			namespaced: Bool,
			shortNames: [String]? = nil,
			singularName: String,
			storageVersionHash: String? = nil,
			verbs: [String],
			version: String? = nil
		) {
			self.kind = kind
			self.categories = categories
			self.group = group
			self.name = name
			self.namespaced = namespaced
			self.shortNames = shortNames
			self.singularName = singularName
			self.storageVersionHash = storageVersionHash
			self.verbs = verbs
			self.version = version
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.APIResource {

	private enum CodingKeys: String, CodingKey {

		case kind = "kind"
		case categories = "categories"
		case group = "group"
		case name = "name"
		case namespaced = "namespaced"
		case shortNames = "shortNames"
		case singularName = "singularName"
		case storageVersionHash = "storageVersionHash"
		case verbs = "verbs"
		case version = "version"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.kind = try container.decode(String.self, forKey: .kind)
		self.categories = try container.decodeIfPresent([String].self, forKey: .categories)
		self.group = try container.decodeIfPresent(String.self, forKey: .group)
		self.name = try container.decode(String.self, forKey: .name)
		self.namespaced = try container.decode(Bool.self, forKey: .namespaced)
		self.shortNames = try container.decodeIfPresent([String].self, forKey: .shortNames)
		self.singularName = try container.decode(String.self, forKey: .singularName)
		self.storageVersionHash = try container.decodeIfPresent(String.self, forKey: .storageVersionHash)
		self.verbs = try container.decode([String].self, forKey: .verbs)
		self.version = try container.decodeIfPresent(String.self, forKey: .version)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(categories, forKey: .categories)
		try encodingContainer.encode(group, forKey: .group)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(namespaced, forKey: .namespaced)
		try encodingContainer.encode(shortNames, forKey: .shortNames)
		try encodingContainer.encode(singularName, forKey: .singularName)
		try encodingContainer.encode(storageVersionHash, forKey: .storageVersionHash)
		try encodingContainer.encode(verbs, forKey: .verbs)
		try encodingContainer.encode(version, forKey: .version)
	}
}
