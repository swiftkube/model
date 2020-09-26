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

public extension extensions.v1beta1 {

	///
	/// DeploymentCondition describes the state of a deployment at a certain point.
	///
	struct DeploymentCondition: KubernetesResource {
		///
		/// Last time the condition transitioned from one status to another.
		///
		public var lastTransitionTime: String?
		///
		/// The last time this condition was updated.
		///
		public var lastUpdateTime: String?
		///
		/// A human readable message indicating details about the transition.
		///
		public var message: String?
		///
		/// The reason for the condition's last transition.
		///
		public var reason: String?
		///
		/// Status of the condition, one of True, False, Unknown.
		///
		public var status: String
		///
		/// Type of deployment condition.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			lastTransitionTime: String? = nil,
			lastUpdateTime: String? = nil,
			message: String? = nil,
			reason: String? = nil,
			status: String,
			type: String
		) {
			self.lastTransitionTime = lastTransitionTime
			self.lastUpdateTime = lastUpdateTime
			self.message = message
			self.reason = reason
			self.status = status
			self.type = type
		}
	}
}

///
/// Codable conformance
///
extension extensions.v1beta1.DeploymentCondition {

	private enum CodingKeys: String, CodingKey {
		case lastTransitionTime = "lastTransitionTime"
		case lastUpdateTime = "lastUpdateTime"
		case message = "message"
		case reason = "reason"
		case status = "status"
		case type = "type"
	}

}

