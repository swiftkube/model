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
/// Kubernetes v1.18.13
/// authorization.v1.LocalSubjectAccessReview
///

import Foundation

public extension authorization.v1 {

	///
	/// LocalSubjectAccessReview checks whether or not a user or group can perform an action in a given namespace. Having a namespace scoped resource makes it much easier to grant namespace scoped policy that includes permissions checking.
	///
	struct LocalSubjectAccessReview: KubernetesAPIResource, MetadataHavingResource, NamespacedResource,
		CreatableResource
	{
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "authorization.k8s.io/v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "LocalSubjectAccessReview"
		///
		/// No description
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// Spec holds information about the request being evaluated.  spec.namespace must be equal to the namespace you made the request against.  If empty, it is defaulted.
		///
		public var spec: authorization.v1.SubjectAccessReviewSpec
		///
		/// Status is filled in by the server and indicates whether the request is allowed or not
		///
		public var status: authorization.v1.SubjectAccessReviewStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			spec: authorization.v1.SubjectAccessReviewSpec,
			status: authorization.v1.SubjectAccessReviewStatus? = nil
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
public extension authorization.v1.LocalSubjectAccessReview {

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
		self.spec = try container.decode(authorization.v1.SubjectAccessReviewSpec.self, forKey: .spec)
		self.status = try container.decodeIfPresent(authorization.v1.SubjectAccessReviewStatus.self, forKey: .status)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(apiVersion, forKey: .apiVersion)
		try container.encode(kind, forKey: .kind)
		try container.encode(metadata, forKey: .metadata)
		try container.encode(spec, forKey: .spec)
		try container.encode(status, forKey: .status)
	}
}
