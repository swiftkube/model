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
/// Kubernetes v1.22.7
/// batch.v1.JobStatus
///

import Foundation

public extension batch.v1 {

	///
	/// JobStatus represents the current state of a Job.
	///
	struct JobStatus: KubernetesResource {
		///
		/// The number of actively running pods.
		///
		public var active: Int32?
		///
		/// CompletedIndexes holds the completed indexes when .spec.completionMode = "Indexed" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as "1,3-5,7".
		///
		public var completedIndexes: String?
		///
		/// Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.
		///
		public var completionTime: Date?
		///
		/// The latest available observations of an object's current state. When a Job fails, one of the conditions will have type "Failed" and status true. When a Job is suspended, one of the conditions will have type "Suspended" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type "Complete" and status true. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
		///
		public var conditions: [batch.v1.JobCondition]?
		///
		/// The number of pods which reached phase Failed.
		///
		public var failed: Int32?
		///
		/// Represents time when the job controller started processing a job. When a Job is created in the suspended state, this field is not set until the first time it is resumed. This field is reset every time a Job is resumed from suspension. It is represented in RFC3339 form and is in UTC.
		///
		public var startTime: Date?
		///
		/// The number of pods which reached phase Succeeded.
		///
		public var succeeded: Int32?
		///
		/// UncountedTerminatedPods holds the UIDs of Pods that have terminated but the job controller hasn't yet accounted for in the status counters.
		///
		/// The job controller creates pods with a finalizer. When a pod terminates (succeeded or failed), the controller does three steps to account for it in the job status: (1) Add the pod UID to the arrays in this field. (2) Remove the pod finalizer. (3) Remove the pod UID from the arrays while increasing the corresponding
		///     counter.
		///
		/// This field is alpha-level. The job controller only makes use of this field when the feature gate PodTrackingWithFinalizers is enabled. Old jobs might not be tracked using this field, in which case the field remains null.
		///
		public var uncountedTerminatedPods: batch.v1.UncountedTerminatedPods?
		///
		/// Default memberwise initializer
		///
		public init(
			active: Int32? = nil,
			completedIndexes: String? = nil,
			completionTime: Date? = nil,
			conditions: [batch.v1.JobCondition]? = nil,
			failed: Int32? = nil,
			startTime: Date? = nil,
			succeeded: Int32? = nil,
			uncountedTerminatedPods: batch.v1.UncountedTerminatedPods? = nil
		) {
			self.active = active
			self.completedIndexes = completedIndexes
			self.completionTime = completionTime
			self.conditions = conditions
			self.failed = failed
			self.startTime = startTime
			self.succeeded = succeeded
			self.uncountedTerminatedPods = uncountedTerminatedPods
		}
	}
}

///
/// Codable conformance
///
public extension batch.v1.JobStatus {

	private enum CodingKeys: String, CodingKey {

		case active = "active"
		case completedIndexes = "completedIndexes"
		case completionTime = "completionTime"
		case conditions = "conditions"
		case failed = "failed"
		case startTime = "startTime"
		case succeeded = "succeeded"
		case uncountedTerminatedPods = "uncountedTerminatedPods"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.active = try container.decodeIfPresent(Int32.self, forKey: .active)
		self.completedIndexes = try container.decodeIfPresent(String.self, forKey: .completedIndexes)
		self.completionTime = try container.decodeIfPresent(Date.self, forKey: .completionTime)
		self.conditions = try container.decodeIfPresent([batch.v1.JobCondition].self, forKey: .conditions)
		self.failed = try container.decodeIfPresent(Int32.self, forKey: .failed)
		self.startTime = try container.decodeIfPresent(Date.self, forKey: .startTime)
		self.succeeded = try container.decodeIfPresent(Int32.self, forKey: .succeeded)
		self.uncountedTerminatedPods = try container.decodeIfPresent(batch.v1.UncountedTerminatedPods.self, forKey: .uncountedTerminatedPods)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(active, forKey: .active)
		try encodingContainer.encode(completedIndexes, forKey: .completedIndexes)
		try encodingContainer.encode(completionTime, forKey: .completionTime)
		try encodingContainer.encode(conditions, forKey: .conditions)
		try encodingContainer.encode(failed, forKey: .failed)
		try encodingContainer.encode(startTime, forKey: .startTime)
		try encodingContainer.encode(succeeded, forKey: .succeeded)
		try encodingContainer.encode(uncountedTerminatedPods, forKey: .uncountedTerminatedPods)
	}
}
