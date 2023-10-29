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
/// batch.v1.JobStatus
///

import Foundation

// MARK: - batch.v1.JobStatus

public extension batch.v1 {

	///
	/// JobStatus represents the current state of a Job.
	///
	struct JobStatus: KubernetesResource {
		///
		/// The number of pending and running pods.
		///
		public var active: Int32?
		///
		/// completedIndexes holds the completed indexes when .spec.completionMode = "Indexed" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as "1,3-5,7".
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
		/// FailedIndexes holds the failed indexes when backoffLimitPerIndex=true. The indexes are represented in the text format analogous as for the `completedIndexes` field, ie. they are kept as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the failed indexes are 1, 3, 4, 5 and 7, they are represented as "1,3-5,7". This field is alpha-level. It can be used when the `JobBackoffLimitPerIndex` feature gate is enabled (disabled by default).
		///
		public var failedIndexes: String?
		///
		/// The number of pods which have a Ready condition.
		///
		/// This field is beta-level. The job controller populates the field when the feature gate JobReadyPods is enabled (enabled by default).
		///
		public var ready: Int32?
		///
		/// Represents time when the job controller started processing a job. When a Job is created in the suspended state, this field is not set until the first time it is resumed. This field is reset every time a Job is resumed from suspension. It is represented in RFC3339 form and is in UTC.
		///
		public var startTime: Date?
		///
		/// The number of pods which reached phase Succeeded.
		///
		public var succeeded: Int32?
		///
		/// The number of pods which are terminating (in phase Pending or Running and have a deletionTimestamp).
		///
		/// This field is alpha-level. The job controller populates the field when the feature gate JobPodReplacementPolicy is enabled (disabled by default).
		///
		public var terminating: Int32?
		///
		/// uncountedTerminatedPods holds the UIDs of Pods that have terminated but the job controller hasn't yet accounted for in the status counters.
		///
		/// The job controller creates pods with a finalizer. When a pod terminates (succeeded or failed), the controller does three steps to account for it in the job status:
		///
		/// 1. Add the pod UID to the arrays in this field. 2. Remove the pod finalizer. 3. Remove the pod UID from the arrays while increasing the corresponding
		///     counter.
		///
		/// Old jobs might not be tracked using this field, in which case the field remains null.
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
			failedIndexes: String? = nil,
			ready: Int32? = nil,
			startTime: Date? = nil,
			succeeded: Int32? = nil,
			terminating: Int32? = nil,
			uncountedTerminatedPods: batch.v1.UncountedTerminatedPods? = nil
		) {
			self.active = active
			self.completedIndexes = completedIndexes
			self.completionTime = completionTime
			self.conditions = conditions
			self.failed = failed
			self.failedIndexes = failedIndexes
			self.ready = ready
			self.startTime = startTime
			self.succeeded = succeeded
			self.terminating = terminating
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
		case failedIndexes = "failedIndexes"
		case ready = "ready"
		case startTime = "startTime"
		case succeeded = "succeeded"
		case terminating = "terminating"
		case uncountedTerminatedPods = "uncountedTerminatedPods"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.active = try container.decodeIfPresent(Int32.self, forKey: .active)
		self.completedIndexes = try container.decodeIfPresent(String.self, forKey: .completedIndexes)
		self.completionTime = try container.decodeIfPresent(Date.self, forKey: .completionTime)
		self.conditions = try container.decodeIfPresent([batch.v1.JobCondition].self, forKey: .conditions)
		self.failed = try container.decodeIfPresent(Int32.self, forKey: .failed)
		self.failedIndexes = try container.decodeIfPresent(String.self, forKey: .failedIndexes)
		self.ready = try container.decodeIfPresent(Int32.self, forKey: .ready)
		self.startTime = try container.decodeIfPresent(Date.self, forKey: .startTime)
		self.succeeded = try container.decodeIfPresent(Int32.self, forKey: .succeeded)
		self.terminating = try container.decodeIfPresent(Int32.self, forKey: .terminating)
		self.uncountedTerminatedPods = try container.decodeIfPresent(batch.v1.UncountedTerminatedPods.self, forKey: .uncountedTerminatedPods)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(active, forKey: .active)
		try encodingContainer.encode(completedIndexes, forKey: .completedIndexes)
		try encodingContainer.encode(completionTime, forKey: .completionTime)
		try encodingContainer.encode(conditions, forKey: .conditions)
		try encodingContainer.encode(failed, forKey: .failed)
		try encodingContainer.encode(failedIndexes, forKey: .failedIndexes)
		try encodingContainer.encode(ready, forKey: .ready)
		try encodingContainer.encode(startTime, forKey: .startTime)
		try encodingContainer.encode(succeeded, forKey: .succeeded)
		try encodingContainer.encode(terminating, forKey: .terminating)
		try encodingContainer.encode(uncountedTerminatedPods, forKey: .uncountedTerminatedPods)
	}
}
