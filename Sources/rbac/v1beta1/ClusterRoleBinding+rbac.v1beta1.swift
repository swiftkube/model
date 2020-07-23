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
	/// ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
	///
	struct ClusterRoleBinding: KubernetesResource {
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "rbac.authorization.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "ClusterRoleBinding"
		///
		/// Standard object's metadata.
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
		///
		public var roleRef: rbac.v1beta1.RoleRef
		///
		/// Subjects holds references to the objects the role applies to.
		///
		public var subjects: [rbac.v1beta1.Subject]?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta?, 
			roleRef: rbac.v1beta1.RoleRef, 
			subjects: [rbac.v1beta1.Subject]?
		) {
			self.metadata = metadata
			self.roleRef = roleRef
			self.subjects = subjects
		}
	}
}

