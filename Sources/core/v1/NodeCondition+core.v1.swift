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
	/// NodeCondition contains condition information for a node.
	///
	struct NodeCondition: KubernetesResource, Codable {
	
		///
		/// Last time we got an update on a given condition.
		///
		var lastHeartbeatTime: String?
	
		///
		/// Last time the condition transit from one status to another.
		///
		var lastTransitionTime: String?
	
		///
		/// Human readable message indicating details about last transition.
		///
		var message: String?
	
		///
		/// (brief) reason for the condition's last transition.
		///
		var reason: String?
	
		///
		/// Status of the condition, one of True, False, Unknown.
		///
		var status: String
	
		///
		/// Type of node condition.
		///
		var type: String
	
	}
}

