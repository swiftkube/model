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
/// Kubernetes v1.20.9
/// rbac.v1.PolicyRule
///

import Foundation

public extension rbac.v1 {

	///
	/// PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
	///
	struct PolicyRule: KubernetesResource {
		///
		/// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.
		///
		public var apiGroups: [String]?
		///
		/// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as "/api"),  but not both.
		///
		public var nonResourceURLs: [String]?
		///
		/// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
		///
		public var resourceNames: [String]?
		///
		/// Resources is a list of resources this rule applies to.  ResourceAll represents all resources.
		///
		public var resources: [String]?
		///
		/// Verbs is a list of Verbs that apply to ALL the ResourceKinds and AttributeRestrictions contained in this rule.  VerbAll represents all kinds.
		///
		public var verbs: [String]
		///
		/// Default memberwise initializer
		///
		public init(
			apiGroups: [String]? = nil,
			nonResourceURLs: [String]? = nil,
			resourceNames: [String]? = nil,
			resources: [String]? = nil,
			verbs: [String]
		) {
			self.apiGroups = apiGroups
			self.nonResourceURLs = nonResourceURLs
			self.resourceNames = resourceNames
			self.resources = resources
			self.verbs = verbs
		}
	}
}

///
/// Codable conformance
///
public extension rbac.v1.PolicyRule {

	private enum CodingKeys: String, CodingKey {

		case apiGroups = "apiGroups"
		case nonResourceURLs = "nonResourceURLs"
		case resourceNames = "resourceNames"
		case resources = "resources"
		case verbs = "verbs"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.apiGroups = try container.decodeIfPresent([String].self, forKey: .apiGroups)
		self.nonResourceURLs = try container.decodeIfPresent([String].self, forKey: .nonResourceURLs)
		self.resourceNames = try container.decodeIfPresent([String].self, forKey: .resourceNames)
		self.resources = try container.decodeIfPresent([String].self, forKey: .resources)
		self.verbs = try container.decode([String].self, forKey: .verbs)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiGroups, forKey: .apiGroups)
		try encodingContainer.encode(nonResourceURLs, forKey: .nonResourceURLs)
		try encodingContainer.encode(resourceNames, forKey: .resourceNames)
		try encodingContainer.encode(resources, forKey: .resources)
		try encodingContainer.encode(verbs, forKey: .verbs)
	}
}
