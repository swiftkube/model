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
	/// ClusterRoleList is a collection of ClusterRoles
	///
	struct ClusterRoleList: KubernetesResource, KubernetesResourceList {

		public typealias Resource = rbac.v1beta1.ClusterRole
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "rbac.authorization.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "ClusterRoleList"
		///
		/// Standard object's metadata.
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// Items is a list of ClusterRoles
		///
		public var items: [rbac.v1beta1.ClusterRole]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta?, 
			items: [rbac.v1beta1.ClusterRole]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

extension rbac.v1beta1.ClusterRoleList: Sequence {

	public typealias Element = rbac.v1beta1.ClusterRole

	public func makeIterator() -> AnyIterator<rbac.v1beta1.ClusterRole> {
		return AnyIterator(self.items.makeIterator())
	}
}

