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
/// Kubernetes v1.26.4
/// rbac.v1.ClusterRole
///

import Foundation

// MARK: - rbac.v1.ClusterRole

public extension rbac.v1 {

	///
	/// ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
	///
	struct ClusterRole: KubernetesAPIResource, MetadataHavingResource, ClusterScopedResource,
		ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource
	{
		///
		/// ListableResource.List associated type
		///
		public typealias List = rbac.v1.ClusterRoleList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "rbac.authorization.k8s.io/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "ClusterRole"
		///
		/// Standard object's metadata.
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
		///
		public var aggregationRule: rbac.v1.AggregationRule?
		///
		/// Rules holds all the PolicyRules for this ClusterRole
		///
		public var rules: [rbac.v1.PolicyRule]?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			aggregationRule: rbac.v1.AggregationRule? = nil,
			rules: [rbac.v1.PolicyRule]? = nil
		) {
			self.metadata = metadata
			self.aggregationRule = aggregationRule
			self.rules = rules
		}
	}
}

///
/// Codable conformance
///
public extension rbac.v1.ClusterRole {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case aggregationRule = "aggregationRule"
		case rules = "rules"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.aggregationRule = try container.decodeIfPresent(rbac.v1.AggregationRule.self, forKey: .aggregationRule)
		self.rules = try container.decodeIfPresent([rbac.v1.PolicyRule].self, forKey: .rules)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(aggregationRule, forKey: .aggregationRule)
		try encodingContainer.encode(rules, forKey: .rules)
	}
}
