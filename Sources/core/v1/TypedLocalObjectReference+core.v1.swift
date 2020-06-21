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

public extension core.v1 {

	///
	/// TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
	///
	struct TypedLocalObjectReference: KubernetesResource, Codable {
	
		///
		/// Kind is the type of resource being referenced
		///
		var kind: String
	
		///
		/// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
		///
		var apiGroup: String?
	
		///
		/// Name is the name of resource being referenced
		///
		var name: String
	
	}
}

