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

public extension apiextensions.v1 {

	///
	/// CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
	///
	struct CustomResourceDefinitionStatus: KubernetesResource, Codable {
	
		///
		/// acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
		///
		var acceptedNames: apiextensions.v1.CustomResourceDefinitionNames
	
		///
		/// conditions indicate state for particular aspects of a CustomResourceDefinition
		///
		var conditions: [apiextensions.v1.CustomResourceDefinitionCondition]?
	
		///
		/// storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
		///
		var storedVersions: [String]
	
	}
}

