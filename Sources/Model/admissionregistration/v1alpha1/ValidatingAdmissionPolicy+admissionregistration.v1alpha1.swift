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
/// admissionregistration.v1alpha1.ValidatingAdmissionPolicy
///

import Foundation

// MARK: - admissionregistration.v1alpha1.ValidatingAdmissionPolicy

public extension admissionregistration.v1alpha1 {

	///
	/// ValidatingAdmissionPolicy describes the definition of an admission validation policy that accepts or rejects an object without changing it.
	///
	struct ValidatingAdmissionPolicy: KubernetesAPIResource, MetadataHavingResource, ClusterScopedResource,
		ReadableResource, ListableResource, CreatableResource, ReplaceableResource, DeletableResource, CollectionDeletableResource,
		StatusHavingResource
	{
		///
		/// ListableResource.List associated type
		///
		public typealias List = admissionregistration.v1alpha1.ValidatingAdmissionPolicyList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "admissionregistration.k8s.io/v1alpha1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "ValidatingAdmissionPolicy"
		///
		/// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// Specification of the desired behavior of the ValidatingAdmissionPolicy.
		///
		public var spec: admissionregistration.v1alpha1.ValidatingAdmissionPolicySpec?
		///
		/// The status of the ValidatingAdmissionPolicy, including warnings that are useful to determine if the policy behaves in the expected way. Populated by the system. Read-only.
		///
		public var status: admissionregistration.v1alpha1.ValidatingAdmissionPolicyStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			spec: admissionregistration.v1alpha1.ValidatingAdmissionPolicySpec? = nil,
			status: admissionregistration.v1alpha1.ValidatingAdmissionPolicyStatus? = nil
		) {
			self.metadata = metadata
			self.spec = spec
			self.status = status
		}
	}
}

///
/// Codable conformance
///
public extension admissionregistration.v1alpha1.ValidatingAdmissionPolicy {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case spec = "spec"
		case status = "status"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.spec = try container.decodeIfPresent(admissionregistration.v1alpha1.ValidatingAdmissionPolicySpec.self, forKey: .spec)
		self.status = try container.decodeIfPresent(admissionregistration.v1alpha1.ValidatingAdmissionPolicyStatus.self, forKey: .status)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(spec, forKey: .spec)
		try encodingContainer.encode(status, forKey: .status)
	}
}
