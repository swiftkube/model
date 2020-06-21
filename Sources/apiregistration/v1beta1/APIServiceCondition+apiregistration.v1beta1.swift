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

public extension apiregistration.v1beta1 {

	///
	/// APIServiceCondition describes the state of an APIService at a particular point
	///
	struct APIServiceCondition: KubernetesResource, Codable {
	
		///
		/// Last time the condition transitioned from one status to another.
		///
		var lastTransitionTime: String?
	
		///
		/// Human-readable message indicating details about last transition.
		///
		var message: String?
	
		///
		/// Unique, one-word, CamelCase reason for the condition's last transition.
		///
		var reason: String?
	
		///
		/// Status is the status of the condition. Can be True, False, Unknown.
		///
		var status: String
	
		///
		/// Type is the type of the condition.
		///
		var type: String
	
	}
}

