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
/// flowcontrol.v1beta3.ResourcePolicyRule
///

import Foundation

// MARK: - flowcontrol.v1beta3.ResourcePolicyRule

public extension flowcontrol.v1beta3 {

	///
	/// ResourcePolicyRule is a predicate that matches some resource requests, testing the request's verb and the target resource. A ResourcePolicyRule matches a resource request if and only if: (a) at least one member of verbs matches the request, (b) at least one member of apiGroups matches the request, (c) at least one member of resources matches the request, and (d) either (d1) the request does not specify a namespace (i.e., `Namespace==""`) and clusterScope is true or (d2) the request specifies a namespace and least one member of namespaces matches the request's namespace.
	///
	struct ResourcePolicyRule: KubernetesResource {
		///
		/// `apiGroups` is a list of matching API groups and may not be empty. "*" matches all API groups and, if present, must be the only entry. Required.
		///
		public var apiGroups: [String]
		///
		/// `clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.
		///
		public var clusterScope: Bool?
		///
		/// `namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains "*".  Note that "*" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.
		///
		public var namespaces: [String]?
		///
		/// `resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ "services", "nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.
		///
		public var resources: [String]
		///
		/// `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs and, if present, must be the only entry. Required.
		///
		public var verbs: [String]
		///
		/// Default memberwise initializer
		///
		public init(
			apiGroups: [String],
			clusterScope: Bool? = nil,
			namespaces: [String]? = nil,
			resources: [String],
			verbs: [String]
		) {
			self.apiGroups = apiGroups
			self.clusterScope = clusterScope
			self.namespaces = namespaces
			self.resources = resources
			self.verbs = verbs
		}
	}
}

///
/// Codable conformance
///
public extension flowcontrol.v1beta3.ResourcePolicyRule {

	private enum CodingKeys: String, CodingKey {

		case apiGroups = "apiGroups"
		case clusterScope = "clusterScope"
		case namespaces = "namespaces"
		case resources = "resources"
		case verbs = "verbs"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.apiGroups = try container.decode([String].self, forKey: .apiGroups)
		self.clusterScope = try container.decodeIfPresent(Bool.self, forKey: .clusterScope)
		self.namespaces = try container.decodeIfPresent([String].self, forKey: .namespaces)
		self.resources = try container.decode([String].self, forKey: .resources)
		self.verbs = try container.decode([String].self, forKey: .verbs)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiGroups, forKey: .apiGroups)
		try encodingContainer.encode(clusterScope, forKey: .clusterScope)
		try encodingContainer.encode(namespaces, forKey: .namespaces)
		try encodingContainer.encode(resources, forKey: .resources)
		try encodingContainer.encode(verbs, forKey: .verbs)
	}
}
