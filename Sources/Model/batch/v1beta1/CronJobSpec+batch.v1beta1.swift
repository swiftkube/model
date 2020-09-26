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

public extension batch.v1beta1 {

	///
	/// CronJobSpec describes how the job execution will look like and when it will actually run.
	///
	struct CronJobSpec: KubernetesResource {
		///
		/// Specifies how to treat concurrent executions of a Job. Valid values are: - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one
		///
		public var concurrencyPolicy: String?
		///
		/// The number of failed finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
		///
		public var failedJobsHistoryLimit: Int32?
		///
		/// Specifies the job that will be created when executing a CronJob.
		///
		public var jobTemplate: batch.v1beta1.JobTemplateSpec
		///
		/// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
		///
		public var schedule: String
		///
		/// Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
		///
		public var startingDeadlineSeconds: Int64?
		///
		/// The number of successful finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 3.
		///
		public var successfulJobsHistoryLimit: Int32?
		///
		/// This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
		///
		public var suspend: Bool?
		///
		/// Default memberwise initializer
		///
		public init(
			concurrencyPolicy: String? = nil,
			failedJobsHistoryLimit: Int32? = nil,
			jobTemplate: batch.v1beta1.JobTemplateSpec,
			schedule: String,
			startingDeadlineSeconds: Int64? = nil,
			successfulJobsHistoryLimit: Int32? = nil,
			suspend: Bool? = nil
		) {
			self.concurrencyPolicy = concurrencyPolicy
			self.failedJobsHistoryLimit = failedJobsHistoryLimit
			self.jobTemplate = jobTemplate
			self.schedule = schedule
			self.startingDeadlineSeconds = startingDeadlineSeconds
			self.successfulJobsHistoryLimit = successfulJobsHistoryLimit
			self.suspend = suspend
		}
	}
}

///
/// Codable conformance
///
extension batch.v1beta1.CronJobSpec {

	private enum CodingKeys: String, CodingKey {
		case concurrencyPolicy = "concurrencyPolicy"
		case failedJobsHistoryLimit = "failedJobsHistoryLimit"
		case jobTemplate = "jobTemplate"
		case schedule = "schedule"
		case startingDeadlineSeconds = "startingDeadlineSeconds"
		case successfulJobsHistoryLimit = "successfulJobsHistoryLimit"
		case suspend = "suspend"
	}

}

