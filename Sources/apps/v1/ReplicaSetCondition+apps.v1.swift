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

public extension apps.v1 {

	///
	/// ReplicaSetCondition describes the state of a replica set at a certain point.
	///
	struct ReplicaSetCondition: KubernetesResource {
		///
		/// The last time the condition transitioned from one status to another.
		///
		var lastTransitionTime: String?

		///
		/// A human readable message indicating details about the transition.
		///
		var message: String?

		///
		/// The reason for the condition's last transition.
		///
		var reason: String?

		///
		/// Status of the condition, one of True, False, Unknown.
		///
		var status: String

		///
		/// Type of replica set condition.
		///
		var type: String

	}
}

