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

public extension authorization.v1beta1 {

	///
	/// ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
	///
	struct ResourceAttributes: KubernetesResource, Codable {
	
		///
		/// Group is the API Group of the Resource.  "*" means all.
		///
		var group: String?
	
		///
		/// Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
		///
		var name: String?
	
		///
		/// Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
		///
		var namespace: String?
	
		///
		/// Resource is one of the existing resource types.  "*" means all.
		///
		var resource: String?
	
		///
		/// Subresource is one of the existing resource types.  "" means none.
		///
		var subresource: String?
	
		///
		/// Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
		///
		var verb: String?
	
		///
		/// Version is the API Version of the Resource.  "*" means all.
		///
		var version: String?
	
	}
}

