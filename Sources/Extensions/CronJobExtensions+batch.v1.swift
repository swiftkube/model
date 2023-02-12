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

import Foundation

public extension batch.v1.CronJob {
	func generateJob(withName name: String = "manual") throws -> batch.v1.Job {
		guard let jobTemplateSpec = spec?.jobTemplate.spec else { throw SwiftkubeModelError.fieldDoesntExist("Job spec") }
		guard let cronJobName = self.name else { throw SwiftkubeModelError.fieldDoesntExist("Cronjob Name") }
		let jobName = "\(cronJobName)-\(name)-\(GenerateRandomHash(length: 3))"
		guard let metadata = metadata else { throw SwiftkubeModelError.fieldDoesntExist("Job Metadata") }
		var existingMetadata = metadata
		existingMetadata.name = jobName
		var job = batch.v1.Job()
		existingMetadata.resourceVersion = nil
		job.spec = jobTemplateSpec
		job.metadata = existingMetadata
		return job
	}
}
