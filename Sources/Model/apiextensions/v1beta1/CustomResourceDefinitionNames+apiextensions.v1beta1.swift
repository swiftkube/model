//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
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

import Foundation

public extension apiextensions.v1beta1 {

	///
	/// CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
	///
	struct CustomResourceDefinitionNames: KubernetesResource {
		///
		/// kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
		///
		public var kind: String
		///
		/// categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
		///
		public var categories: [String]?
		///
		/// listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
		///
		public var listKind: String?
		///
		/// plural is the plural name of the resource to serve. The custom resources are served under `/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.
		///
		public var plural: String
		///
		/// shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
		///
		public var shortNames: [String]?
		///
		/// singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
		///
		public var singular: String?
		///
		/// Default memberwise initializer
		///
		public init(
			kind: String,
			categories: [String]? = nil,
			listKind: String? = nil,
			plural: String,
			shortNames: [String]? = nil,
			singular: String? = nil
		) {
			self.kind = kind
			self.categories = categories
			self.listKind = listKind
			self.plural = plural
			self.shortNames = shortNames
			self.singular = singular
		}
	}
}

///
/// Codable conformance
///
extension apiextensions.v1beta1.CustomResourceDefinitionNames {

	private enum CodingKeys: String, CodingKey {
		case kind = "kind"
		case categories = "categories"
		case listKind = "listKind"
		case plural = "plural"
		case shortNames = "shortNames"
		case singular = "singular"
	}

}

