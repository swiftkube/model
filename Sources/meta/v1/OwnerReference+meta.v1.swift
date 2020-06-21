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
	struct OwnerReference: KubernetesResource, Codable {
	
		///
		/// API version of the referent.
		///
		var apiVersion: String
	
		///
		/// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		var kind: String
	
		///
		/// If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
		///
		var blockOwnerDeletion: Bool?
	
		///
		/// If true, this reference points to the managing controller.
		///
		var controller: Bool?
	
		///
		/// Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names
		///
		var name: String
	
		///
		/// UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
		///
		var uid: String
	
	}
}

