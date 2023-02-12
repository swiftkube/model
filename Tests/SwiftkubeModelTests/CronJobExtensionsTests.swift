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

@testable import SwiftkubeModel
import XCTest

private func dummyCronJob() -> batch.v1.CronJob {
	let jobTemplate = batch.v1.JobTemplateSpec(metadata: meta.v1.ObjectMeta(), spec: batch.v1.JobSpec(template: core.v1.PodTemplateSpec()))

	return batch.v1.CronJob(metadata: meta.v1.ObjectMeta(clusterName: "directly-apply-main-cluster", creationTimestamp: Date(), deletionGracePeriodSeconds: 100, managedFields: [meta.v1.ManagedFieldsEntry](), name: "great-cronjob", namespace: "default", ownerReferences: [meta.v1.OwnerReference](), resourceVersion: "appv1", uid: "F3493650-A9DF-410F-B1A4-E8F5386E5B53"), spec: batch.v1.CronJobSpec(failedJobsHistoryLimit: 5, jobTemplate: jobTemplate, schedule: "15 10 * * *", startingDeadlineSeconds: 100, successfulJobsHistoryLimit: 2, suspend: false), status: batch.v1.CronJobStatus(active: [core.v1.ObjectReference](), lastScheduleTime: Date()))
}

// MARK: - CronJobExtensionsTests

final class CronJobExtensionsTests: XCTestCase {

	func testGetJobFromCronjob() throws {
		let exampleCronJob = dummyCronJob()
		let job = try exampleCronJob.generateJob()
		XCTAssertTrue((job.name?.starts(with: "great-cronjob-manual-")) != nil)
	}
}
