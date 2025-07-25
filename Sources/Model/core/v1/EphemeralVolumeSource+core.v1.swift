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
/// Kubernetes v1.33.3
/// core.v1.EphemeralVolumeSource
///

import Foundation

// MARK: - core.v1.EphemeralVolumeSource

public extension core.v1 {

	///
	/// Represents an ephemeral volume that is handled by a normal storage driver.
	///
	struct EphemeralVolumeSource: KubernetesResource {
		///
		/// Will be used to create a stand-alone PVC to provision the volume. The pod in which this EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>` where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation will reject the pod if the concatenated name is not valid for a PVC (for example, too long).
		///
		/// An existing PVC with that name that is not owned by the pod will *not* be used for the pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod, the PVC has to updated with an owner reference to the pod once the pod exists. Normally this should not be necessary, but it may be useful when manually reconstructing a broken cluster.
		///
		/// This field is read-only and no changes will be made by Kubernetes to the PVC after it has been created.
		///
		/// Required, must not be nil.
		///
		public var volumeClaimTemplate: core.v1.PersistentVolumeClaimTemplate?
		///
		/// Default memberwise initializer
		///
		public init(
			volumeClaimTemplate: core.v1.PersistentVolumeClaimTemplate? = nil
		) {
			self.volumeClaimTemplate = volumeClaimTemplate
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.EphemeralVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case volumeClaimTemplate = "volumeClaimTemplate"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.volumeClaimTemplate = try container.decodeIfPresent(core.v1.PersistentVolumeClaimTemplate.self, forKey: .volumeClaimTemplate)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(volumeClaimTemplate, forKey: .volumeClaimTemplate)
	}
}
