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

public extension apiextensions.v1beta1 {

	///
	/// CustomResourceDefinitionCondition contains details for the current condition of this pod.
	///
	struct CustomResourceDefinitionCondition: KubernetesResource {
		///
		/// lastTransitionTime last time the condition transitioned from one status to another.
		///
		public var lastTransitionTime: String?
		///
		/// message is a human-readable message indicating details about last transition.
		///
		public var message: String?
		///
		/// reason is a unique, one-word, CamelCase reason for the condition's last transition.
		///
		public var reason: String?
		///
		/// status is the status of the condition. Can be True, False, Unknown.
		///
		public var status: String
		///
		/// type is the type of the condition. Types include Established, NamesAccepted and Terminating.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			lastTransitionTime: String? = nil,
			message: String? = nil,
			reason: String? = nil,
			status: String,
			type: String
		) {
			self.lastTransitionTime = lastTransitionTime
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
extension apiextensions.v1beta1.CustomResourceDefinitionCondition {

	private enum CodingKeys: String, CodingKey {
		case lastTransitionTime = "lastTransitionTime"
		case message = "message"
		case reason = "reason"
		case status = "status"
		case type = "type"
	}

}

