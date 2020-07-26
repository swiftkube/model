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

public extension certificates.v1beta1 {

	///
	/// No description
	///
	struct CertificateSigningRequestList: KubernetesResource, KubernetesResourceList {

		public typealias Resource = certificates.v1beta1.CertificateSigningRequest
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "certificates.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "CertificateSigningRequestList"
		///
		/// No description
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// No description
		///
		public var items: [certificates.v1beta1.CertificateSigningRequest]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [certificates.v1beta1.CertificateSigningRequest]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

extension certificates.v1beta1.CertificateSigningRequestList: Sequence {

	public typealias Element = certificates.v1beta1.CertificateSigningRequest

	public func makeIterator() -> AnyIterator<certificates.v1beta1.CertificateSigningRequest> {
		return AnyIterator(self.items.makeIterator())
	}
}

