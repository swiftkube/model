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

public extension rbac.v1beta1 {

	///
	/// RoleBindingList is a collection of RoleBindings Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 RoleBindingList, and will no longer be served in v1.20.
	///
	struct RoleBindingList: KubernetesResource, KubernetesResourceList {

		public typealias Resource = rbac.v1beta1.RoleBinding
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "rbac.authorization.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "RoleBindingList"
		///
		/// Standard object's metadata.
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// Items is a list of RoleBindings
		///
		public var items: [rbac.v1beta1.RoleBinding]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [rbac.v1beta1.RoleBinding]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

///
/// Codable conformance
///
extension rbac.v1beta1.RoleBindingList {

	private enum CodingKeys: String, CodingKey {
		case metadata = "metadata"
		case items = "items"
	}

}

///
/// Sequence iterator for KubernetesResourceList items
///
extension rbac.v1beta1.RoleBindingList: Sequence {

	public typealias Element = rbac.v1beta1.RoleBinding

	public func makeIterator() -> AnyIterator<rbac.v1beta1.RoleBinding> {
		return AnyIterator(self.items.makeIterator())
	}
}

