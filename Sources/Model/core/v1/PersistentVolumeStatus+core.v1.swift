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
/// Kubernetes v1.32.0
/// core.v1.PersistentVolumeStatus
///

import Foundation

// MARK: - core.v1.PersistentVolumeStatus

public extension core.v1 {

	///
	/// PersistentVolumeStatus is the current status of a persistent volume.
	///
	struct PersistentVolumeStatus: KubernetesResource {
		///
		/// lastPhaseTransitionTime is the time the phase transitioned from one to another and automatically resets to current time everytime a volume phase transitions.
		///
		public var lastPhaseTransitionTime: Date?
		///
		/// message is a human-readable message indicating details about why the volume is in this state.
		///
		public var message: String?
		///
		/// phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase
		///
		public var phase: String?
		///
		/// reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
		///
		public var reason: String?
		///
		/// Default memberwise initializer
		///
		public init(
			lastPhaseTransitionTime: Date? = nil,
			message: String? = nil,
			phase: String? = nil,
			reason: String? = nil
		) {
			self.lastPhaseTransitionTime = lastPhaseTransitionTime
			self.message = message
			self.phase = phase
			self.reason = reason
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PersistentVolumeStatus {

	private enum CodingKeys: String, CodingKey {

		case lastPhaseTransitionTime = "lastPhaseTransitionTime"
		case message = "message"
		case phase = "phase"
		case reason = "reason"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.lastPhaseTransitionTime = try container.decodeIfPresent(Date.self, forKey: .lastPhaseTransitionTime)
		self.message = try container.decodeIfPresent(String.self, forKey: .message)
		self.phase = try container.decodeIfPresent(String.self, forKey: .phase)
		self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(lastPhaseTransitionTime, forKey: .lastPhaseTransitionTime)
		try encodingContainer.encode(message, forKey: .message)
		try encodingContainer.encode(phase, forKey: .phase)
		try encodingContainer.encode(reason, forKey: .reason)
	}
}
