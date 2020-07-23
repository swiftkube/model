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

public extension batch.v2alpha1 {

	///
	/// CronJobStatus represents the current state of a cron job.
	///
	struct CronJobStatus: KubernetesResource {
		///
		/// A list of pointers to currently running jobs.
		///
		public var active: [core.v1.ObjectReference]?
		///
		/// Information when was the last time the job was successfully scheduled.
		///
		public var lastScheduleTime: String?
		///
		/// Default memberwise initializer
		///
		public init(
			active: [core.v1.ObjectReference]?, 
			lastScheduleTime: String?
		) {
			self.active = active
			self.lastScheduleTime = lastScheduleTime
		}
	}
}

