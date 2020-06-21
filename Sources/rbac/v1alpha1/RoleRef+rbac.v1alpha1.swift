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

public extension rbac.v1alpha1 {

	///
	/// RoleRef contains information that points to the role being used
	///
	struct RoleRef: KubernetesResource, Codable {
	
		///
		/// Kind is the type of resource being referenced
		///
		var kind: String
	
		///
		/// APIGroup is the group for the resource being referenced
		///
		var apiGroup: String
	
		///
		/// Name is the name of resource being referenced
		///
		var name: String
	
	}
}

