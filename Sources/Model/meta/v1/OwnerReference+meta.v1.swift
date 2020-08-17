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

public extension meta.v1 {

	///
	/// OwnerReference contains enough information to let you identify an owning object. An owning object must be in the same namespace as the dependent, or be cluster-scoped, so there is no namespace field.
	///
	struct OwnerReference: KubernetesResource {
		///
		/// API version of the referent.
		///
		public var apiVersion: String
		///
		/// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public var kind: String
		///
		/// If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
		///
		public var blockOwnerDeletion: Bool?
		///
		/// If true, this reference points to the managing controller.
		///
		public var controller: Bool?
		///
		/// Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names
		///
		public var name: String
		///
		/// UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
		///
		public var uid: String
		///
		/// Default memberwise initializer
		///
		public init(
			apiVersion: String,
			kind: String,
			blockOwnerDeletion: Bool? = nil,
			controller: Bool? = nil,
			name: String,
			uid: String
		) {
			self.apiVersion = apiVersion
			self.kind = kind
			self.blockOwnerDeletion = blockOwnerDeletion
			self.controller = controller
			self.name = name
			self.uid = uid
		}
	}
}

