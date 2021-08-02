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
/// Kubernetes v1.20.9
/// core.v1.PersistentVolumeClaimVolumeSource
///

import Foundation

public extension core.v1 {

	///
	/// PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
	///
	struct PersistentVolumeClaimVolumeSource: KubernetesResource {
		///
		/// ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
		///
		public var claimName: String
		///
		/// Will force the ReadOnly setting in VolumeMounts. Default false.
		///
		public var readOnly: Bool?
		///
		/// Default memberwise initializer
		///
		public init(
			claimName: String,
			readOnly: Bool? = nil
		) {
			self.claimName = claimName
			self.readOnly = readOnly
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PersistentVolumeClaimVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case claimName = "claimName"
		case readOnly = "readOnly"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.claimName = try container.decode(String.self, forKey: .claimName)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(claimName, forKey: .claimName)
		try encodingContainer.encode(readOnly, forKey: .readOnly)
	}
}
