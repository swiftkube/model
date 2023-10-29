//
// Copyright 2020 Swiftkube Project
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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.28.3
/// internal.v1alpha1.StorageVersionCondition
///

import Foundation

// MARK: - `internal`.v1alpha1.StorageVersionCondition

public extension `internal`.v1alpha1 {

	///
	/// Describes the state of the storageVersion at a certain point.
	///
	struct StorageVersionCondition: KubernetesResource {
		///
		/// Last time the condition transitioned from one status to another.
		///
		public var lastTransitionTime: Date?
		///
		/// A human readable message indicating details about the transition.
		///
		public var message: String?
		///
		/// If set, this represents the .metadata.generation that the condition was set based upon.
		///
		public var observedGeneration: Int64?
		///
		/// The reason for the condition's last transition.
		///
		public var reason: String
		///
		/// Status of the condition, one of True, False, Unknown.
		///
		public var status: String
		///
		/// Type of the condition.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			lastTransitionTime: Date? = nil,
			message: String? = nil,
			observedGeneration: Int64? = nil,
			reason: String,
			status: String,
			type: String
		) {
			self.lastTransitionTime = lastTransitionTime
			self.message = message
			self.observedGeneration = observedGeneration
			self.reason = reason
			self.status = status
			self.type = type
		}
	}
}

///
/// Codable conformance
///
public extension `internal`.v1alpha1.StorageVersionCondition {

	private enum CodingKeys: String, CodingKey {

		case lastTransitionTime = "lastTransitionTime"
		case message = "message"
		case observedGeneration = "observedGeneration"
		case reason = "reason"
		case status = "status"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.lastTransitionTime = try container.decodeIfPresent(Date.self, forKey: .lastTransitionTime)
		self.message = try container.decodeIfPresent(String.self, forKey: .message)
		self.observedGeneration = try container.decodeIfPresent(Int64.self, forKey: .observedGeneration)
		self.reason = try container.decode(String.self, forKey: .reason)
		self.status = try container.decode(String.self, forKey: .status)
		self.type = try container.decode(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(lastTransitionTime, forKey: .lastTransitionTime)
		try encodingContainer.encode(message, forKey: .message)
		try encodingContainer.encode(observedGeneration, forKey: .observedGeneration)
		try encodingContainer.encode(reason, forKey: .reason)
		try encodingContainer.encode(status, forKey: .status)
		try encodingContainer.encode(type, forKey: .type)
	}
}
