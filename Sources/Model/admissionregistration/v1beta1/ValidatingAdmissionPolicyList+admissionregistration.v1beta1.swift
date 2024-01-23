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
/// admissionregistration.v1beta1.ValidatingAdmissionPolicyList
///

import Foundation

// MARK: - admissionregistration.v1beta1.ValidatingAdmissionPolicyList

public extension admissionregistration.v1beta1 {

	///
	/// ValidatingAdmissionPolicyList is a list of ValidatingAdmissionPolicy.
	///
	struct ValidatingAdmissionPolicyList: KubernetesResource, KubernetesResourceList {
		///
		/// KubernetesResourceList.Item associated type
		///
		public typealias Item = admissionregistration.v1beta1.ValidatingAdmissionPolicy
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "admissionregistration.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "ValidatingAdmissionPolicyList"
		///
		/// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// List of ValidatingAdmissionPolicy.
		///
		public var items: [admissionregistration.v1beta1.ValidatingAdmissionPolicy]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [admissionregistration.v1beta1.ValidatingAdmissionPolicy]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

///
/// Codable conformance
///
public extension admissionregistration.v1beta1.ValidatingAdmissionPolicyList {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case items = "items"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ListMeta.self, forKey: .metadata)
		self.items = try container.decode([admissionregistration.v1beta1.ValidatingAdmissionPolicy].self, forKey: .items)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(apiVersion, forKey: .apiVersion)
		try encodingContainer.encode(kind, forKey: .kind)
		try encodingContainer.encode(metadata, forKey: .metadata)
		try encodingContainer.encode(items, forKey: .items)
	}
}

// MARK: - admissionregistration.v1beta1.ValidatingAdmissionPolicyList + Sequence

///
/// Sequence iterator for KubernetesResourceList items
///
extension admissionregistration.v1beta1.ValidatingAdmissionPolicyList: Sequence {

	public typealias Element = admissionregistration.v1beta1.ValidatingAdmissionPolicy

	public func makeIterator() -> AnyIterator<admissionregistration.v1beta1.ValidatingAdmissionPolicy> {
		AnyIterator(items.makeIterator())
	}
}