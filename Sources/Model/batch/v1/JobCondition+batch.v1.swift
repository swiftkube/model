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

public extension batch.v1 {

	///
	/// JobCondition describes current state of a job.
	///
	struct JobCondition: KubernetesResource {
		///
		/// Last time the condition was checked.
		///
		public var lastProbeTime: String?
		///
		/// Last time the condition transit from one status to another.
		///
		public var lastTransitionTime: String?
		///
		/// Human readable message indicating details about last transition.
		///
		public var message: String?
		///
		/// (brief) reason for the condition's last transition.
		///
		public var reason: String?
		///
		/// Status of the condition, one of True, False, Unknown.
		///
		public var status: String
		///
		/// Type of job condition, Complete or Failed.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			lastProbeTime: String? = nil,
			lastTransitionTime: String? = nil,
			message: String? = nil,
			reason: String? = nil,
			status: String,
			type: String
		) {
			self.lastProbeTime = lastProbeTime
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
extension batch.v1.JobCondition {

	private enum CodingKeys: String, CodingKey {
		case lastProbeTime = "lastProbeTime"
		case lastTransitionTime = "lastTransitionTime"
		case message = "message"
		case reason = "reason"
		case status = "status"
		case type = "type"
	}

}

